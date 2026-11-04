.class public final Landroid/os/MessageStack;
.super Ljava/lang/Object;
.source "MessageStack.java"


# static fields
.field private static final blacklist QUITTING_NODE_OBJ:Ljava/lang/Object;

.field private static final blacklist TAG:Ljava/lang/String; = "MessageStack"

.field private static final blacklist sFreelistHead:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sTop:Ljava/lang/invoke/VarHandle;


# instance fields
.field private final blacklist mAsyncHeap:Landroid/os/MessageHeap;

.field private volatile blacklist mFreelistHeadValue:Landroid/os/Message;

.field private blacklist mLooperProcessed:Landroid/os/Message;

.field private final blacklist mSyncHeap:Landroid/os/MessageHeap;

.field private volatile blacklist mTopValue:Landroid/os/Message;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 53
    const-class v0, Landroid/os/MessageStack;

    :try_start_2
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 54
    const-string v2, "mTopValue"

    const-class v3, Landroid/os/Message;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    .line 56
    const-string v2, "mFreelistHeadValue"

    const-class v3, Landroid/os/Message;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Landroid/os/MessageStack;->sFreelistHead:Ljava/lang/invoke/VarHandle;
    :try_end_1a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_1a} :catch_23

    .line 60
    nop

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/MessageStack;->QUITTING_NODE_OBJ:Ljava/lang/Object;

    return-void

    .line 58
    :catch_23
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MessageStack;->mTopValue:Landroid/os/Message;

    .line 41
    iput-object v0, p0, Landroid/os/MessageStack;->mFreelistHeadValue:Landroid/os/Message;

    .line 44
    new-instance v1, Landroid/os/MessageHeap;

    invoke-direct {v1}, Landroid/os/MessageHeap;-><init>()V

    iput-object v1, p0, Landroid/os/MessageStack;->mSyncHeap:Landroid/os/MessageHeap;

    .line 45
    new-instance v1, Landroid/os/MessageHeap;

    invoke-direct {v1}, Landroid/os/MessageHeap;-><init>()V

    iput-object v1, p0, Landroid/os/MessageStack;->mAsyncHeap:Landroid/os/MessageHeap;

    .line 49
    iput-object v0, p0, Landroid/os/MessageStack;->mLooperProcessed:Landroid/os/Message;

    return-void
.end method

.method private blacklist createBackLinks()V
    .registers 3

    .line 265
    sget-object v0, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v0

    .line 266
    :goto_7
    if-eqz v0, :cond_1a

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->prev:Landroid/os/Message;

    if-nez v1, :cond_1a

    .line 267
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->prev:Landroid/os/Message;

    .line 268
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_7

    .line 270
    :cond_1a
    return-void
.end method

.method private blacklist getHeap(Landroid/os/Message;)Landroid/os/MessageHeap;
    .registers 2

    .line 193
    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/os/MessageStack;->getHeap(Z)Landroid/os/MessageHeap;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getHeap(Z)Landroid/os/MessageHeap;
    .registers 2

    .line 189
    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/os/MessageStack;->mAsyncHeap:Landroid/os/MessageHeap;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Landroid/os/MessageStack;->mSyncHeap:Landroid/os/MessageHeap;

    :goto_7
    return-object p1
.end method

.method private blacklist isQuittingMessage(Landroid/os/Message;)Z
    .registers 3

    .line 66
    if-eqz p1, :cond_a

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Landroid/os/MessageStack;->QUITTING_NODE_OBJ:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private blacklist maybeRemoveFromHeap(Landroid/os/Message;)V
    .registers 3

    .line 275
    iget v0, p1, Landroid/os/Message;->heapIndex:I

    if-ltz v0, :cond_b

    .line 276
    invoke-direct {p0, p1}, Landroid/os/MessageStack;->getHeap(Landroid/os/Message;)Landroid/os/MessageHeap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageHeap;->removeMessage(Landroid/os/Message;)V

    .line 278
    :cond_b
    return-void
.end method

