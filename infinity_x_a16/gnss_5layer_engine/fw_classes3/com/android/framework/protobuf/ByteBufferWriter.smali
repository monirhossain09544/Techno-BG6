.class final Lcom/android/framework/protobuf/ByteBufferWriter;
.super Ljava/lang/Object;
.source "ByteBufferWriter.java"


# static fields
.field private static final blacklist BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private static final blacklist BUFFER_REALLOCATION_THRESHOLD:F = 0.5f

.field private static final blacklist CHANNEL_FIELD_OFFSET:J

.field private static final blacklist FILE_OUTPUT_STREAM_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_CACHED_BUFFER_SIZE:I = 0x4000

.field private static final blacklist MIN_CACHED_BUFFER_SIZE:I = 0x400


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    .line 52
    const-string v0, "java.io.FileOutputStream"

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteBufferWriter;->safeGetClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/ByteBufferWriter;->FILE_OUTPUT_STREAM_CLASS:Ljava/lang/Class;

    .line 54
    sget-object v0, Lcom/android/framework/protobuf/ByteBufferWriter;->FILE_OUTPUT_STREAM_CLASS:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteBufferWriter;->getChannelFieldOffset(Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/framework/protobuf/ByteBufferWriter;->CHANNEL_FIELD_OFFSET:J

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist clearCachedBuffer()V
    .registers 2

    .line 61
    sget-object v0, Lcom/android/framework/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method private static blacklist getBuffer()[B
    .registers 1

    .line 114
    sget-object v0, Lcom/android/framework/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 115
    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_12
    return-object v0
.end method

.method private static blacklist getChannelFieldOffset(Ljava/lang/Class;)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    .line 149
    if-eqz p0, :cond_15

    :try_start_2
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 150
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 151
    invoke-static {p0}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    return-wide v0

    .line 153
    :catchall_13
    move-exception p0

    goto :goto_16

    .line 155
    :cond_15
    nop

    .line 156
    :goto_16
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static blacklist getOrCreateBuffer(I)[B
    .registers 3

    .line 92
    const/16 v0, 0x400

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 94
    invoke-static {}, Lcom/android/framework/protobuf/ByteBufferWriter;->getBuffer()[B

    move-result-object v0

    .line 96
    if-eqz v0, :cond_13

    array-length v1, v0

    invoke-static {p0, v1}, Lcom/android/framework/protobuf/ByteBufferWriter;->needToReallocate(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 97
    :cond_13
    new-array v0, p0, [B

    .line 100
    const/16 v1, 0x4000

    if-gt p0, v1, :cond_1c

    .line 101
    invoke-static {v0}, Lcom/android/framework/protobuf/ByteBufferWriter;->setBuffer([B)V

    .line 104
    :cond_1c
    return-object v0
.end method

.method private static blacklist needToReallocate(II)Z
    .registers 3

    .line 109
    if-ge p1, p0, :cond_d

    int-to-float p1, p1

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private static blacklist safeGetClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 141
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 142
    :catch_5
    move-exception p0

    .line 143
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist setBuffer([B)V
    .registers 3

    .line 119
    sget-object v0, Lcom/android/framework/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method static blacklist write(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 71
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_44

    .line 75
    :cond_1f
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ByteBufferWriter;->writeToChannel(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/ByteBufferWriter;->getOrCreateBuffer(I)[B

    move-result-object v1

    .line 79
    :goto_2d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 81
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_49

    .line 83
    goto :goto_2d

    .line 87
    :cond_44
    :goto_44
    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 88
    nop

    .line 89
    return-void

    .line 87
    :catchall_49
    move-exception p1

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 88
    throw p1
.end method

.method private static blacklist writeToChannel(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    sget-wide v0, Lcom/android/framework/protobuf/ByteBufferWriter;->CHANNEL_FIELD_OFFSET:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    sget-object v0, Lcom/android/framework/protobuf/ByteBufferWriter;->FILE_OUTPUT_STREAM_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 125
    nop

    .line 127
    :try_start_11
    sget-wide v0, Lcom/android/framework/protobuf/ByteBufferWriter;->CHANNEL_FIELD_OFFSET:J

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/WritableByteChannel;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_19} :catch_1a

    .line 130
    goto :goto_1c

    .line 128
    :catch_1a
    move-exception p1

    const/4 p1, 0x0

    .line 131
    :goto_1c
    if-eqz p1, :cond_23

    .line 132
    invoke-interface {p1, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 133
    const/4 p0, 0x1

    return p0

    .line 136
    :cond_23
    const/4 p0, 0x0

    return p0
.end method
