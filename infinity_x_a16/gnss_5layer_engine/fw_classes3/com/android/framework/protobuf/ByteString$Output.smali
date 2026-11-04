.class public final Lcom/android/framework/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final blacklist EMPTY_BYTE_ARRAY:[B


# instance fields
.field private blacklist buffer:[B

.field private blacklist bufferPos:I

.field private final blacklist flushedBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist flushedBuffersTotalBytes:I

.field private final blacklist initialCapacity:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1048
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/framework/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 3

    .line 1065
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1066
    if-ltz p1, :cond_13

    .line 1069
    iput p1, p0, Lcom/android/framework/protobuf/ByteString$Output;->initialCapacity:I

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 1071
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    .line 1072
    return-void

    .line 1067
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist flushFullBuffer(I)V
    .registers 5

    .line 1171
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    iget-object v2, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1176
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->initialCapacity:I

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1177
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    .line 1178
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    .line 1179
    return-void
.end method

.method private blacklist flushLastBuffer()V
    .registers 4

    .line 1186
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 1187
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    if-lez v0, :cond_2e

    .line 1188
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 1189
    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    invoke-direct {v2, v0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    goto :goto_2e

    .line 1194
    :cond_1e
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    iget-object v2, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    sget-object v0, Lcom/android/framework/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    .line 1202
    :cond_2e
    :goto_2e
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    .line 1204
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist reset()V
    .registers 2

    monitor-enter p0

    .line 1154
    :try_start_1
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1156
    iput v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1157
    monitor-exit p0

    return-void

    .line 1153
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized blacklist size()I
    .registers 3

    monitor-enter p0

    .line 1146
    :try_start_1
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 1146
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist toByteString()Lcom/android/framework/protobuf/ByteString;
    .registers 2

    monitor-enter p0

    .line 1111
    :try_start_1
    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString$Output;->flushLastBuffer()V

    .line 1112
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 1110
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1161
    nop

    .line 1163
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$Output;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1161
    const-string v1, "<ByteString.Output@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api write(I)V
    .registers 5

    monitor-enter p0

    .line 1076
    :try_start_1
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 1077
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 1079
    :cond_c
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 1080
    monitor-exit p0

    return-void

    .line 1075
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 7

    monitor-enter p0

    .line 1084
    :try_start_1
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_16

    .line 1086
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1087
    iget p1, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    goto :goto_30

    .line 1090
    :cond_16
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v0, v1

    .line 1091
    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1092
    add-int/2addr p2, v0

    .line 1093
    sub-int/2addr p3, v0

    .line 1096
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 1097
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1098
    iput p3, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 1100
    :goto_30
    monitor-exit p0

    return-void

    .line 1083
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public blacklist writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    monitor-enter p0

    .line 1129
    :try_start_1
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/ByteString;

    .line 1130
    iget-object v2, p0, Lcom/android/framework/protobuf/ByteString$Output;->buffer:[B

    .line 1131
    iget v3, p0, Lcom/android/framework/protobuf/ByteString$Output;->bufferPos:I

    .line 1132
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_24

    .line 1133
    array-length v4, v0

    :goto_12
    if-ge v1, v4, :cond_1c

    aget-object v5, v0, v1

    .line 1134
    invoke-virtual {v5, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1137
    :cond_1c
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1138
    return-void

    .line 1132
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method
