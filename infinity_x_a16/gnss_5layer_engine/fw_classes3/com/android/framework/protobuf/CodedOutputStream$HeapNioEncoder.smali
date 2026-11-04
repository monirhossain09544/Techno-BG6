.class final Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;
.super Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeapNioEncoder"
.end annotation


# instance fields
.field private final blacklist byteBuffer:Ljava/nio/ByteBuffer;

.field private blacklist initialPosition:I


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1491
    nop

    .line 1492
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1493
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 1494
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 1491
    invoke-direct {p0, v0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BII)V

    .line 1495
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 1496
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;->initialPosition:I

    .line 1497
    return-void
.end method


# virtual methods
.method public blacklist flush()V
    .registers 4

    .line 1502
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;->initialPosition:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;->getTotalBytesWritten()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 1503
    return-void
.end method
