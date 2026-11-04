.class public Lcom/android/internal/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler;,
        Lcom/android/internal/util/StateMachine$LogRecords;,
        Lcom/android/internal/util/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final blacklist HANDLED:Z = true

.field public static final blacklist NOT_HANDLED:Z = false

.field private static final blacklist SM_INIT_CMD:I = -0x2

.field private static final blacklist SM_QUIT_CMD:I = -0x1


# instance fields
.field private blacklist mName:Ljava/lang/String;

.field private blacklist mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

.field private blacklist mSmThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmName(Lcom/android/internal/util/StateMachine;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmThread(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmHandler(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmThread(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 3

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1317
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    .line 1318
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1319
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1321
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1322
    return-void
.end method

.method protected constructor greylist-max-r <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 3

    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1341
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1342
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 3

    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1332
    return-void
.end method

.method private blacklist initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 4

    .line 1306
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    .line 1307
    new-instance p1, Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine-IA;)V

    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1308
    return-void
.end method


# virtual methods
.method public blacklist addLogRec(Ljava/lang/String;)V
    .registers 10

    .line 1579
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1580
    if-nez v0, :cond_5

    return-void

    .line 1581
    :cond_5
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentMessage(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmStateStack(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmStateStackTopIndex(Lcom/android/internal/util/StateMachine$SmHandler;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v6, v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDestState(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    .line 1583
    return-void
.end method

.method public final greylist-max-r addState(Lcom/android/internal/util/State;)V
    .registers 4

    .line 1374
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$maddState(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1375
    return-void
.end method

.method public final blacklist addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .registers 4

    .line 1365
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$maddState(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1366
    return-void
.end method

.method public final blacklist copyLogRecs()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .line 1562
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1563
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1564
    if-eqz v1, :cond_25

    .line 1565
    invoke-static {v1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->-$$Nest$fgetmLogRecVector(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/StateMachine$LogRec;

    .line 1566
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1567
    goto :goto_15

    .line 1569
    :cond_25
    return-object v0
.end method

.method public final blacklist deferMessage(Landroid/os/Message;)V
    .registers 3

    .line 1456
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mdeferMessage(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V

    .line 1457
    return-void
.end method

.method public blacklist dispatchMessage(I)V
    .registers 2

    .line 1722
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->dispatchMessage(Landroid/os/Message;)V

    .line 1723
    return-void
.end method

.method public blacklist dispatchMessage(II)V
    .registers 3

    .line 1732
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->dispatchMessage(Landroid/os/Message;)V

    .line 1733
    return-void
.end method

.method public blacklist dispatchMessage(III)V
    .registers 4

    .line 1737
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->dispatchMessage(Landroid/os/Message;)V

    .line 1738
    return-void
.end method

.method public blacklist dispatchMessage(IIILjava/lang/Object;)V
    .registers 5

    .line 1742
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->dispatchMessage(Landroid/os/Message;)V

    .line 1743
    return-void
.end method

.method public blacklist dispatchMessage(ILjava/lang/Object;)V
    .registers 3

    .line 1727
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->dispatchMessage(Landroid/os/Message;)V

    .line 1728
    return-void
.end method

.method public blacklist dispatchMessage(Landroid/os/Message;)V
    .registers 5

    .line 1752
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1753
    if-eqz v0, :cond_1a

    .line 1756
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_12

    .line 1760
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->dispatchMessage(Landroid/os/Message;)V

    .line 1761
    return-void

    .line 1757
    :cond_12
    new-instance p1, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Must be called on StateMachine looper"

    invoke-direct {p1, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1754
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "State machine has quit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 2177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " total records="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    const/4 p1, 0x0

    :goto_35
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecSize()I

    move-result p3

    if-ge p1, p3, :cond_65

    .line 2180
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " rec["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "]: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2179
    add-int/lit8 p1, p1, 0x1

    goto :goto_35

    .line 2183
    :cond_65
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    .line 2184
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "curState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-nez p1, :cond_79

    const-string p1, "<QUIT>"

    goto :goto_7d

    :cond_79
    invoke-interface {p1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_7d
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2185
    return-void
.end method

.method public final blacklist getCurrentMessage()Landroid/os/Message;
    .registers 2

    .line 1401
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1402
    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1403
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentMessage(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getCurrentState()Lcom/android/internal/util/IState;
    .registers 2

    .line 1411
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1412
    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1413
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 1614
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object v0
.end method

.method public final blacklist getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;
    .registers 3

    .line 1553
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1554
    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 1555
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->get(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist getLogRecCount()I
    .registers 2

    .line 1543
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1544
    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1545
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->count()I

    move-result v0

    return v0
.end method

.method public final blacklist getLogRecMaxSize()I
    .registers 2

    .line 1533
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1534
    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1535
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->-$$Nest$fgetmMaxSize(Lcom/android/internal/util/StateMachine$LogRecords;)I

    move-result v0

    return v0
.end method

.method public final blacklist getLogRecSize()I
    .registers 2

    .line 1522
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1523
    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1524
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I

    move-result v0

    return v0
.end method

.method protected blacklist getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 2

    .line 1600
    const-string p1, ""

    return-object p1
.end method

.method public final blacklist getName()Ljava/lang/String;
    .registers 2

    .line 1496
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getWhatToString(I)Ljava/lang/String;
    .registers 2

    .line 1607
    const/4 p1, 0x0

    return-object p1
.end method

.method protected blacklist haltedProcessMessage(Landroid/os/Message;)V
    .registers 2

    .line 1473
    return-void
.end method

.method protected final blacklist hasDeferredMessages(I)Z
    .registers 5

    .line 2040
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2041
    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2043
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDeferredMessages(Lcom/android/internal/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2044
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2045
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 2046
    iget v2, v2, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_20

    const/4 p1, 0x1

    return p1

    .line 2047
    :cond_20
    goto :goto_e

    .line 2049
    :cond_21
    return v1
.end method

.method protected final blacklist hasMessages(I)Z
    .registers 3

    .line 2057
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2058
    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2060
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public blacklist isDbg()Z
    .registers 2

    .line 2121
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2122
    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2124
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$misDbg(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    return v0
.end method

.method protected final blacklist isQuit(Landroid/os/Message;)Z
    .registers 3

    .line 2069
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2070
    if-nez v0, :cond_d

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1

    .line 2072
    :cond_d
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$misQuit(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 3

    .line 2214
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    return-void
.end method

.method protected blacklist logAndAddLogRec(Ljava/lang/String;)V
    .registers 2

    .line 2204
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addLogRec(Ljava/lang/String;)V

    .line 2205
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 2206
    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 3

    .line 2223
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 3

    .line 2259
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2269
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2270
    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .registers 3

    .line 2241
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .registers 3

    .line 2232
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .registers 3

    .line 2250
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    return-void
.end method

.method public final blacklist obtainMessage()Landroid/os/Message;
    .registers 2

    .line 1628
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist obtainMessage(I)Landroid/os/Message;
    .registers 3

    .line 1643
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist obtainMessage(II)Landroid/os/Message;
    .registers 5

    .line 1678
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final greylist obtainMessage(III)Landroid/os/Message;
    .registers 5

    .line 1697
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final greylist-max-r obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6

    .line 1717
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4

    .line 1660
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onHalting()V
    .registers 1

    .line 1481
    return-void
.end method

.method protected blacklist onPostHandleMessage(Landroid/os/Message;)V
    .registers 2

    .line 1357
    return-void
.end method

.method protected blacklist onPreHandleMessage(Landroid/os/Message;)V
    .registers 2

    .line 1349
    return-void
.end method

.method protected blacklist onQuitting()V
    .registers 1

    .line 1490
    return-void
.end method

.method public final blacklist quit()V
    .registers 2

    .line 2080
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2081
    if-nez v0, :cond_5

    return-void

    .line 2083
    :cond_5
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mquit(Lcom/android/internal/util/StateMachine$SmHandler;)V

    .line 2084
    return-void
.end method

.method public final blacklist quitNow()V
    .registers 2

    .line 2113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->quitNow(Z)V

    .line 2114
    return-void
.end method

.method public final blacklist quitNow(Z)V
    .registers 5

    .line 2094
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2095
    if-nez v0, :cond_f

    .line 2096
    if-eqz p1, :cond_7

    .line 2099
    return-void

    .line 2097
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "State machine has quit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2102
    :cond_f
    if-nez p1, :cond_24

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    goto :goto_24

    .line 2103
    :cond_1c
    new-instance p1, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Must be called on StateMachine looper"

    invoke-direct {p1, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2106
    :cond_24
    :goto_24
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mquitNow(Lcom/android/internal/util/StateMachine$SmHandler;Z)V

    .line 2107
    return-void
.end method

.method protected blacklist recordLogRec(Landroid/os/Message;)Z
    .registers 2

    .line 1589
    const/4 p1, 0x1

    return p1
.end method

.method protected final blacklist removeDeferredMessages(I)V
    .registers 4

    .line 2026
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2027
    if-nez v0, :cond_5

    return-void

    .line 2029
    :cond_5
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDeferredMessages(Lcom/android/internal/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2030
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2031
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 2032
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, p1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2033
    :cond_20
    goto :goto_d

    .line 2034
    :cond_21
    return-void
.end method

.method protected final blacklist removeMessages(I)V
    .registers 3

    .line 2016
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2017
    if-nez v0, :cond_5

    return-void

    .line 2019
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->removeMessages(I)V

    .line 2020
    return-void
.end method

.method public final blacklist removeState(Lcom/android/internal/util/State;)V
    .registers 3

    .line 1382
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mremoveState(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    .line 1383
    return-void
.end method

.method public greylist sendMessage(I)V
    .registers 3

    .line 1771
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1772
    if-nez v0, :cond_5

    return-void

    .line 1774
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1775
    return-void
.end method

.method public greylist-max-r sendMessage(II)V
    .registers 4

    .line 1799
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1800
    if-nez v0, :cond_5

    return-void

    .line 1802
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1803
    return-void
.end method

.method public blacklist sendMessage(III)V
    .registers 5

    .line 1812
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1813
    if-nez v0, :cond_5

    return-void

    .line 1815
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1816
    return-void
.end method

.method public greylist-max-r sendMessage(IIILjava/lang/Object;)V
    .registers 6

    .line 1826
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1827
    if-nez v0, :cond_5

    return-void

    .line 1829
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1830
    return-void
.end method

.method public greylist sendMessage(ILjava/lang/Object;)V
    .registers 4

    .line 1785
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1786
    if-nez v0, :cond_5

    return-void

    .line 1788
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1789
    return-void
.end method

.method public greylist sendMessage(Landroid/os/Message;)V
    .registers 3

    .line 1840
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1841
    if-nez v0, :cond_5

    return-void

    .line 1843
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1844
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(I)V
    .registers 3

    .line 1933
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1934
    if-nez v0, :cond_5

    return-void

    .line 1936
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1937
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(II)V
    .registers 4

    .line 1961
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1962
    if-nez v0, :cond_5

    return-void

    .line 1964
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1965
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(III)V
    .registers 5

    .line 1976
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1977
    if-nez v0, :cond_5

    return-void

    .line 1979
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1980
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .registers 6

    .line 1990
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1991
    if-nez v0, :cond_5

    return-void

    .line 1993
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1994
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .registers 4

    .line 1947
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1948
    if-nez v0, :cond_5

    return-void

    .line 1950
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1951
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .registers 3

    .line 2004
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2005
    if-nez v0, :cond_5

    return-void

    .line 2007
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2008
    return-void
.end method

.method public blacklist sendMessageDelayed(IIIJ)V
    .registers 7

    .line 1892
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1893
    if-nez v0, :cond_5

    return-void

    .line 1895
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p4, p5}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1896
    return-void
.end method

.method public blacklist sendMessageDelayed(IIILjava/lang/Object;J)V
    .registers 8

    .line 1906
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1907
    if-nez v0, :cond_5

    return-void

    .line 1909
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p5, p6}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1910
    return-void
.end method

.method public blacklist sendMessageDelayed(IIJ)V
    .registers 6

    .line 1879
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1880
    if-nez v0, :cond_5

    return-void

    .line 1882
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1883
    return-void
.end method

.method public blacklist sendMessageDelayed(IJ)V
    .registers 5

    .line 1853
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1854
    if-nez v0, :cond_5

    return-void

    .line 1856
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1857
    return-void
.end method

.method public blacklist sendMessageDelayed(ILjava/lang/Object;J)V
    .registers 6

    .line 1866
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1867
    if-nez v0, :cond_5

    return-void

    .line 1869
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1870
    return-void
.end method

.method public blacklist sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5

    .line 1919
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1920
    if-nez v0, :cond_5

    return-void

    .line 1922
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1923
    return-void
.end method

.method public blacklist setDbg(Z)V
    .registers 3

    .line 2134
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2135
    if-nez v0, :cond_5

    return-void

    .line 2137
    :cond_5
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$msetDbg(Lcom/android/internal/util/StateMachine$SmHandler;Z)V

    .line 2138
    return-void
.end method

.method public final greylist-max-r setInitialState(Lcom/android/internal/util/State;)V
    .registers 3

    .line 1393
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$msetInitialState(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    .line 1394
    return-void
.end method

.method public final blacklist setLogOnlyTransitions(Z)V
    .registers 3

    .line 1514
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    .line 1515
    return-void
.end method

.method public final blacklist setLogRecSize(I)V
    .registers 3

    .line 1505
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setSize(I)V

    .line 1506
    return-void
.end method

.method public greylist-max-r start()V
    .registers 2

    .line 2145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->start(Z)V

    .line 2146
    return-void
.end method

.method protected blacklist start(Z)V
    .registers 5

    .line 2157
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2158
    if-nez v0, :cond_5

    return-void

    .line 2160
    :cond_5
    if-nez p1, :cond_1a

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_12

    goto :goto_1a

    .line 2161
    :cond_12
    new-instance p1, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Must be called on StateMachine looper"

    invoke-direct {p1, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2165
    :cond_1a
    :goto_1a
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mcompleteConstruction(Lcom/android/internal/util/StateMachine$SmHandler;Z)V

    .line 2166
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2189
    nop

    .line 2191
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_10
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_f} :catch_10

    .line 2194
    goto :goto_13

    .line 2192
    :catch_10
    move-exception v0

    const-string v0, "null"

    .line 2195
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-r transitionTo(Lcom/android/internal/util/IState;)V
    .registers 3

    .line 1432
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mtransitionTo(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1433
    return-void
.end method

.method public final blacklist transitionToHaltingState()V
    .registers 3

    .line 1443
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmHaltingState(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mtransitionTo(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1444
    return-void
.end method

.method protected blacklist unhandledMessage(Landroid/os/Message;)V
    .registers 4

    .line 1465
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDbg(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    .line 1466
    :cond_20
    return-void
.end method