.method private blacklist messageMatches(Landroid/os/Message;Landroid/os/Message$MessageCompare;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 10

    .line 127
    invoke-direct {p0, p1}, Landroid/os/MessageStack;->isQuittingMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 128
    invoke-virtual {p1}, Landroid/os/Message;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 129
    move-object p0, p2

    move-object p2, p3

    move p3, p4

    move-object p4, p5

    move-object p5, p6

    move-wide p6, p7

    invoke-virtual/range {p0 .. p7}, Landroid/os/Message$MessageCompare;->compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 127
    :goto_1b
    return p1
.end method

.method private blacklist removeFromStack(Landroid/os/Message;)V
    .registers 5

    .line 285
    iget-object v0, p0, Landroid/os/MessageStack;->mLooperProcessed:Landroid/os/Message;

    if-ne p1, v0, :cond_a

    .line 286
    iget-object v0, p0, Landroid/os/MessageStack;->mLooperProcessed:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageStack;->mLooperProcessed:Landroid/os/Message;

    .line 290
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->prev:Landroid/os/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 294
    sget-object v0, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    iget-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-polymorphic {v0, p0, p1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageStack;Landroid/os/Message;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 295
    invoke-static {p1}, Landroid/os/MessageStack;->unlinkFromNext(Landroid/os/Message;)V

    .line 296
    iput-object v1, p1, Landroid/os/Message;->prev:Landroid/os/Message;

    .line 297
    return-void

    .line 302
    :cond_20
    invoke-direct {p0}, Landroid/os/MessageStack;->createBackLinks()V

    .line 304
    :cond_23
    invoke-static {p1}, Landroid/os/MessageStack;->unlinkFromNext(Landroid/os/Message;)V

    .line 305
    invoke-static {p1}, Landroid/os/MessageStack;->unlinkFromPrev(Landroid/os/Message;)V

    .line 306
    iput-object v1, p1, Landroid/os/Message;->prev:Landroid/os/Message;

    .line 307
    return-void
.end method

.method private static blacklist unlinkFromNext(Landroid/os/Message;)V
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v0, :cond_a

    .line 311
    iget-object v0, p0, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object p0, p0, Landroid/os/Message;->prev:Landroid/os/Message;

    iput-object p0, v0, Landroid/os/Message;->prev:Landroid/os/Message;

    .line 313
    :cond_a
    return-void
.end method

.method private static blacklist unlinkFromPrev(Landroid/os/Message;)V
    .registers 2

    .line 316
    iget-object v0, p0, Landroid/os/Message;->prev:Landroid/os/Message;

    if-eqz v0, :cond_a

    .line 317
    iget-object v0, p0, Landroid/os/Message;->prev:Landroid/os/Message;

    iget-object p0, p0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 319
    :cond_a
    return-void
.end method


# virtual methods
.method public blacklist combinedHeapSizesForTest()I
    .registers 3

    .line 395
    iget-object v0, p0, Landroid/os/MessageStack;->mSyncHeap:Landroid/os/MessageHeap;

    invoke-virtual {v0}, Landroid/os/MessageHeap;->size()I

    move-result v0

    iget-object v1, p0, Landroid/os/MessageStack;->mAsyncHeap:Landroid/os/MessageHeap;

    invoke-virtual {v1}, Landroid/os/MessageHeap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist drainFreelist()V
    .registers 4

    .line 231
    sget-object v0, Landroid/os/MessageStack;->sFreelistHead:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    invoke-polymorphic {v0, p0, v1}, Ljava/lang/invoke/VarHandle;->getAndSetAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;Ljava/lang/Void;)Landroid/os/Message;

    move-result-object v0

    .line 232
    :goto_8
    if-eqz v0, :cond_17

    .line 233
    iget-object v2, v0, Landroid/os/Message;->nextFree:Landroid/os/Message;

    .line 234
    iput-object v1, v0, Landroid/os/Message;->nextFree:Landroid/os/Message;

    .line 235
    invoke-direct {p0, v0}, Landroid/os/MessageStack;->maybeRemoveFromHeap(Landroid/os/Message;)V

    .line 236
    invoke-direct {p0, v0}, Landroid/os/MessageStack;->removeFromStack(Landroid/os/Message;)V

    .line 237
    nop

    .line 238
    move-object v0, v2

    goto :goto_8

    .line 239
    :cond_17
    return-void
.end method

.method blacklist dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)I
    .registers 10
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 401
    nop

    .line 402
    sget-object v2, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    .line 403
    :goto_d
    if-eqz v2, :cond_42

    .line 404
    if-eqz p3, :cond_15

    iget-object v4, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v4, :cond_3d

    .line 405
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 407
    :cond_3d
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 410
    :cond_42
    return v3
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 415
    sget-object v0, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v0

    .line 416
    :goto_7
    if-eqz v0, :cond_14

    .line 417
    const-wide v1, 0x20b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 418
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_7

    .line 420
    :cond_14
    return-void
