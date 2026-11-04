.class Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;
.super Lcom/android/framework/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayEncoder"
.end annotation


# instance fields
.field private final blacklist buffer:[B

.field private final blacklist limit:I

.field private final blacklist offset:I

.field private blacklist position:I


# direct methods
.method constructor blacklist <init>([BII)V
    .registers 7

    .line 1142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;-><init>(Lcom/android/framework/protobuf/CodedOutputStream$1;)V

    .line 1143
    if-eqz p1, :cond_35

    .line 1146
    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_18

    .line 1152
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 1153
    iput p2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->offset:I

    .line 1154
    iput p2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1155
    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 1156
    return-void

    .line 1147
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    .line 1150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 1148
    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :cond_35
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist flush()V
    .registers 1

    .line 1469
    return-void
.end method

.method public final blacklist getTotalBytesWritten()I
    .registers 3

    .line 1478
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final blacklist spaceLeft()I
    .registers 3

    .line 1473
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final blacklist write(B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1304
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_c

    .line 1308
    nop

    .line 1309
    return-void

    .line 1305
    :catch_c
    move-exception p1

    .line 1306
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1307
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1417
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1419
    :try_start_4
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1420
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_10} :catch_12

    .line 1424
    nop

    .line 1425
    return-void

    .line 1421
    :catch_12
    move-exception p1

    .line 1422
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1423
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final blacklist write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1402
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1403
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_e

    .line 1407
    nop

    .line 1408
    return-void

    .line 1404
    :catch_e
    move-exception p1

    .line 1405
    new-instance p2, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1406
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final blacklist writeBool(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1196
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write(B)V

    .line 1197
    return-void
.end method

.method public final blacklist writeByteArray(I[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1213
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeByteArray(I[BII)V

    .line 1214
    return-void
.end method

.method public final blacklist writeByteArray(I[BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1220
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1221
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeByteArrayNoTag([BII)V

    .line 1222
    return-void
.end method

.method public final blacklist writeByteArrayNoTag([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1241
    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1242
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 1243
    return-void
.end method

.method public final blacklist writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1228
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1229
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 1230
    return-void
.end method

.method public final blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1207
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1208
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 1209
    return-void
.end method

.method public final blacklist writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1234
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1235
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 1236
    return-void
.end method

.method public final blacklist writeFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1178
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32NoTag(I)V

    .line 1179
    return-void
.end method

.method public final blacklist writeFixed32NoTag(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1342
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1343
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1344
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1345
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3a} :catch_3c

    .line 1349
    nop

    .line 1350
    return-void

    .line 1346
    :catch_3c
    move-exception p1

    .line 1347
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1348
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final blacklist writeFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1189
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1190
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64NoTag(J)V

    .line 1191
    return-void
.end method

.method public final blacklist writeFixed64NoTag(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1385
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1386
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1387
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1388
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1389
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1390
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1391
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1392
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_8b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8b} :catch_8d

    .line 1396
    nop

    .line 1397
    return-void

    .line 1393
    :catch_8d
    move-exception p1

    .line 1394
    new-instance p2, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1395
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final blacklist writeInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1166
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    .line 1167
    return-void
.end method

.method public final blacklist writeInt32NoTag(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1313
    if-ltz p1, :cond_6

    .line 1314
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 1317
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64NoTag(J)V

    .line 1319
    :goto_a
    return-void
.end method

.method public final blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1429
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1430
    return-void
.end method

.method public final blacklist writeLazy([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1412
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 1413
    return-void
.end method

.method public final blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1260
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 1261
    return-void
.end method

.method final blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1266
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1267
    move-object p1, p2

    check-cast p1, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1268
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p3, p2, p1}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1269
    return-void
.end method

.method public final blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1291
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1292
    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/MessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 1293
    return-void
.end method

.method final blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1297
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1298
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1299
    return-void
.end method

.method public final blacklist writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1274
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1275
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 1276
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeMessage(ILcom/android/framework/protobuf/MessageLite;)V

    .line 1277
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1278
    return-void
.end method

.method public final blacklist writeRawBytes(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1247
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1248
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    goto :goto_20

    .line 1250
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1251
    invoke-static {p1}, Lcom/android/framework/protobuf/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 1252
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1254
    :goto_20
    return-void
.end method

.method public final blacklist writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1283
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1284
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 1285
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 1286
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1287
    return-void
.end method

.method public final blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1201
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1202
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 1203
    return-void
.end method

.method public final blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1434
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1438
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 1439
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    .line 1440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 1441
    if-ne v2, v1, :cond_31

    .line 1442
    add-int v1, v0, v2

    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1443
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v4

    invoke-static {p1, v1, v3, v4}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 1446
    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1447
    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 1448
    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1449
    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1450
    goto :goto_54

    .line 1451
    :cond_31
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1452
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1453
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_46
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_46} :catch_4e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_46} :catch_47

    goto :goto_54

    .line 1461
    :catch_47
    move-exception p1

    .line 1462
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1455
    :catch_4e
    move-exception v1

    .line 1457
    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1460
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 1463
    :goto_54
    nop

    .line 1464
    return-void
.end method

.method public final blacklist writeTag(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1161
    return-void
.end method

.method public final blacklist writeUInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1172
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1173
    return-void
.end method

.method public final blacklist writeUInt32NoTag(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1325
    nop

    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_11

    .line 1326
    :try_start_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1327
    return-void

    .line 1329
    :cond_11
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_20} :catch_23

    .line 1330
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 1333
    :catch_23
    move-exception p1

    .line 1334
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final blacklist writeUInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1184
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64NoTag(J)V

    .line 1185
    return-void
.end method

.method public final blacklist writeUInt64NoTag(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1354
    # getter for: Lcom/android/framework/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z
    invoke-static {}, Lcom/android/framework/protobuf/CodedOutputStream;->access$100()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_3c

    .line 1356
    :goto_13
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_28

    .line 1357
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1358
    return-void

    .line 1360
    :cond_28
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1361
    ushr-long/2addr p1, v1

    goto :goto_13

    .line 1367
    :cond_3c
    :goto_3c
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_4f

    .line 1368
    :try_start_42
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1369
    return-void

    .line 1371
    :cond_4f
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_5f} :catch_61

    .line 1372
    ushr-long/2addr p1, v1

    goto :goto_3c

    .line 1375
    :catch_61
    move-exception p1

    .line 1376
    new-instance p2, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
