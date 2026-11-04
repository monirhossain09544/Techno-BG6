.class public abstract Lcom/android/framework/protobuf/CodedInputStream;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;,
        Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;,
        Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;,
        Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final blacklist DEFAULT_SIZE_LIMIT:I = 0x7fffffff

.field private static volatile blacklist defaultRecursionLimit:I


# instance fields
.field blacklist recursionDepth:I

.field blacklist recursionLimit:I

.field private blacklist shouldDiscardUnknownFields:Z

.field blacklist sizeLimit:I

.field blacklist wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const/16 v0, 0x64

    sput v0, Lcom/android/framework/protobuf/CodedInputStream;->defaultRecursionLimit:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget v0, Lcom/android/framework/protobuf/CodedInputStream;->defaultRecursionLimit:I

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    .line 51
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->sizeLimit:I

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    .line 181
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/CodedInputStream$1;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream;-><init>()V

    return-void
.end method

.method public static blacklist decodeZigZag32(I)I
    .registers 2

    .line 537
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static blacklist decodeZigZag64(J)J
    .registers 6

    .line 550
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 2

    .line 58
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;I)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance(Ljava/io/InputStream;I)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 4

    .line 63
    if-lez p1, :cond_12

    .line 66
    if-nez p0, :cond_b

    .line 68
    sget-object p0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([B)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0

    .line 70
    :cond_b
    new-instance v0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;ILcom/android/framework/protobuf/CodedInputStream$1;)V

    return-object v0

    .line 64
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist newInstance(Ljava/lang/Iterable;)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/android/framework/protobuf/CodedInputStream;"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isSupported()Z

    move-result v0

    if-nez v0, :cond_10

    .line 76
    new-instance v0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0

    .line 78
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/lang/Iterable;Z)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method static blacklist newInstance(Ljava/lang/Iterable;Z)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;Z)",
            "Lcom/android/framework/protobuf/CodedInputStream;"
        }
    .end annotation

    .line 89
    nop

    .line 91
    nop

    .line 92
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v2, v4

    .line 94
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 95
    or-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 96
    :cond_22
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 97
    or-int/lit8 v1, v1, 0x2

    goto :goto_2d

    .line 99
    :cond_2b
    or-int/lit8 v1, v1, 0x4

    .line 101
    :goto_2d
    goto :goto_8

    .line 102
    :cond_2e
    const/4 v0, 0x2

    if-ne v1, v0, :cond_38

    .line 103
    new-instance v0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;-><init>(Ljava/lang/Iterable;IZLcom/android/framework/protobuf/CodedInputStream$1;)V

    return-object v0

    .line 106
    :cond_38
    new-instance p1, Lcom/android/framework/protobuf/IterableByteBufferInputStream;

    invoke-direct {p1, p0}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;-><init>(Ljava/lang/Iterable;)V

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 2

    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;Z)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method static blacklist newInstance(Ljava/nio/ByteBuffer;Z)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 5

    .line 158
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 159
    nop

    .line 160
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    .line 159
    invoke-static {v0, v1, p0, p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0

    .line 163
    :cond_1d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 164
    new-instance v0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;ZLcom/android/framework/protobuf/CodedInputStream$1;)V

    return-object v0

    .line 170
    :cond_30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array v0, p1, [B

    .line 171
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 172
    const/4 p0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance([B)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 3

    .line 112
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance([BII)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 4

    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method static blacklist newInstance([BIIZ)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 10

    .line 123
    new-instance v0, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;-><init>([BIIZLcom/android/framework/protobuf/CodedInputStream$1;)V

    .line 130
    :try_start_a
    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I
    :try_end_d
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_a .. :try_end_d} :catch_f

    .line 140
    nop

    .line 141
    return-object v0

    .line 131
    :catch_f
    move-exception v0

    move-object p0, v0

    .line 139
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist readRawVarint32(ILjava/io/InputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_5

    .line 560
    return p0

    .line 563
    :cond_5
    and-int/lit8 p0, p0, 0x7f

    .line 564
    const/4 v0, 0x7

    .line 565
    :goto_8
    const/16 v1, 0x20

    const/4 v2, -0x1

    if-ge v0, v1, :cond_24

    .line 566
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 567
    if-eq v1, v2, :cond_1f

    .line 570
    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    .line 571
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1c

    .line 572
    return p0

    .line 565
    :cond_1c
    add-int/lit8 v0, v0, 0x7

    goto :goto_8

    .line 568
    :cond_1f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 576
    :cond_24
    :goto_24
    const/16 v1, 0x40

    if-ge v0, v1, :cond_3b

    .line 577
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 578
    if-eq v1, v2, :cond_36

    .line 581
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_33

    .line 582
    return p0

    .line 576
    :cond_33
    add-int/lit8 v0, v0, 0x7

    goto :goto_24

    .line 579
    :cond_36
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 585
    :cond_3b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist readRawVarint32(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 596
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 599
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result p0

    return p0

    .line 597
    :cond_c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abstract blacklist checkLastTagWas(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public blacklist checkRecursionLimit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v0, v1, :cond_7

    .line 179
    return-void

    .line 177
    :cond_7
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method final blacklist discardUnknownFields()V
    .registers 2

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    .line 439
    return-void
.end method

.method public abstract blacklist enableAliasing(Z)V
.end method

.method public abstract blacklist getBytesUntilLimit()I
.end method

.method public abstract blacklist getLastTag()I
.end method

.method public abstract blacklist getTotalBytesRead()I
.end method

.method public abstract blacklist isAtEnd()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist popLimit(I)V
.end method

.method public abstract blacklist pushLimit(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract blacklist readBool()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readByteArray()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readByteBuffer()Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readEnum()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readFixed32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readFixed64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readFloat()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readGroup(ILcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
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
.end method

.method public abstract blacklist readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readMessage(Lcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
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
.end method

.method public abstract blacklist readMessage(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readRawByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readRawBytes(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readRawLittleEndian32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readRawLittleEndian64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readRawVarint32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readRawVarint64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist readRawVarint64SlowPath()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readSFixed32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readSFixed64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readSInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readSInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readStringRequireUtf8()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readTag()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readUInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readUInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readUnknownGroup(ILcom/android/framework/protobuf/MessageLite$Builder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist resetSizeCounter()V
.end method

.method public final blacklist setRecursionLimit(I)I
    .registers 5

    .line 396
    if-ltz p1, :cond_7

    .line 399
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    .line 400
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    .line 401
    return v0

    .line 397
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist setSizeLimit(I)I
    .registers 5

    .line 419
    if-ltz p1, :cond_7

    .line 422
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->sizeLimit:I

    .line 423
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream;->sizeLimit:I

    .line 424
    return v0

    .line 420
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist shouldDiscardUnknownFields()Z
    .registers 2

    .line 454
    iget-boolean v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    return v0
.end method

.method public abstract blacklist skipField(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist skipMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 229
    if-nez v0, :cond_8

    .line 230
    return-void

    .line 232
    :cond_8
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->checkRecursionLimit()V

    .line 233
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    .line 235
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    .line 236
    if-nez v0, :cond_1e

    .line 237
    return-void

    .line 239
    :cond_1e
    goto :goto_1
.end method

.method public blacklist skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 249
    if-nez v0, :cond_8

    .line 250
    return-void

    .line 252
    :cond_8
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->checkRecursionLimit()V

    .line 253
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    .line 254
    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z

    move-result v0

    .line 255
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    .line 256
    if-nez v0, :cond_1e

    .line 257
    return-void

    .line 259
    :cond_1e
    goto :goto_1
.end method

.method public abstract blacklist skipRawBytes(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final blacklist unsetDiscardUnknownFields()V
    .registers 2

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    .line 447
    return-void
.end method
