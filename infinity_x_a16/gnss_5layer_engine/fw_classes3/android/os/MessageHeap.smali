.class public final Landroid/os/MessageHeap;
.super Ljava/lang/Object;
.source "MessageHeap.java"


# static fields
.field static final blacklist DEBUG:Z = false

.field static final blacklist INITIAL_SIZE:I = 0x10

.field private static final blacklist TAG:Ljava/lang/String; = "MessageHeap"


# instance fields
.field blacklist mHeap:[Landroid/os/Message;

.field blacklist mNumElements:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    return-void
.end method

.method private blacklist checkDanglingReferences(Ljava/lang/String;)Z
    .registers 5
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 341
    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    :goto_2
    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    array-length v1, v1

    if-ge v0, v1, :cond_6d

    .line 342
    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6a

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] Verify failure: dangling reference found at index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " Async "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v0, v1, v0

    .line 345
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mNumElements "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mHeap.length "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 343
    const-string v0, "MessageHeap"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 p1, 0x0

    return p1

    .line 341
    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 350
    :cond_6d
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist compareMessagesByIdx(II)I
    .registers 4

    .line 90
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object p1, v0, p1

    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object p2, v0, p2

    invoke-static {p1, p2}, Landroid/os/Message;->compareMessages(Landroid/os/Message;Landroid/os/Message;)I

    move-result p1

    return p1
.end method

