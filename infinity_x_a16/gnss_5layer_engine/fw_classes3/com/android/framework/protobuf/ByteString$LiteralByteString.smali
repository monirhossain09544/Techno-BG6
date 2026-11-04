.class Lcom/android/framework/protobuf/ByteString$LiteralByteString;
.super Lcom/android/framework/protobuf/ByteString$LeafByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiteralByteString"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field protected final blacklist bytes:[B


# direct methods
.method constructor blacklist <init>([B)V
    .registers 2

    .line 1366
    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString$LeafByteString;-><init>()V

    .line 1367
    if-eqz p1, :cond_8

    .line 1370
    iput-object p1, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1371
    return-void

    .line 1368
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final blacklist asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 4

    .line 1424
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist asReadOnlyByteBufferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1429
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist byteAt(I)B
    .registers 3

    .line 1378
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final blacklist copyTo(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1419
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1420
    return-void
.end method

.method protected blacklist copyToInternal([BIII)V
    .registers 6

    .line 1414
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1415
    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1473
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1474
    return v0

    .line 1476
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1477
    return v2

    .line 1480
    :cond_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    .line 1481
    return v2

    .line 1483
    :cond_18
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_1f

    .line 1484
    return v0

    .line 1487
    :cond_1f
    instance-of v0, p1, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    if-eqz v0, :cond_3d

    .line 1488
    check-cast p1, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    .line 1491
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->peekCachedHashCode()I

    move-result v0

    .line 1492
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->peekCachedHashCode()I

    move-result v1

    .line 1493
    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    if-eq v0, v1, :cond_34

    .line 1494
    return v2

    .line 1497
    :cond_34
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z

    move-result p1

    return p1

    .line 1500
    :cond_3d
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final blacklist equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z
    .registers 9

    .line 1515
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    if-gt p3, v0, :cond_73

    .line 1518
    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    if-gt v0, v1, :cond_44

    .line 1523
    instance-of v1, p1, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 1524
    check-cast p1, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    .line 1525
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1526
    iget-object v1, p1, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1527
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    add-int/2addr v3, p3

    .line 1528
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result p3

    .line 1529
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result p1

    add-int/2addr p1, p2

    .line 1530
    :goto_27
    if-ge p3, v3, :cond_35

    .line 1532
    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_30

    .line 1533
    return v2

    .line 1531
    :cond_30
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    .line 1536
    :cond_35
    const/4 p1, 0x1

    return p1

    .line 1539
    :cond_37
    invoke-virtual {p1, p2, v0}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1519
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1520
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1516
    :cond_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist getOffsetIntoBytes()I
    .registers 2

    .line 1572
    const/4 v0, 0x0

    return v0
.end method

.method blacklist internalByteAt(I)B
    .registers 3

    .line 1383
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final blacklist isValidUtf8()Z
    .registers 4

    .line 1458
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 1459
    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public final blacklist newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;
    .registers 5

    .line 1559
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1560
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    .line 1559
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist newInput()Ljava/io/InputStream;
    .registers 5

    .line 1552
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method protected final blacklist partialHash(III)I
    .registers 6

    .line 1544
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/android/framework/protobuf/Internal;->partialHash(I[BII)I

    move-result p1

    return p1
.end method

.method protected final blacklist partialIsValidUtf8(III)I
    .registers 5

    .line 1464
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    add-int/2addr v0, p2

    .line 1465
    iget-object p2, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    add-int/2addr p3, v0

    invoke-static {p1, p2, v0, p3}, Lcom/android/framework/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result p1

    return p1
.end method

.method public blacklist size()I
    .registers 2

    .line 1388
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public final blacklist substring(II)Lcom/android/framework/protobuf/ByteString;
    .registers 6

    .line 1396
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->checkRange(III)I

    move-result p2

    .line 1398
    if-nez p2, :cond_d

    .line 1399
    sget-object p1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object p1

    .line 1402
    :cond_d
    new-instance v0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;

    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v0
.end method

.method protected final blacklist toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .line 1450
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final blacklist writeTo(Lcom/android/framework/protobuf/ByteOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1445
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/ByteOutput;->writeLazy([BII)V

    .line 1446
    return-void
.end method

.method public final blacklist writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1434
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1435
    return-void
.end method

.method final blacklist writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1441
    return-void
.end method
