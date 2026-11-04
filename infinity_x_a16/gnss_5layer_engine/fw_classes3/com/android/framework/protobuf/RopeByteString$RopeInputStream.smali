.class Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;
.super Ljava/io/InputStream;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RopeInputStream"
.end annotation


# instance fields
.field private blacklist currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

.field private blacklist currentPieceIndex:I

.field private blacklist currentPieceOffsetInRope:I

.field private blacklist currentPieceSize:I

.field private blacklist mark:I

.field private blacklist pieceIterator:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

.field final synthetic blacklist this$0:Lcom/android/framework/protobuf/RopeByteString;


# direct methods
.method public constructor blacklist <init>(Lcom/android/framework/protobuf/RopeByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 808
    iput-object p1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 809
    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->initialize()V

    .line 810
    return-void
.end method

.method private blacklist advanceIfCurrentPieceFullyRead()V
    .registers 3

    .line 928
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    if-ne v0, v1, :cond_32

    .line 931
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    .line 932
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    .line 933
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 934
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next()Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    .line 935
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    goto :goto_32

    .line 937
    :cond_2d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    .line 938
    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    .line 941
    :cond_32
    :goto_32
    return-void
.end method

.method private blacklist availableInternal()I
    .registers 3

    .line 945
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr v0, v1

    .line 946
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/android/framework/protobuf/RopeByteString;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/RopeByteString;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private blacklist initialize()V
    .registers 4

    .line 916
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/android/framework/protobuf/RopeByteString;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    .line 917
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next()Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    .line 918
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    .line 919
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    .line 920
    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    .line 921
    return-void
.end method

.method private blacklist readSkipInternal([BII)I
    .registers 8

    .line 860
    move v0, p3

    .line 861
    :goto_1
    if-lez v0, :cond_25

    .line 862
    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->advanceIfCurrentPieceFullyRead()V

    .line 863
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    if-nez v1, :cond_b

    .line 864
    goto :goto_25

    .line 867
    :cond_b
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    iget v2, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    sub-int/2addr v1, v2

    .line 868
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 869
    if-eqz p1, :cond_1e

    .line 870
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    iget v3, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->copyTo([BIII)V

    .line 871
    add-int/2addr p2, v1

    .line 873
    :cond_1e
    iget v2, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    .line 874
    sub-int/2addr v0, v1

    .line 875
    goto :goto_1

    .line 878
    :cond_25
    :goto_25
    sub-int/2addr p3, v0

    return p3
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->availableInternal()I

    move-result v0

    return v0
.end method

.method public whitelist test-api mark(I)V
    .registers 3

    .line 904
    iget p1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->mark:I

    .line 905
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 898
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->advanceIfCurrentPieceFullyRead()V

    .line 884
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    if-nez v0, :cond_9

    .line 885
    const/4 v0, -0x1

    return v0

    .line 887
    :cond_9
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->byteAt(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5

    .line 824
    if-eqz p1, :cond_21

    .line 826
    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1b

    .line 829
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I

    move-result p1

    .line 830
    if-nez p1, :cond_1a

    if-gtz p3, :cond_18

    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->availableInternal()I

    move-result p2

    if-nez p2, :cond_1a

    .line 834
    :cond_18
    const/4 p1, -0x1

    return p1

    .line 836
    :cond_1a
    return p1

    .line 827
    :cond_1b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 825
    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 4

    monitor-enter p0

    .line 910
    :try_start_1
    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->initialize()V

    .line 911
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->mark:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 912
    monitor-exit p0

    return-void

    .line 909
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 6

    .line 842
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    .line 844
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    .line 845
    move-wide p1, v0

    .line 847
    :cond_e
    const/4 v0, 0x0

    long-to-int p1, p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 843
    :cond_17
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
