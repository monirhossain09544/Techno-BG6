.class final Lcom/android/framework/protobuf/RopeByteString;
.super Lcom/android/framework/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/RopeByteString$Balancer;,
        Lcom/android/framework/protobuf/RopeByteString$PieceIterator;,
        Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;
    }
.end annotation


# static fields
.field static final blacklist minLengthByDepth:[I

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final blacklist left:Lcom/android/framework/protobuf/ByteString;

.field private final blacklist leftLength:I

.field private final blacklist right:Lcom/android/framework/protobuf/ByteString;

.field private final blacklist totalLength:I

.field private final blacklist treeDepth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V
    .registers 5

    .line 123
    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    .line 125
    iput-object p2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    .line 126
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    .line 127
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    .line 128
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/RopeByteString;->treeDepth:I

    .line 129
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    return-object p0
.end method

.method static synthetic blacklist access$500(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    return-object p0
.end method

.method static blacklist concatenate(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 7

    .line 145
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 146
    return-object p0

    .line 149
    :cond_7
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 150
    return-object p1

    .line 153
    :cond_e
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    const/16 v1, 0x80

    if-ge v0, v1, :cond_20

    .line 157
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/RopeByteString;->concatenateBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 160
    :cond_20
    instance-of v2, p0, Lcom/android/framework/protobuf/RopeByteString;

    if-eqz v2, :cond_69

    .line 161
    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/RopeByteString;

    .line 162
    iget-object v3, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_42

    .line 173
    iget-object p0, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/RopeByteString;->concatenateBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    .line 174
    new-instance p1, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v0, v2, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object p1

    .line 177
    :cond_42
    iget-object v1, v2, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    iget-object v3, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_69

    .line 178
    invoke-virtual {v2}, Lcom/android/framework/protobuf/RopeByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_69

    .line 184
    new-instance p0, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v0, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {p0, v0, p1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    .line 185
    new-instance p1, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v0, v2, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object p1

    .line 190
    :cond_69
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 191
    invoke-static {v1}, Lcom/android/framework/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    if-lt v0, v1, :cond_83

    .line 193
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v0

    .line 196
    :cond_83
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$Balancer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;-><init>(Lcom/android/framework/protobuf/RopeByteString$1;)V

    # invokes: Lcom/android/framework/protobuf/RopeByteString$Balancer;->balance(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->access$100(Lcom/android/framework/protobuf/RopeByteString$Balancer;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist concatenateBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 6

    .line 208
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    .line 209
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    .line 210
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 211
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/android/framework/protobuf/ByteString;->copyTo([BIII)V

    .line 212
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/android/framework/protobuf/ByteString;->copyTo([BIII)V

    .line 213
    invoke-static {v2}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private blacklist equalsFragments(Lcom/android/framework/protobuf/ByteString;)Z
    .registers 13

    .line 518
    nop

    .line 519
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    .line 520
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    .line 522
    nop

    .line 523
    new-instance v3, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v3, p1, v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    .line 524
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    .line 526
    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    move v6, v5

    .line 528
    :goto_1d
    invoke-virtual {v2}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .line 529
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->size()I

    move-result v8

    sub-int/2addr v8, v5

    .line 530
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 534
    if-nez v4, :cond_32

    .line 535
    invoke-virtual {v2, p1, v5, v9}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z

    move-result v10

    goto :goto_36

    .line 536
    :cond_32
    invoke-virtual {p1, v2, v4, v9}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z

    move-result v10

    .line 537
    :goto_36
    if-nez v10, :cond_39

    .line 538
    return v1

    .line 541
    :cond_39
    add-int/2addr v6, v9

    .line 542
    iget v10, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-lt v6, v10, :cond_4a

    .line 543
    iget p1, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-ne v6, p1, :cond_44

    .line 544
    const/4 p1, 0x1

    return p1

    .line 546
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 549
    :cond_4a
    if-ne v9, v7, :cond_55

    .line 550
    nop

    .line 551
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move v4, v1

    goto :goto_56

    .line 553
    :cond_55
    add-int/2addr v4, v9

    .line 555
    :goto_56
    if-ne v9, v8, :cond_61

    .line 556
    nop

    .line 557
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move v5, v1

    goto :goto_62

    .line 559
    :cond_61
    add-int/2addr v5, v9

    .line 561
    :goto_62
    goto :goto_1d
.end method

.method static blacklist minLength(I)I
    .registers 2

    .line 240
    sget-object v0, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v0, v0

    if-lt p0, v0, :cond_9

    .line 241
    const p0, 0x7fffffff

    return p0

    .line 243
    :cond_9
    sget-object v0, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    aget p0, v0, p0

    return p0
.end method

.method static blacklist newInstanceForTest(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/RopeByteString;
    .registers 3

    .line 227
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "RopeByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 399
    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist asReadOnlyByteBufferList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    new-instance v1, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    .line 409
    :goto_b
    invoke-virtual {v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 410
    invoke-virtual {v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next()Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v2

    .line 411
    invoke-virtual {v2}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    goto :goto_b

    .line 413
    :cond_1d
    return-object v0
.end method

.method public blacklist byteAt(I)B
    .registers 3

    .line 257
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/RopeByteString;->checkIndex(II)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/RopeByteString;->internalByteAt(I)B

    move-result p1

    return p1
.end method

.method public blacklist copyTo(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 394
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 395
    return-void
.end method

.method protected blacklist copyToInternal([BIII)V
    .registers 7

    .line 380
    add-int v0, p2, p4

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_c

    .line 381
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_29

    .line 382
    :cond_c
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_19

    .line 383
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_29

    .line 385
    :cond_19
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 386
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    .line 387
    iget-object p2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    .line 389
    :goto_29
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 481
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 482
    return v0

    .line 484
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 485
    return v2

    .line 488
    :cond_a
    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    .line 489
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_15

    .line 490
    return v2

    .line 492
    :cond_15
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-nez v1, :cond_1a

    .line 493
    return v0

    .line 501
    :cond_1a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->peekCachedHashCode()I

    move-result v0

    .line 502
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->peekCachedHashCode()I

    move-result v1

    .line 503
    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    if-eq v0, v1, :cond_29

    .line 504
    return v2

    .line 507
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/RopeByteString;->equalsFragments(Lcom/android/framework/protobuf/ByteString;)Z

    move-result p1

    return p1
.end method

.method protected blacklist getTreeDepth()I
    .registers 2

    .line 312
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method blacklist internalByteAt(I)B
    .registers 4

    .line 264
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-ge p1, v0, :cond_b

    .line 265
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->internalByteAt(I)B

    move-result p1

    return p1

    .line 268
    :cond_b
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->internalByteAt(I)B

    move-result p1

    return p1
.end method

.method protected blacklist isBalanced()Z
    .registers 3

    .line 324
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->treeDepth:I

    invoke-static {v1}, Lcom/android/framework/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isValidUtf8()Z
    .registers 5

    .line 457
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 458
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 459
    if-nez v0, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2
.end method

.method public blacklist iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;
    .registers 2

    .line 278
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$1;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/RopeByteString$1;-><init>(Lcom/android/framework/protobuf/RopeByteString;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;
    .registers 3

    .line 588
    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->asReadOnlyByteBufferList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/lang/Iterable;Z)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newInput()Ljava/io/InputStream;
    .registers 2

    .line 593
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/android/framework/protobuf/RopeByteString;)V

    return-object v0
.end method

.method protected blacklist partialHash(III)I
    .registers 6

    .line 566
    add-int v0, p2, p3

    .line 567
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_d

    .line 568
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1

    .line 569
    :cond_d
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1b

    .line 570
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1

    .line 572
    :cond_1b
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 573
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result p1

    .line 574
    iget-object p2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v1, 0x0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p1, v1, p3}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1
.end method

.method protected blacklist partialIsValidUtf8(III)I
    .registers 6

    .line 464
    add-int v0, p2, p3

    .line 465
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_d

    .line 466
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1

    .line 467
    :cond_d
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1b

    .line 468
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1

    .line 470
    :cond_1b
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 471
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    .line 472
    iget-object p2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v1, 0x0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p1, v1, p3}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1
.end method

.method public blacklist size()I
    .registers 2

    .line 273
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public blacklist substring(II)Lcom/android/framework/protobuf/ByteString;
    .registers 5

    .line 342
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, p2, v0}, Lcom/android/framework/protobuf/RopeByteString;->checkRange(III)I

    move-result v0

    .line 344
    if-nez v0, :cond_b

    .line 346
    sget-object p1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object p1

    .line 349
    :cond_b
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-ne v0, v1, :cond_10

    .line 351
    return-object p0

    .line 355
    :cond_10
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt p2, v0, :cond_1b

    .line 357
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 360
    :cond_1b
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-lt p1, v0, :cond_2c

    .line 362
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 366
    :cond_2c
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->substring(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    .line 367
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object p2

    .line 371
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v0, p1, p2}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v0
.end method

.method protected blacklist toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 449
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 786
    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/ByteOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 438
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 439
    return-void
.end method

.method public blacklist writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 419
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 420
    return-void
.end method

.method blacklist writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    add-int v0, p2, p3

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_c

    .line 425
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_28

    .line 426
    :cond_c
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_19

    .line 427
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_28

    .line 429
    :cond_19
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 430
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 431
    iget-object p2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v1, 0x0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p1, v1, p3}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 433
    :goto_28
    return-void
.end method

.method blacklist writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 444
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 445
    return-void
.end method