.method private blacklist getLeftNode(I)Landroid/os/Message;
    .registers 3

    .line 64
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    invoke-static {p1}, Landroid/os/MessageHeap;->leftNodeIdx(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private blacklist getParentNode(I)Landroid/os/Message;
    .registers 3

    .line 48
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    invoke-static {p1}, Landroid/os/MessageHeap;->parentNodeIdx(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private blacklist getRightNode(I)Landroid/os/Message;
    .registers 3

    .line 56
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    invoke-static {p1}, Landroid/os/MessageHeap;->rightNodeIdx(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static blacklist leftNodeIdx(I)I
    .registers 1

    .line 60
    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist maybeGrow()V
    .registers 3

    .line 163
    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    array-length v1, v1

    if-ne v0, v1, :cond_1a

    .line 168
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    array-length v0, v0

    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 175
    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Message;

    .line 176
    iput-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    .line 178
    :cond_1a
    return-void
.end method

.method private static blacklist parentNodeIdx(I)I
    .registers 1

    .line 44
    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static blacklist rightNodeIdx(I)I
    .registers 1

    .line 52
    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private blacklist siftDown(I)V
    .registers 11

    .line 94
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v0, v0, p1

    .line 95
    iget v1, p0, Landroid/os/MessageHeap;->mNumElements:I

    .line 96
    ushr-int/lit8 v2, v1, 0x1

    .line 97
    const/4 v3, 0x0

    .line 99
    :goto_9
    if-ge p1, v2, :cond_36

    .line 101
    invoke-static {p1}, Landroid/os/MessageHeap;->leftNodeIdx(I)I

    move-result v4

    .line 102
    iget-object v5, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v5, v5, v4

    .line 103
    add-int/lit8 v6, v4, 0x1

    .line 105
    if-ge v6, v1, :cond_24

    .line 106
    iget-object v7, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v7, v7, v6

    .line 107
    invoke-static {v7, v5}, Landroid/os/Message;->compareMessages(Landroid/os/Message;Landroid/os/Message;)I

    move-result v8

    if-gez v8, :cond_24

    .line 108
    nop

    .line 109
    move v4, v6

    move-object v5, v7

    .line 113
    :cond_24
    invoke-static {v0, v5}, Landroid/os/Message;->compareMessages(Landroid/os/Message;Landroid/os/Message;)I

    move-result v6

    if-gtz v6, :cond_2b

    .line 116
    goto :goto_36

    .line 120
    :cond_2b
    iget-object v3, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aput-object v5, v3, p1

    .line 121
    iput p1, v5, Landroid/os/Message;->heapIndex:I

    .line 122
    nop

    .line 123
    nop

    .line 124
    const/4 v3, 0x1

    move p1, v4

    goto :goto_9

    .line 127
    :cond_36
    :goto_36
    if-eqz v3, :cond_3e

    .line 128
    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aput-object v0, v1, p1

    .line 129
    iput p1, v0, Landroid/os/Message;->heapIndex:I

    .line 131
    :cond_3e
    return-void
.end method

.method private blacklist siftUp(I)Z
    .registers 7

    .line 134
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v0, v0, p1

    .line 135
    const/4 v1, 0x0

    .line 138
    :goto_5
    if-lez p1, :cond_21

    .line 139
    invoke-static {p1}, Landroid/os/MessageHeap;->parentNodeIdx(I)I

    move-result v2

    .line 140
    iget-object v3, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v3, v3, v2

    .line 141
    invoke-static {v3, v0}, Landroid/os/Message;->compareMessages(Landroid/os/Message;Landroid/os/Message;)I

    move-result v4

    if-gez v4, :cond_16

    .line 143
    goto :goto_21

    .line 147
    :cond_16
    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aput-object v3, v1, p1

    .line 148
    iput p1, v3, Landroid/os/Message;->heapIndex:I

    .line 149
    nop

    .line 150
    nop

    .line 151
    const/4 v1, 0x1

    move p1, v2

    goto :goto_5

    .line 154
    :cond_21
    :goto_21
    if-eqz v1, :cond_29

    .line 155
    iget-object v2, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aput-object v0, v2, p1

    .line 156
    iput p1, v0, Landroid/os/Message;->heapIndex:I

    .line 159
    :cond_29
    return v1
.end method

.method private blacklist verify(I)Z
    .registers 10
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 295
    invoke-static {p1}, Landroid/os/MessageHeap;->rightNodeIdx(I)I

    move-result v0

    .line 296
    invoke-static {p1}, Landroid/os/MessageHeap;->leftNodeIdx(I)I

    move-result v1

    .line 298
    iget v2, p0, Landroid/os/MessageHeap;->mNumElements:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_12

    iget v2, p0, Landroid/os/MessageHeap;->mNumElements:I

    if-lt v0, v2, :cond_12

    .line 299
    return v3

    .line 302
    :cond_12
    iget v2, p0, Landroid/os/MessageHeap;->mNumElements:I

    const-string v4, "Verify failure: root idx/when: "

    const-string v5, "/"

    const-string v6, "MessageHeap"

    const/4 v7, 0x0

    if-ge v1, v2, :cond_5e

    invoke-direct {p0, v1, p1}, Landroid/os/MessageHeap;->compareMessagesByIdx(II)I

    move-result v2

    if-gez v2, :cond_5e

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object p1, v2, p1

    iget-wide v2, p1, Landroid/os/Message;->when:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " left node idx/when: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return v7

    .line 308
    :cond_5e
    iget v2, p0, Landroid/os/MessageHeap;->mNumElements:I

    if-ge v0, v2, :cond_a3

    invoke-direct {p0, v0, p1}, Landroid/os/MessageHeap;->compareMessagesByIdx(II)I

    move-result v2

    if-gez v2, :cond_a3

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object p1, v2, p1

    iget-wide v2, p1, Landroid/os/Message;->when:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " right node idx/when: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v0, v1, v0

    iget-wide v0, v0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v7

    .line 314
    :cond_a3
    invoke-direct {p0, v0}, Landroid/os/MessageHeap;->verify(I)Z

    move-result p1

    if-eqz p1, :cond_120

    invoke-direct {p0, v1}, Landroid/os/MessageHeap;->verify(I)Z

    move-result p1

    if-nez p1, :cond_b0

    goto :goto_120

    .line 318
    :cond_b0
    nop

    .line 319
    move p1, v7

    move v0, p1

    :goto_b3
    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    array-length v1, v1

    if-ge p1, v1, :cond_f2

    .line 320
    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v1, v1, p1

    if-eqz v1, :cond_ef

    .line 321
    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/os/Message;->heapIndex:I

    if-eq v1, p1, :cond_ed

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify failure: message at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has heapIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object p1, v1, p1

    iget p1, p1, Landroid/os/Message;->heapIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return v7

    .line 326
    :cond_ed
    add-int/lit8 v0, v0, 0x1

    .line 319
    :cond_ef
    add-int/lit8 p1, p1, 0x1

    goto :goto_b3

    .line 330
    :cond_f2
    iget p1, p0, Landroid/os/MessageHeap;->mNumElements:I

    if-eq p1, v0, :cond_11f

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify failure mNumLElements is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Landroid/os/MessageHeap;->mNumElements:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " but I counted "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " heap elements"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return v7

    .line 335
    :cond_11f
    return v3

    .line 315
    :cond_120
    :goto_120
    return v7
.end method


# virtual methods
.method public blacklist add(Landroid/os/Message;)V
    .registers 4

    .line 181
    invoke-direct {p0}, Landroid/os/MessageHeap;->maybeGrow()V

    .line 183
    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageHeap;->mNumElements:I

    .line 184
    iput v0, p1, Landroid/os/Message;->heapIndex:I

    .line 185
    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aput-object p1, v1, v0

    .line 189
    invoke-direct {p0, v0}, Landroid/os/MessageHeap;->siftUp(I)Z

    .line 190
    return-void
.end method

.method public blacklist capacity()I
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    array-length v0, v0

    return v0
.end method

.method blacklist getMessageAt(I)Landroid/os/Message;
    .registers 3

    .line 80
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 76
    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist maybeShrink()V
    .registers 6

    .line 193
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    array-length v0, v0

    .line 194
    iget v1, p0, Landroid/os/MessageHeap;->mNumElements:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 195
    move v3, v2

    .line 196
    :goto_c
    if-le v0, v1, :cond_15

    .line 197
    nop

    .line 198
    ushr-int/lit8 v3, v0, 0x1

    move v4, v3

    move v3, v0

    move v0, v4

    goto :goto_c

    .line 205
    :cond_15
    if-lt v3, v2, :cond_25

    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    if-gt v0, v3, :cond_25

    .line 209
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Message;

    .line 210
    iput-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    .line 217
    :cond_25
    return-void
.end method

.method public blacklist peek()Landroid/os/Message;
    .registers 3

    .line 238
    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    if-lez v0, :cond_a

    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method public blacklist poll()Landroid/os/Message;
    .registers 7

    .line 220
    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    const/4 v1, 0x0

    if-lez v0, :cond_30

    .line 221
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 222
    iget v3, p0, Landroid/os/MessageHeap;->mNumElements:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageHeap;->mNumElements:I

    .line 224
    iget-object v3, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    iget-object v4, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    iget v5, p0, Landroid/os/MessageHeap;->mNumElements:I

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    .line 225
    iget-object v3, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v3, v3, v2

    iput v2, v3, Landroid/os/Message;->heapIndex:I

    .line 226
    iget-object v3, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    iget v4, p0, Landroid/os/MessageHeap;->mNumElements:I

    aput-object v1, v3, v4

    .line 227
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->heapIndex:I

    .line 229
    invoke-direct {p0, v2}, Landroid/os/MessageHeap;->siftDown(I)V

    .line 231
    invoke-virtual {p0}, Landroid/os/MessageHeap;->maybeShrink()V

    .line 232
    return-object v0

    .line 234
    :cond_30
    return-object v1
.end method

.method public blacklist remove(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 242
    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    if-ge p1, v0, :cond_41

    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    if-eqz v0, :cond_41

    if-ltz p1, :cond_41

    .line 246
    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    .line 247
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v0, v0, p1

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->heapIndex:I

    .line 248
    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_21

    .line 249
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aput-object v1, v0, p1

    goto :goto_40

    .line 251
    :cond_21
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    iget-object v2, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    iget v3, p0, Landroid/os/MessageHeap;->mNumElements:I

    aget-object v2, v2, v3

    aput-object v2, v0, p1

    .line 252
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v0, v0, p1

    iput p1, v0, Landroid/os/Message;->heapIndex:I

    .line 253
    iget-object v0, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    iget v2, p0, Landroid/os/MessageHeap;->mNumElements:I

    aput-object v1, v0, v2

    .line 254
    invoke-direct {p0, p1}, Landroid/os/MessageHeap;->siftUp(I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 255
    invoke-direct {p0, p1}, Landroid/os/MessageHeap;->siftDown(I)V

    .line 259
    :cond_40
    :goto_40
    return-void

    .line 243
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " out of bounds: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Landroid/os/MessageHeap;->mNumElements:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeAll()V
    .registers 5

    .line 266
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroid/os/MessageHeap;->mNumElements:I

    if-ge v1, v2, :cond_10

    .line 267
    iget-object v2, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v2, v2, v1

    const/4 v3, -0x1

    iput v3, v2, Landroid/os/Message;->heapIndex:I

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 269
    :cond_10
    const/16 v1, 0x10

    new-array v1, v1, [Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    .line 270
    iput v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    .line 271
    return-void
.end method

.method public blacklist removeMessage(Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 262
    iget p1, p1, Landroid/os/Message;->heapIndex:I

    invoke-virtual {p0, p1}, Landroid/os/MessageHeap;->remove(I)V

    .line 263
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/os/MessageHeap;->mNumElements:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    const-string v1, "MessageHeap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget v1, p0, Landroid/os/MessageHeap;->mNumElements:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, " mHeap.length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v1, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const/4 v1, 0x0

    :goto_1b
    iget v2, p0, Landroid/os/MessageHeap;->mNumElements:I

    if-ge v1, v2, :cond_56

    .line 281
    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string v2, "]\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v2, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v2, v2, v1

    iget-wide v2, v2, Landroid/os/Message;->when:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    const-string v2, " seq: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v2, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v2, v2, v1

    iget-wide v2, v2, Landroid/os/Message;->insertSeq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 287
    const-string v2, " async: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v2, p0, Landroid/os/MessageHeap;->mHeap:[Landroid/os/Message;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 290
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist verify()Z
    .registers 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 355
    const-string v0, "MessageHeap"

    invoke-direct {p0, v0}, Landroid/os/MessageHeap;->checkDanglingReferences(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 356
    return v1

    .line 358
    :cond_a
    invoke-direct {p0, v1}, Landroid/os/MessageHeap;->verify(I)Z

    move-result v0

    return v0
.end method
