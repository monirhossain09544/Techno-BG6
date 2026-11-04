.class final Lcom/android/framework/protobuf/NioByteString;
.super Lcom/android/framework/protobuf/ByteString$LeafByteString;
.source "NioByteString.java"


# instance fields
.field private final blacklist buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString$LeafByteString;-><init>()V

    .line 29
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    .line 33
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/framework/protobuf/NioByteString;)Ljava/nio/ByteBuffer;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "NioByteString instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist slice(II)Ljava/nio/ByteBuffer;
    .registers 5

    .line 259
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt p1, v0, :cond_2d

    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-gt p2, v0, :cond_2d

    if-gt p1, p2, :cond_2d

    .line 264
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 266
    iget-object p1, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-static {v0, p2}, Lcom/android/framework/protobuf/Java8Compatibility;->limit(Ljava/nio/Buffer;I)V

    .line 267
    return-object v0

    .line 260
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid indices [%d, %d]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist asReadOnlyByteBufferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/android/framework/protobuf/NioByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist byteAt(I)B
    .registers 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 56
    :catch_7
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :catch_12
    move-exception p1

    .line 55
    throw p1
.end method

.method public blacklist copyTo(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 96
    return-void
.end method

.method protected blacklist copyToInternal([BIII)V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    invoke-static {v0, p2}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 90
    invoke-virtual {v0, p1, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 91
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 166
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 167
    return v0

    .line 169
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 170
    return v2

    .line 172
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    .line 173
    invoke-virtual {p0}, Lcom/android/framework/protobuf/NioByteString;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 174
    return v2

    .line 176
    :cond_18
    invoke-virtual {p0}, Lcom/android/framework/protobuf/NioByteString;->size()I

    move-result v2

    if-nez v2, :cond_1f

    .line 177
    return v0

    .line 179
    :cond_1f
    instance-of v0, p1, Lcom/android/framework/protobuf/NioByteString;

    if-eqz v0, :cond_2e

    .line 180
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    check-cast p1, Lcom/android/framework/protobuf/NioByteString;

    iget-object p1, p1, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 182
    :cond_2e
    instance-of v0, p1, Lcom/android/framework/protobuf/RopeByteString;

    if-eqz v0, :cond_37

    .line 183
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 185
    :cond_37
    iget-object p1, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method blacklist equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z
    .registers 5

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/android/framework/protobuf/NioByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist internalByteAt(I)B
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/NioByteString;->byteAt(I)B

    move-result p1

    return p1
.end method

.method public blacklist isValidUtf8()Z
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public blacklist newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;Z)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newInput()Ljava/io/InputStream;
    .registers 2

    .line 198
    new-instance v0, Lcom/android/framework/protobuf/NioByteString$1;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/NioByteString$1;-><init>(Lcom/android/framework/protobuf/NioByteString;)V

    return-object v0
.end method

.method protected blacklist partialHash(III)I
    .registers 6

    .line 190
    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_11

    .line 191
    mul-int/lit8 p1, p1, 0x1f

    iget-object v1, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/2addr p1, v1

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_11
    return p1
.end method

.method protected blacklist partialIsValidUtf8(III)I
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    add-int/2addr p3, p2

    invoke-static {p1, v0, p2, p3}, Lcom/android/framework/protobuf/Utf8;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public blacklist size()I
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public blacklist substring(II)Lcom/android/framework/protobuf/ByteString;
    .registers 3

    .line 76
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/NioByteString;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/android/framework/protobuf/NioByteString;

    invoke-direct {p2, p1}, Lcom/android/framework/protobuf/NioByteString;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p2

    .line 80
    :catch_a
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 78
    :catch_15
    move-exception p1

    .line 79
    throw p1
.end method

.method protected blacklist toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .line 141
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 142
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 144
    iget-object v2, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    goto :goto_29

    .line 147
    :cond_22
    invoke-virtual {p0}, Lcom/android/framework/protobuf/NioByteString;->toByteArray()[B

    move-result-object v0

    .line 148
    nop

    .line 149
    array-length v2, v0

    const/4 v1, 0x0

    .line 151
    :goto_29
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v3
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/ByteOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/ByteOutput;->writeLazy(Ljava/nio/ByteBuffer;)V

    .line 124
    return-void
.end method

.method public blacklist writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/android/framework/protobuf/NioByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 101
    return-void
.end method

.method blacklist writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 113
    iget-object v0, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 114
    iget-object p2, p0, Lcom/android/framework/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 115
    return-void

    .line 118
    :cond_20
    add-int/2addr p3, p2

    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/NioByteString;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/framework/protobuf/ByteBufferWriter;->write(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    .line 119
    return-void
.end method
