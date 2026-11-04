.class final Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;
.super Lcom/android/framework/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayDecoder"
.end annotation


# instance fields
.field private final blacklist buffer:[B

.field private blacklist bufferSizeAfterLimit:I

.field private blacklist currentLimit:I

.field private blacklist enableAliasing:Z

.field private final blacklist immutable:Z

.field private blacklist lastTag:I

.field private blacklist limit:I

.field private blacklist pos:I

.field private blacklist startPos:I


# direct methods
.method private constructor blacklist <init>([BIIZ)V
    .registers 6

    .line 616
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;-><init>(Lcom/android/framework/protobuf/CodedInputStream$1;)V

    .line 614
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 617
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 618
    add-int/2addr p3, p2

    iput p3, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 619
    iput p2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 620
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    .line 621
    iput-boolean p4, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    .line 622
    return-void
.end method

.method synthetic constructor blacklist <init>([BIIZLcom/android/framework/protobuf/CodedInputStream$1;)V
    .registers 6

    .line 603
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;-><init>([BIIZ)V

    return-void
.end method

.method private blacklist recomputeBufferSizeAfterLimit()V
    .registers 3

    .line 1185
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 1186
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int/2addr v0, v1

    .line 1187
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    if-le v0, v1, :cond_1d

    .line 1189
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    .line 1190
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    goto :goto_20

    .line 1192
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    .line 1194
    :goto_20
    return-void
.end method

.method private blacklist skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 1008
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarintFastPath()V

    goto :goto_10

    .line 1010
    :cond_d
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarintSlowPath()V

    .line 1012
    :goto_10
    return-void
.end method

.method private blacklist skipRawVarintFastPath()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 1016
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    .line 1017
    return-void

    .line 1015
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1020
    :cond_15
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

    .line 1024
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1025
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    .line 1026
    return-void

    .line 1024
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1029
    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public blacklist checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 642
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    .line 645
    return-void

    .line 643
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist enableAliasing(Z)V
    .registers 2

    .line 1156
    iput-boolean p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    .line 1157
    return-void
.end method

.method public blacklist getBytesUntilLimit()I
    .registers 3

    .line 1204
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 1205
    const/4 v0, -0x1

    return v0

    .line 1208
    :cond_9
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getLastTag()I
    .registers 2

    .line 649
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0
.end method

.method public blacklist getTotalBytesRead()I
    .registers 3

    .line 1218
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist isAtEnd()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1213
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist popLimit(I)V
    .registers 2

    .line 1198
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1199
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1200
    return-void
.end method

.method public blacklist pushLimit(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1166
    if-ltz p1, :cond_1d

    .line 1169
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 1170
    if-ltz p1, :cond_18

    .line 1173
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1174
    if-gt p1, v0, :cond_13

    .line 1177
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1179
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1181
    return v0

    .line 1175
    :cond_13
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1171
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1167
    :cond_1d
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

    .line 769
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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

    .line 900
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 901
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 906
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 907
    if-lez v0, :cond_37

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_37

    .line 914
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    if-nez v1, :cond_22

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    if-eqz v1, :cond_22

    .line 915
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_31

    .line 916
    :cond_22
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 917
    :goto_31
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 919
    return-object v1

    .line 922
    :cond_37
    if-nez v0, :cond_3c

    .line 923
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 925
    :cond_3c
    if-gez v0, :cond_43

    .line 926
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 928
    :cond_43
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 880
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 881
    if-lez v0, :cond_2c

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2c

    .line 885
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    if-eqz v1, :cond_1e

    .line 886
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->wrap([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    goto :goto_26

    .line 887
    :cond_1e
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 888
    :goto_26
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 889
    return-object v1

    .line 891
    :cond_2c
    if-nez v0, :cond_31

    .line 892
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v0

    .line 895
    :cond_31
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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

    .line 938
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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

    .line 764
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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

    .line 759
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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

    .line 739
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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

    .line 829
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->checkRecursionLimit()V

    .line 830
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 831
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    .line 832
    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 833
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 834
    return-object p2
.end method

.method public blacklist readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->checkRecursionLimit()V

    .line 817
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 818
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 819
    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 820
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 821
    return-void
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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

    .line 749
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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

    .line 864
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 865
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->checkRecursionLimit()V

    .line 866
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v0

    .line 867
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 868
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    .line 869
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 870
    iget p2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 871
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    .line 874
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    .line 875
    return-object p1

    .line 872
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

    .line 848
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 849
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->checkRecursionLimit()V

    .line 850
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v0

    .line 851
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 852
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 853
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 854
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 855
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    .line 858
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    .line 859
    return-void

    .line 856
    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1223
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-eq v0, v1, :cond_11

    .line 1226
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    aget-byte v0, v0, v1

    return v0

    .line 1224
    :cond_11
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawBytes(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1231
    if-lez p1, :cond_19

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_19

    .line 1232
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1233
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1234
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 1237
    :cond_19
    if-gtz p1, :cond_25

    .line 1238
    if-nez p1, :cond_20

    .line 1239
    sget-object p1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 1241
    :cond_20
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1244
    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readRawLittleEndian32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1120
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1122
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    .line 1126
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 1127
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1128
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 1123
    :cond_2e
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

    .line 1136
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1138
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5b

    .line 1142
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 1143
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1144
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1139
    :cond_5b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawVarint32()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 970
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v1, v0, :cond_7

    .line 971
    goto :goto_6d

    .line 974
    :cond_7
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 976
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_12

    .line 977
    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 978
    return v0

    .line 979
    :cond_12
    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1a

    .line 980
    goto :goto_6d

    .line 981
    :cond_1a
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_26

    .line 982
    xor-int/lit8 v0, v0, -0x80

    goto :goto_74

    .line 983
    :cond_26
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_33

    .line 984
    xor-int/lit16 v0, v0, 0x3f80

    move v3, v2

    goto :goto_74

    .line 985
    :cond_33
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_41

    .line 986
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_74

    .line 988
    :cond_41
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    .line 989
    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v0, v4

    .line 990
    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    .line 991
    if-gez v3, :cond_73

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_74

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_73

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_74

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_73

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_74

    .line 997
    nop

    .line 1003
    :goto_6d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 991
    :cond_73
    move v3, v2

    .line 1000
    :cond_74
    :goto_74
    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1001
    return v0
.end method

.method public blacklist readRawVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1047
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1049
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v1, v0, :cond_8

    .line 1050
    goto/16 :goto_c1

    .line 1053
    :cond_8
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 1056
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_14

    .line 1057
    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1058
    int-to-long v0, v0

    return-wide v0

    .line 1059
    :cond_14
    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1d

    .line 1060
    goto/16 :goto_c1

    .line 1061
    :cond_1d
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_2b

    .line 1062
    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    goto/16 :goto_cc

    .line 1063
    :cond_2b
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_3a

    .line 1064
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move v3, v2

    goto/16 :goto_cc

    .line 1065
    :cond_3a
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_4a

    .line 1066
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto/16 :goto_cc

    .line 1067
    :cond_4a
    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v2, v1, v3

    int-to-long v2, v2

    const/16 v6, 0x1c

    shl-long/2addr v2, v6

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_63

    .line 1068
    const-wide/32 v4, 0xfe03f80

    xor-long v1, v2, v4

    move v3, v0

    move-wide v0, v1

    goto/16 :goto_cc

    .line 1069
    :cond_63
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_78

    .line 1070
    const-wide v0, -0x7f01fc080L

    xor-long/2addr v0, v2

    move v3, v6

    goto :goto_cc

    .line 1071
    :cond_78
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_8f

    .line 1072
    const-wide v4, 0x3f80fe03f80L

    xor-long v1, v2, v4

    move v3, v0

    move-wide v0, v1

    goto :goto_cc

    .line 1073
    :cond_8f
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_a4

    .line 1074
    const-wide v0, -0x1fc07f01fc080L

    xor-long/2addr v0, v2

    move v3, v6

    goto :goto_cc

    .line 1083
    :cond_a4
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    .line 1084
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v2, v6

    .line 1093
    cmp-long v6, v2, v4

    if-gez v6, :cond_c9

    .line 1094
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v0, v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_c6

    .line 1095
    nop

    .line 1102
    :goto_c1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 1094
    :cond_c6
    move-wide v0, v2

    move v3, v6

    goto :goto_cc

    .line 1093
    :cond_c9
    move-wide v9, v2

    move v3, v0

    move-wide v0, v9

    .line 1099
    :goto_cc
    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1100
    return-wide v0
.end method

.method blacklist readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    nop

    .line 1108
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x40

    if-ge v2, v3, :cond_19

    .line 1109
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawByte()B

    move-result v3

    .line 1110
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 1111
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_16

    .line 1112
    return-wide v0

    .line 1108
    :cond_16
    add-int/lit8 v2, v2, 0x7

    goto :goto_4

    .line 1115
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

    .line 943
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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

    .line 948
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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

    .line 953
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->decodeZigZag32(I)I

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

    .line 958
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 775
    if-lez v0, :cond_1e

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    .line 778
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 779
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 780
    return-object v1

    .line 783
    :cond_1e
    if-nez v0, :cond_23

    .line 784
    const-string v0, ""

    return-object v0

    .line 786
    :cond_23
    if-gez v0, :cond_2a

    .line 787
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 789
    :cond_2a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 795
    if-lez v0, :cond_1b

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    .line 796
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    .line 797
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 798
    return-object v1

    .line 801
    :cond_1b
    if-nez v0, :cond_20

    .line 802
    const-string v0, ""

    return-object v0

    .line 804
    :cond_20
    if-gtz v0, :cond_27

    .line 805
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 807
    :cond_27
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

    .line 626
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 628
    return v0

    .line 631
    :cond_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 632
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 637
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0

    .line 635
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

    .line 933
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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

    .line 744
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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

    .line 841
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 842
    return-void
.end method

.method public blacklist resetSizeCounter()V
    .registers 2

    .line 1161
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    .line 1162
    return-void
.end method

.method public blacklist skipField(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    .line 675
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 672
    :pswitch_e
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    .line 673
    return v2

    .line 670
    :pswitch_12
    const/4 p1, 0x0

    return p1

    .line 665
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->skipMessage()V

    .line 666
    nop

    .line 667
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 668
    return v2

    .line 662
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    .line 663
    return v2

    .line 659
    :pswitch_2c
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    .line 660
    return v2

    .line 656
    :pswitch_32
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarint()V

    .line 657
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

    .line 681
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_52

    .line 726
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 720
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 721
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 722
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 723
    return v1

    .line 716
    :pswitch_18
    const/4 p1, 0x0

    return p1

    .line 705
    :pswitch_1a
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 706
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 707
    nop

    .line 709
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 708
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 710
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 711
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 712
    return v1

    .line 698
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    .line 699
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 700
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 701
    return v1

    .line 691
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 692
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 693
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 694
    return v1

    .line 684
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->readInt64()J

    move-result-wide v2

    .line 685
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 686
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 687
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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1249
    if-ltz p1, :cond_f

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_f

    .line 1251
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1252
    return-void

    .line 1255
    :cond_f
    if-gez p1, :cond_16

    .line 1256
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1258
    :cond_16
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