.end method

.method public blacklist freelistSizeForTest()I
    .registers 3

    .line 382
    nop

    .line 383
    sget-object v0, Landroid/os/MessageStack;->sFreelistHead:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 384
    :goto_9
    if-eqz v0, :cond_10

    .line 385
    add-int/lit8 v1, v1, 0x1

    .line 386
    iget-object v0, v0, Landroid/os/Message;->nextFree:Landroid/os/Message;

    goto :goto_9

    .line 388
    :cond_10
    return v1
.end method

.method public blacklist getQuittingTimestamp()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 115
    sget-object v0, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Landroid/os/MessageStack;->isQuittingMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 119
    iget-wide v0, v0, Landroid/os/Message;->when:J

    return-wide v0

    .line 117
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist hasMessages(Landroid/os/Message$MessageCompare;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 18

    .line 176
    sget-object v0, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v0

    move-object v2, v0

    .line 178
    :goto_8
    if-eqz v2, :cond_1d

    .line 180
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/os/MessageStack;->messageMatches(Landroid/os/Message;Landroid/os/Message$MessageCompare;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 181
    const/4 p1, 0x1

    return p1

    .line 183
    :cond_1a
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_8

    .line 185
    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist heapSweep()V
    .registers 4

    .line 200
    sget-object v0, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_19

    invoke-direct {p0, v0}, Landroid/os/MessageStack;->isQuittingMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 203
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_17

    .line 204
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->prev:Landroid/os/Message;

    .line 206
    :cond_17
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 209
    :cond_19
    iget-object v1, p0, Landroid/os/MessageStack;->mLooperProcessed:Landroid/os/Message;

    .line 210
    iput-object v0, p0, Landroid/os/MessageStack;->mLooperProcessed:Landroid/os/Message;

    .line 212
    :goto_1d
    if-eqz v0, :cond_39

    if-eq v0, v1, :cond_39

    .line 213
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v2, :cond_29

    .line 214
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, v2, Landroid/os/Message;->prev:Landroid/os/Message;

    .line 218
    :cond_29
    invoke-virtual {v0}, Landroid/os/Message;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_36

    .line 219
    invoke-direct {p0, v0}, Landroid/os/MessageStack;->getHeap(Landroid/os/Message;)Landroid/os/MessageHeap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/MessageHeap;->add(Landroid/os/Message;)V

    .line 221
    :cond_36
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1d

    .line 225
    :cond_39
    return-void
.end method

.method public blacklist isQuitting()Z
    .registers 2

    .line 107
    sget-object v0, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/MessageStack;->isQuittingMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public blacklist moveMatchingToFreelist(Landroid/os/Message$MessageCompare;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 20

    .line 138
    sget-object v0, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v0

    .line 139
    nop

    .line 140
    const/4 v1, 0x0

    move-object v3, v0

    move-object v0, v1

    .line 142
    :goto_b
    if-eqz v3, :cond_2f

    .line 143
    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Landroid/os/MessageStack;->messageMatches(Landroid/os/Message;Landroid/os/Message$MessageCompare;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 144
    invoke-virtual {v3}, Landroid/os/Message;->markRemoved()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 145
    if-nez v1, :cond_26

    .line 146
    move-object v1, v3

    .line 148
    :cond_26
    invoke-virtual {v3}, Landroid/os/Message;->clearReferenceFields()V

    .line 150
    iput-object v0, v3, Landroid/os/Message;->nextFree:Landroid/os/Message;

    .line 151
    move-object v0, v3

    .line 153
    :cond_2c
    iget-object v3, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_b

    .line 156
    :cond_2f
    if-eqz v1, :cond_40

    .line 159
    :cond_31
    iget-object p1, p0, Landroid/os/MessageStack;->mFreelistHeadValue:Landroid/os/Message;

    .line 160
    iput-object p1, v1, Landroid/os/Message;->nextFree:Landroid/os/Message;

    .line 162
    sget-object p2, Landroid/os/MessageStack;->sFreelistHead:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {p2, p0, p1, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageStack;Landroid/os/Message;Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 164
    const/4 p1, 0x1

    return p1

    .line 167
    :cond_40
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist peek(Z)Landroid/os/Message;
    .registers 4

    .line 328
    invoke-direct {p0, p1}, Landroid/os/MessageStack;->getHeap(Z)Landroid/os/MessageHeap;

    move-result-object p1

    .line 330
    :goto_4
    invoke-virtual {p1}, Landroid/os/MessageHeap;->peek()Landroid/os/Message;

    move-result-object v0

    .line 331
    if-nez v0, :cond_c

    .line 332
    const/4 p1, 0x0

    return-object p1

    .line 334
    :cond_c
    invoke-virtual {v0}, Landroid/os/Message;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_13

    .line 335
    return-object v0

    .line 337
    :cond_13
    invoke-virtual {p1, v0}, Landroid/os/MessageHeap;->removeMessage(Landroid/os/Message;)V

    .line 338
    goto :goto_4
.end method

.method blacklist peekLastMessageForTest()Landroid/os/Message;
    .registers 7

    .line 352
    nop

    .line 353
    sget-object v0, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 354
    :goto_9
    if-eqz v0, :cond_1f

    .line 355
    if-eqz v1, :cond_1b

    iget-wide v2, v0, Landroid/os/Message;->when:J

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    invoke-virtual {v1}, Landroid/os/Message;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 356
    :cond_1b
    move-object v1, v0

    .line 358
    :cond_1c
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_9

    .line 360
    :cond_1f
    return-object v1
.end method

.method public blacklist pop(Z)Landroid/os/Message;
    .registers 3

    .line 248
    invoke-direct {p0, p1}, Landroid/os/MessageStack;->getHeap(Z)Landroid/os/MessageHeap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/MessageHeap;->poll()Landroid/os/Message;

    move-result-object p1

    .line 249
    if-eqz p1, :cond_15

    .line 253
    invoke-virtual {p1}, Landroid/os/Message;->markRemoved()Z

    move-result v0

    if-nez v0, :cond_12

    .line 254
    const/4 p1, 0x0

    return-object p1

    .line 256
    :cond_12
    invoke-direct {p0, p1}, Landroid/os/MessageStack;->removeFromStack(Landroid/os/Message;)V

    .line 258
    :cond_15
    return-object p1
.end method

.method public blacklist pushMessage(Landroid/os/Message;)Z
    .registers 4

    .line 76
    nop

    :cond_1
    iget-object v0, p0, Landroid/os/MessageStack;->mTopValue:Landroid/os/Message;

    .line 77
    invoke-direct {p0, v0}, Landroid/os/MessageStack;->isQuittingMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 78
    const/4 p1, 0x0

    return p1

    .line 80
    :cond_b
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 81
    sget-object v1, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p0, v0, p1}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetRelease([Ljava/lang/Object;)Z, (Landroid/os/MessageStack;Landroid/os/Message;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist pushQuitting(J)Z
    .registers 5

    .line 91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 92
    sget-object v1, Landroid/os/MessageStack;->QUITTING_NODE_OBJ:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    iput-wide p1, v0, Landroid/os/Message;->when:J

    .line 94
    invoke-virtual {p0, v0}, Landroid/os/MessageStack;->pushMessage(Landroid/os/Message;)Z

    move-result p1

    .line 95
    if-nez p1, :cond_13

    .line 96
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 99
    :cond_13
    return p1
.end method

.method public blacklist remove(Landroid/os/Message;)V
    .registers 2

    .line 347
    invoke-direct {p0, p1}, Landroid/os/MessageStack;->maybeRemoveFromHeap(Landroid/os/Message;)V

    .line 348
    invoke-direct {p0, p1}, Landroid/os/MessageStack;->removeFromStack(Landroid/os/Message;)V

    .line 349
    return-void
.end method

.method public blacklist sizeForTest()I
    .registers 4

    .line 367
    nop

    .line 368
    sget-object v0, Landroid/os/MessageStack;->sTop:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageStack;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 369
    :goto_9
    if-eqz v0, :cond_16

    .line 370
    invoke-virtual {v0}, Landroid/os/Message;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_13

    .line 371
    add-int/lit8 v1, v1, 0x1

    .line 373
    :cond_13
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_9

    .line 375
    :cond_16
    return v1
.end method
