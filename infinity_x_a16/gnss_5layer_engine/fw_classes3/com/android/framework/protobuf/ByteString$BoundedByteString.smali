.class final Lcom/android/framework/protobuf/ByteString$BoundedByteString;
.super Lcom/android/framework/protobuf/ByteString$LiteralByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundedByteString"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final blacklist bytesLength:I

.field private final blacklist bytesOffset:I


# direct methods
.method constructor blacklist <init>([BII)V
    .registers 5

    .line 1602
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    .line 1603
    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->checkRange(III)I

    .line 1605
    iput p2, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    .line 1606
    iput p3, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesLength:I

    .line 1607
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1661
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist byteAt(I)B
    .registers 4

    .line 1622
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->checkIndex(II)V

    .line 1623
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytes:[B

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected blacklist copyToInternal([BIII)V
    .registers 7

    .line 1647
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 1648
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    .line 1647
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1649
    return-void
.end method

.method protected blacklist getOffsetIntoBytes()I
    .registers 2

    .line 1638
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    return v0
.end method

.method blacklist internalByteAt(I)B
    .registers 4

    .line 1628
    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytes:[B

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public blacklist size()I
    .registers 2

    .line 1633
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->bytesLength:I

    return v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1657
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
