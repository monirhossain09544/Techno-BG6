.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$TimedParkStateNode;,
        Landroid/os/MessageQueue$StateNode;,
        Landroid/os/MessageQueue$StackNode;,
        Landroid/os/MessageQueue$EnqueueOrder;,
        Landroid/os/MessageQueue$MessageCounts;,
        Landroid/os/MessageQueue$IdleHandler;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$QuittingNode;,
        Landroid/os/MessageQueue$FindLastMessage;,
        Landroid/os/MessageQueue$MessageNode;,
        Landroid/os/MessageQueue$StackNodeType;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist MPTR_TEARDOWN_MASK:J = -0x8000000000000000L

.field private static final blacklist STACK_NODE_ACTIVE:I = 0x1

.field private static final blacklist STACK_NODE_MESSAGE:I = 0x0

.field private static final blacklist STACK_NODE_PARKED:I = 0x2

.field private static final blacklist STACK_NODE_QUITTING:I = 0x4

.field private static final blacklist STACK_NODE_TIMEDPARK:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MessageQueue"

.field private static final blacklist TAG_C:Ljava/lang/String; = "ConcurrentMessageQueue"

.field private static final blacklist TAG_L:Ljava/lang/String; = "LegacyMessageQueue"

.field private static final blacklist mMessagesDelivered:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final blacklist sEnqueueOrder:Landroid/os/MessageQueue$EnqueueOrder;

.field private static blacklist sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

.field private static blacklist sMptrRefCount:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sNextInsertSeq:Ljava/lang/invoke/VarHandle;

.field private static blacklist sSkipEpollWaitForZeroTimeoutInitialized:Z

.field private static final blacklist sStackStateActive:Landroid/os/MessageQueue$StateNode;

.field private static final blacklist sStackStateParked:Landroid/os/MessageQueue$StateNode;

.field private static final blacklist sState:Ljava/lang/invoke/VarHandle;

.field private static blacklist sUseConcurrent:Z

.field private static blacklist sUseConcurrentInitialized:Z


# instance fields
.field private blacklist mAsyncMessageCount:I

.field private final blacklist mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlocked:Z

.field private final blacklist mDrainCompleted:Ljava/util/concurrent/locks/Condition;

.field private final blacklist mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private greylist-max-o mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFileDescriptorRecordsLock:Ljava/lang/Object;

.field private final greylist mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdleHandlersLock:Ljava/lang/Object;

.field private blacklist mLast:Landroid/os/Message;

.field private final blacklist mLooperThread:Ljava/lang/Thread;

.field private final blacklist mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

.field private blacklist mMessageDirectlyQueued:Z

.field greylist mMessages:Landroid/os/Message;

.field private volatile blacklist mMptrRefCountValue:J

.field private greylist mNextBarrierToken:I

.field private final blacklist mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile blacklist mNextFrontInsertSeqValue:J

.field private volatile blacklist mNextInsertSeqValue:J

.field private blacklist mNextIsDrainingStack:Z

.field private blacklist mNextPollTimeoutMillis:I

.field private greylist-max-o mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private final blacklist mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPtr:J

.field private final greylist mQuitAllowed:Z

.field private greylist-max-o mQuitting:Z

.field private final blacklist mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

.field private volatile blacklist mStateValue:Landroid/os/MessageQueue$StackNode;

.field private final blacklist mThreadName:Ljava/lang/String;

.field private final blacklist mTid:J

.field private blacklist mWorkerShouldQuit:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 121
    const-class v0, Landroid/os/MessageQueue;

    const/4 v1, 0x0

    sput-boolean v1, Landroid/os/MessageQueue;->sUseConcurrentInitialized:Z

    .line 128
    sput-boolean v1, Landroid/os/MessageQueue;->sSkipEpollWaitForZeroTimeoutInitialized:Z

    .line 134
    const/4 v1, 0x0

    sput-object v1, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 303
    new-instance v1, Landroid/os/MessageQueue$EnqueueOrder;

    invoke-direct {v1}, Landroid/os/MessageQueue$EnqueueOrder;-><init>()V

    sput-object v1, Landroid/os/MessageQueue;->sEnqueueOrder:Landroid/os/MessageQueue$EnqueueOrder;

    .line 667
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v1, Landroid/os/MessageQueue;->mMessagesDelivered:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2616
    new-instance v1, Landroid/os/MessageQueue$StateNode;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/MessageQueue$StateNode;-><init>(I)V

    sput-object v1, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    .line 2617
    new-instance v1, Landroid/os/MessageQueue$StateNode;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/MessageQueue$StateNode;-><init>(I)V

    sput-object v1, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    .line 2658
    :try_start_28
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 2659
    const-string v2, "mStateValue"

    const-class v3, Landroid/os/MessageQueue$StackNode;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    .line 2661
    const-string v2, "mNextInsertSeqValue"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Landroid/os/MessageQueue;->sNextInsertSeq:Ljava/lang/invoke/VarHandle;

    .line 2663
    const-string v2, "mNextFrontInsertSeqValue"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Landroid/os/MessageQueue;->sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;

    .line 2665
    const-string v2, "mMptrRefCountValue"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Landroid/os/MessageQueue;->sMptrRefCount:Ljava/lang/invoke/VarHandle;
    :try_end_54
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_28 .. :try_end_54} :catch_56

    .line 2669
    nop

    .line 2670
    return-void

    .line 2667
    :catch_56
    move-exception v0

    .line 2668
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(Z)V
    .registers 6

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2618
    new-instance v0, Landroid/os/MessageQueue$TimedParkStateNode;

    invoke-direct {v0}, Landroid/os/MessageQueue$TimedParkStateNode;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    .line 2623
    sget-object v0, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    iput-object v0, p0, Landroid/os/MessageQueue;->mStateValue:Landroid/os/MessageQueue$StackNode;

    .line 2624
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    sget-object v1, Landroid/os/MessageQueue;->sEnqueueOrder:Landroid/os/MessageQueue$EnqueueOrder;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 2626
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    sget-object v1, Landroid/os/MessageQueue;->sEnqueueOrder:Landroid/os/MessageQueue$EnqueueOrder;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 2635
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mNextInsertSeqValue:J

    .line 2642
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/os/MessageQueue;->mNextFrontInsertSeqValue:J

    .line 2652
    iput-wide v0, p0, Landroid/os/MessageQueue;->mMptrRefCountValue:J

    .line 2853
    new-instance v0, Landroid/os/MessageQueue$MessageCounts;

    invoke-direct {v0}, Landroid/os/MessageQueue$MessageCounts;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    .line 2855
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    .line 2856
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    .line 2860
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2867
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2868
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    .line 2869
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    .line 154
    invoke-static {}, Landroid/os/MessageQueue;->getUseConcurrent()Z

    .line 155
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 156
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Landroid/os/MessageQueue;->mLooperThread:Ljava/lang/Thread;

    .line 158
    iget-object p1, p0, Landroid/os/MessageQueue;->mLooperThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    .line 159
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/os/MessageQueue;->mTid:J

    .line 160
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->setSkipEpollWaitForZeroTimeout(J)V

    .line 161
    return-void
.end method

.method private blacklist addIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4

    .line 354
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private blacklist addIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3

    .line 360
    monitor-enter p0

    .line 361
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    monitor-exit p0

    .line 363
    return-void

    .line 362
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private blacklist addOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 5

    .line 458
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 460
    monitor-exit v0

    .line 461
    return-void

    .line 460
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private blacklist addOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 4

    .line 466
    monitor-enter p0

    .line 467
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 468
    monitor-exit p0

    .line 469
    return-void

    .line 468
    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method private static blacklist computeUseConcurrent()Z
    .registers 4

    .line 176
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->useConcurrentMessageQueueInApps()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 180
    :try_start_8
    const-string/jumbo v0, "org.robolectric.Robolectric"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_e} :catch_f

    .line 182
    return v2

    .line 183
    :catch_f
    move-exception v0

    .line 185
    return v1

    .line 189
    :cond_11
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v0

    .line 190
    if-nez v0, :cond_18

    .line 192
    return v2

    .line 198
    :cond_18
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 201
    const-string/jumbo v3, "test"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "Test"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_35

    .line 204
    :cond_34
    return v1

    .line 202
    :cond_35
    :goto_35
    return v2

    .line 210
    :cond_36
    return v2
.end method

.method private blacklist concurrentWake()V
    .registers 3

    .line 2718
    invoke-direct {p0}, Landroid/os/MessageQueue;->incrementMptrRefs()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2720
    :try_start_6
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 2722
    invoke-direct {p0}, Landroid/os/MessageQueue;->decrementMptrRefs()V

    .line 2723
    goto :goto_14

    .line 2722
    :catchall_f
    move-exception v0

    invoke-direct {p0}, Landroid/os/MessageQueue;->decrementMptrRefs()V

    .line 2723
    throw v0

    .line 2725
    :cond_14
    :goto_14
    return-void
.end method

.method private blacklist decAndTraceMessageCount()V
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 234
    invoke-static {}, Landroid/os/PerfettoTrace;->isMQCategoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 235
    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    .line 237
    :cond_e
    return-void
.end method

.method private blacklist decrementMptrRefs()V
    .registers 5

    .line 2704
    sget-object v0, Landroid/os/MessageQueue;->sMptrRefCount:Ljava/lang/invoke/VarHandle;

    const/4 v1, -0x1

    invoke-polymorphic {v0, p0, v1}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;I)J

    move-result-wide v0

    .line 2706
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 2707
    iget-object v0, p0, Landroid/os/MessageQueue;->mLooperThread:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 2709
    :cond_16
    return-void
.end method

.method private greylist-max-r dispatchEvents(II)I
    .registers 8

    .line 595
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 596
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 597
    :try_start_8
    iget-object v2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 598
    if-nez v2, :cond_14

    .line 599
    monitor-exit v0

    return v1

    .line 602
    :cond_14
    iget v1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 603
    and-int/2addr p2, v1

    .line 604
    if-nez p2, :cond_1b

    .line 605
    monitor-exit v0

    return v1

    .line 608
    :cond_1b
    iget-object v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 609
    iget v4, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 610
    monitor-exit v0

    goto :goto_3e

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw p1

    .line 612
    :cond_24
    monitor-enter p0

    .line 613
    :try_start_25
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 614
    if-nez v2, :cond_32

    .line 615
    monitor-exit p0

    return v1

    .line 618
    :cond_32
    iget v1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 619
    and-int/2addr p2, v1

    .line 620
    if-nez p2, :cond_39

    .line 621
    monitor-exit p0

    return v1

    .line 624
    :cond_39
    iget-object v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 625
    iget v4, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 626
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_97

    .line 629
    :goto_3e
    iget-object v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v3, v0, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result p2

    .line 631
    if-eqz p2, :cond_48

    .line 632
    or-int/lit8 p2, p2, 0x4

    .line 637
    :cond_48
    if-eq p2, v1, :cond_96

    .line 638
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_73

    .line 639
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_51
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 641
    if-ltz p1, :cond_6e

    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_6e

    iget v1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v1, v4, :cond_6e

    .line 643
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 644
    if-nez p2, :cond_6e

    .line 645
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 648
    :cond_6e
    monitor-exit v0

    goto :goto_96

    :catchall_70
    move-exception p1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_51 .. :try_end_72} :catchall_70

    throw p1

    .line 650
    :cond_73
    monitor-enter p0

    .line 651
    :try_start_74
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 652
    if-ltz p1, :cond_91

    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_91

    iget v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v0, v4, :cond_91

    .line 654
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 655
    if-nez p2, :cond_91

    .line 656
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 659
    :cond_91
    monitor-exit p0

    goto :goto_96

    :catchall_93
    move-exception p1

    monitor-exit p0
    :try_end_95
    .catchall {:try_start_74 .. :try_end_95} :catchall_93

    throw p1

    .line 664
    :cond_96
    :goto_96
    return p2

    .line 626
    :catchall_97
    move-exception p1

    :try_start_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw p1
.end method

.method private greylist-max-o dispose()V
    .registers 5

    .line 290
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 291
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 292
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 294
    :cond_f
    return-void
.end method

.method private blacklist drainStack(Landroid/os/MessageQueue$StackNode;)V
    .registers 5

    .line 2434
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isQuittingNode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/os/MessageQueue$QuittingNode;

    goto :goto_c

    :cond_b
    move-object v0, v1

    .line 2435
    :goto_c
    if-eqz v0, :cond_14

    .line 2436
    iget-object p1, v0, Landroid/os/MessageQueue$QuittingNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2444
    iget-object v2, v0, Landroid/os/MessageQueue$QuittingNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    iput-object v2, v0, Landroid/os/MessageQueue$QuittingNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2446
    :cond_14
    :goto_14
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2447
    check-cast p1, Landroid/os/MessageQueue$MessageNode;

    .line 2448
    invoke-virtual {p1}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2449
    iget-object v0, p1, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->insertIntoPriorityQueue(Landroid/os/Message;)V

    .line 2451
    :cond_27
    nop

    .line 2452
    iget-object v0, p1, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2459
    iput-object v1, p1, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2460
    move-object p1, v0

    goto :goto_14

    .line 2461
    :cond_2e
    return-void
.end method

.method private blacklist dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/util/Printer;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "I)I"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2190
    nop

    .line 2191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2193
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 2194
    if-eqz p4, :cond_1c

    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p4, v4, :cond_46

    .line 2195
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2197
    :cond_46
    add-int/lit8 v2, v2, 0x1

    .line 2198
    goto :goto_a

    .line 2199
    :cond_49
    return v2
.end method

.method private blacklist dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/util/proto/ProtoOutputStream;",
            ")I"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2253
    nop

    .line 2254
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 2255
    const-wide v2, 0x20b00000001L

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2256
    add-int/lit8 v0, v0, 0x1

    .line 2257
    goto :goto_6

    .line 2258
    :cond_1d
    return v0
.end method

.method private blacklist enqueueMessageConcurrent(Landroid/os/Message;J)Z
    .registers 5

    .line 1443
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1447
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageUnchecked(Landroid/os/Message;J)Z

    move-result p1

    return p1

    .line 1444
    :cond_b
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " This message is already in use."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private blacklist enqueueMessageLegacy(Landroid/os/Message;J)Z
    .registers 11

    .line 1459
    monitor-enter p0

    .line 1460
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_98

    .line 1464
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1465
    invoke-static {p1}, Landroid/os/MessageQueue;->logDeadThread(Landroid/os/Message;)V

    .line 1466
    monitor-exit p0

    return v1

    .line 1469
    :cond_11
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 1470
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 1471
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    .line 1473
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1475
    const/4 v2, 0x1

    if-eqz v0, :cond_78

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_78

    iget-wide v3, v0, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_2b

    goto :goto_78

    .line 1487
    :cond_2b
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v3, :cond_3b

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_3b

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_3b

    move v3, v2

    goto :goto_3c

    :cond_3b
    move v3, v1

    .line 1492
    :goto_3c
    iget-object v4, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iget-wide v4, v4, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-ltz v4, :cond_55

    .line 1493
    if-eqz v3, :cond_4b

    iget p2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    if-nez p2, :cond_4b

    move v1, v2

    .line 1494
    :cond_4b
    const/4 p2, 0x0

    iput-object p2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1495
    iget-object p2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iput-object p1, p2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1496
    iput-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_84

    .line 1501
    :cond_55
    :goto_55
    nop

    .line 1502
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1503
    if-eqz v4, :cond_6e

    iget-wide v5, v4, Landroid/os/Message;->when:J

    cmp-long v5, p2, v5

    if-gez v5, :cond_61

    .line 1504
    goto :goto_6e

    .line 1506
    :cond_61
    if-eqz v3, :cond_6c

    invoke-virtual {v4}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1507
    move v3, v1

    move-object v0, v4

    goto :goto_55

    .line 1501
    :cond_6c
    move-object v0, v4

    goto :goto_55

    .line 1510
    :cond_6e
    :goto_6e
    if-nez v4, :cond_72

    .line 1512
    iput-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1514
    :cond_72
    iput-object v4, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1515
    iput-object p1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move v1, v3

    goto :goto_84

    .line 1477
    :cond_78
    :goto_78
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1478
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1479
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 1480
    if-nez v0, :cond_84

    .line 1481
    iget-object p2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object p2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1519
    :cond_84
    :goto_84
    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 1520
    iget p1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1524
    :cond_8f
    if-eqz v1, :cond_96

    .line 1525
    iget-wide p1, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {p1, p2}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1527
    :cond_96
    monitor-exit p0

    .line 1528
    return v2

    .line 1461
    :cond_98
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " This message is already in use."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1527
    :catchall_b1
    move-exception p1

    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_1 .. :try_end_b3} :catchall_b1

    throw p1
.end method

.method private blacklist enqueueMessageUnchecked(Landroid/os/Message;J)Z
    .registers 13

    .line 2872
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_11

    sget-object v0, Landroid/os/MessageQueue;->sNextInsertSeq:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;J)J

    move-result-wide v3

    add-long/2addr v3, v1

    goto :goto_1b

    .line 2873
    :cond_11
    sget-object v0, Landroid/os/MessageQueue;->sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;

    const-wide/16 v3, -0x1

    invoke-polymorphic {v0, p0, v3, v4}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;J)J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 2874
    :goto_1b
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 2875
    iput-wide v3, p1, Landroid/os/Message;->insertSeq:J

    .line 2876
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 2877
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    .line 2890
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iget-object p3, p0, Landroid/os/MessageQueue;->mLooperThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p3, :cond_48

    .line 2891
    invoke-direct {p0}, Landroid/os/MessageQueue;->getQuitting()Z

    move-result p2

    if-eqz p2, :cond_39

    .line 2892
    invoke-static {p1}, Landroid/os/MessageQueue;->logDeadThread(Landroid/os/Message;)V

    .line 2893
    return v0

    .line 2896
    :cond_39
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->insertIntoPriorityQueue(Landroid/os/Message;)V

    .line 2901
    iget-boolean p1, p0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    if-nez p1, :cond_47

    .line 2902
    iput-boolean v1, p0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    .line 2903
    iget-wide p1, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {p1, p2}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 2905
    :cond_47
    return v1

    .line 2908
    :cond_48
    new-instance p2, Landroid/os/MessageQueue$MessageNode;

    invoke-direct {p2, p1}, Landroid/os/MessageQueue$MessageNode;-><init>(Landroid/os/Message;)V

    .line 2910
    :goto_4d
    sget-object p3, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {p3, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object p3

    .line 2914
    iput-object p3, p2, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2915
    invoke-virtual {p3}, Landroid/os/MessageQueue$StackNode;->getNodeType()I

    move-result v2

    packed-switch v2, :pswitch_data_e2

    .line 2947
    move-object v2, p3

    check-cast v2, Landroid/os/MessageQueue$MessageNode;

    .line 2949
    iget-object v3, v2, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    iput-object v3, p2, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2950
    iget-object v3, p2, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    invoke-virtual {v3}, Landroid/os/MessageQueue$StateNode;->getNodeType()I

    move-result v3

    .line 2951
    const/4 v4, 0x2

    if-lt v3, v4, :cond_a5

    move v4, v1

    goto :goto_a6

    .line 2942
    :pswitch_6f
    invoke-static {p1}, Landroid/os/MessageQueue;->logDeadThread(Landroid/os/Message;)V

    .line 2943
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2944
    return v0

    .line 2935
    :pswitch_76
    move-object v2, p3

    check-cast v2, Landroid/os/MessageQueue$StateNode;

    iput-object v2, p2, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2936
    nop

    .line 2937
    iget-object v2, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget-wide v2, v2, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    iget-wide v4, p1, Landroid/os/Message;->when:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_88

    move v2, v1

    goto :goto_89

    :cond_88
    move v2, v0

    .line 2938
    :goto_89
    iput-boolean v2, p2, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    .line 2939
    move v4, v1

    goto :goto_c9

    .line 2928
    :pswitch_8d
    move-object v2, p3

    check-cast v2, Landroid/os/MessageQueue$StateNode;

    iput-object v2, p2, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2929
    nop

    .line 2930
    iput-boolean v1, p2, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    .line 2931
    nop

    .line 2932
    move v2, v1

    move v4, v2

    goto :goto_c9

    .line 2921
    :pswitch_99
    move-object v2, p3

    check-cast v2, Landroid/os/MessageQueue$StateNode;

    iput-object v2, p2, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2922
    nop

    .line 2923
    iput-boolean v1, p2, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    .line 2924
    nop

    .line 2925
    move v2, v0

    move v4, v2

    goto :goto_c9

    .line 2951
    :cond_a5
    move v4, v0

    .line 2952
    :goto_a6
    const/4 v5, 0x3

    if-ne v3, v5, :cond_bb

    iget-object v3, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget-wide v5, v3, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    iget-object v3, p2, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    iget-wide v7, v3, Landroid/os/Message;->when:J

    cmp-long v3, v5, v7

    if-ltz v3, :cond_bb

    iget-boolean v3, v2, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    if-nez v3, :cond_bb

    move v3, v1

    goto :goto_bc

    :cond_bb
    move v3, v0

    .line 2955
    :goto_bc
    iget-boolean v2, v2, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    if-nez v2, :cond_c5

    if-eqz v3, :cond_c3

    goto :goto_c5

    :cond_c3
    move v2, v0

    goto :goto_c6

    :cond_c5
    :goto_c5
    move v2, v1

    :goto_c6
    iput-boolean v2, p2, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    move v2, v3

    .line 2958
    :goto_c9
    sget-object v3, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v3, p0, p3, p2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StackNode;Landroid/os/MessageQueue$MessageNode;)Z

    move-result p3

    if-eqz p3, :cond_e0

    .line 2959
    if-eqz v4, :cond_df

    .line 2960
    if-eqz v2, :cond_da

    .line 2961
    invoke-direct {p0}, Landroid/os/MessageQueue;->concurrentWake()V

    goto :goto_df

    .line 2963
    :cond_da
    iget-object p1, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {p1}, Landroid/os/MessageQueue$MessageCounts;->incrementQueued()V

    .line 2966
    :cond_df
    :goto_df
    return v1

    .line 2968
    :cond_e0
    goto/16 :goto_4d

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_99
        :pswitch_8d
        :pswitch_76
        :pswitch_6f
    .end packed-switch
.end method

.method private blacklist findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z
    .registers 21

    .line 3069
    invoke-direct/range {p0 .. p8}, Landroid/os/MessageQueue;->stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    move-result v10

    .line 3070
    iget-object v1, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/os/MessageQueue;->priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    move-result v11

    .line 3072
    iget-object v1, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct/range {v0 .. v9}, Landroid/os/MessageQueue;->priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    move-result v0

    or-int/2addr v0, v11

    .line 3075
    if-nez v10, :cond_24

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    :goto_25
    return v0
.end method

.method private static blacklist first(Ljava/util/concurrent/ConcurrentSkipListSet;)Landroid/os/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/Message;",
            ">;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 2422
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2423
    return-object v1

    .line 2426
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;
    :try_end_e
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_e} :catch_f

    return-object p0

    .line 2427
    :catch_f
    move-exception p0

    .line 2428
    return-object v1
.end method

.method private blacklist getQuitting()Z
    .registers 2

    .line 2742
    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isQuittingNode()Z

    move-result v0

    return v0
.end method

.method private blacklist getStateNode(Landroid/os/MessageQueue$StackNode;)Landroid/os/MessageQueue$StateNode;
    .registers 3

    .line 2479
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2480
    check-cast p1, Landroid/os/MessageQueue$MessageNode;

    iget-object p1, p1, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    return-object p1

    .line 2482
    :cond_b
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isQuittingNode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2483
    check-cast p1, Landroid/os/MessageQueue$QuittingNode;

    iget-object p1, p1, Landroid/os/MessageQueue$QuittingNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    return-object p1

    .line 2485
    :cond_16
    check-cast p1, Landroid/os/MessageQueue$StateNode;

    return-object p1
.end method

.method static blacklist getUseConcurrent()Z
    .registers 2

    .line 164
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrentInitialized:Z

    if-nez v0, :cond_e

    .line 167
    invoke-static {}, Landroid/os/MessageQueue;->computeUseConcurrent()Z

    move-result v0

    .line 168
    sput-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    .line 169
    const/4 v1, 0x1

    sput-boolean v1, Landroid/os/MessageQueue;->sUseConcurrentInitialized:Z

    .line 170
    return v0

    .line 172
    :cond_e
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    return v0
.end method

.method private blacklist hasEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 13

    .line 1671
    sget-object v7, Landroid/os/Message;->sMatchHandlerWhatAndObjectEquals:Landroid/os/Message$MatchHandlerWhatAndObjectEquals;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 6

    .line 1676
    monitor-enter p0

    .line 1677
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1678
    :goto_3
    if-eqz v0, :cond_1d

    .line 1679
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1a

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_1a

    if-eqz p3, :cond_17

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1680
    :cond_17
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1682
    :cond_1a
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    .line 1684
    :cond_1d
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 1685
    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;)Z
    .registers 11

    .line 1729
    sget-object v7, Landroid/os/Message;->sMatchHandler:Landroid/os/Message$MatchHandler;

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 13

    .line 1642
    sget-object v7, Landroid/os/Message;->sMatchHandlerWhatAndObject:Landroid/os/Message$MatchHandlerWhatAndObject;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 13

    .line 1700
    sget-object v7, Landroid/os/Message;->sMatchHandlerRunnableAndObject:Landroid/os/Message$MatchHandlerRunnableAndObject;

    const/4 v8, 0x0

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;)Z
    .registers 4

    .line 1733
    monitor-enter p0

    .line 1734
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1735
    :goto_3
    if-eqz v0, :cond_f

    .line 1736
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_c

    .line 1737
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1739
    :cond_c
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    .line 1741
    :cond_f
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 1742
    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 6

    .line 1646
    monitor-enter p0

    .line 1647
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1648
    :goto_3
    if-eqz v0, :cond_19

    .line 1649
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_16

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_16

    if-eqz p3, :cond_13

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_16

    .line 1650
    :cond_13
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1652
    :cond_16
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    .line 1654
    :cond_19
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 1655
    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 6

    .line 1704
    monitor-enter p0

    .line 1705
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1706
    :goto_3
    if-eqz v0, :cond_19

    .line 1707
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_16

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_16

    if-eqz p3, :cond_13

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_16

    .line 1708
    :cond_13
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1710
    :cond_16
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    .line 1712
    :cond_19
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 1713
    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private blacklist incAndTraceMessageCount(Landroid/os/Message;J)V
    .registers 16

    .line 240
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 241
    invoke-static {}, Landroid/os/PerfettoTrace;->isMQCategoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 242
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->sendingThreadName:Ljava/lang/String;

    .line 243
    invoke-static {}, Landroid/os/PerfettoTrace;->getFlowId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/os/Message;->eventId:J

    .line 245
    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr p2, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 247
    sget-boolean v2, Landroid/os/PerfettoTrace;->IS_USE_SDK_TRACING_API_V3:Z

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x3

    const-wide/16 v7, 0x2

    const-wide/16 v9, 0x7d4

    const-string v11, "message_queue_send"

    if-eqz v2, :cond_67

    .line 248
    sget-object v2, Landroid/os/PerfettoTrace;->MQ_CATEGORY_V3:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    invoke-static {v2, v11}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->instant(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v2

    .line 250
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->setFlow(J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->beginProto()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v9, v10}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->beginNested(J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addField(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    int-to-long v1, p1

    .line 254
    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addField(JJ)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p1

    .line 255
    invoke-virtual {p1, v3, v4, p2, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addField(JJ)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->endNested()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->endProto()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->emit()V

    goto :goto_95

    .line 260
    :cond_67
    sget-object v2, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    invoke-static {v2, v11}, Landroid/os/PerfettoTrace;->instant(Landroid/os/PerfettoTrace$Category;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v2

    .line 261
    invoke-virtual {v2, v0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->setFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v9, v10}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginNested(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    .line 264
    invoke-virtual {v0, v7, v8, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    int-to-long v1, p1

    .line 265
    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p1

    .line 266
    invoke-virtual {p1, v3, v4, p2, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->endNested()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->endProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    .line 272
    :cond_95
    :goto_95
    return-void
.end method

.method private blacklist incrementMptrRefs()Z
    .registers 7

    .line 2686
    nop

    :goto_1
    iget-wide v2, p0, Landroid/os/MessageQueue;->mMptrRefCountValue:J

    .line 2687
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_e

    .line 2689
    const/4 v0, 0x0

    return v0

    .line 2691
    :cond_e
    sget-object v0, Landroid/os/MessageQueue;->sMptrRefCount:Ljava/lang/invoke/VarHandle;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;JJ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2693
    const/4 v0, 0x1

    return v0

    .line 2695
    :cond_1d
    goto :goto_1
.end method

.method private blacklist insertIntoPriorityQueue(Landroid/os/Message;)V
    .registers 3

    .line 2402
    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2403
    iget-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2405
    :cond_c
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 2407
    :goto_11
    return-void
.end method

.method private static blacklist isBarrier(Landroid/os/Message;)Z
    .registers 1

    .line 307
    if-eqz p0, :cond_8

    iget-object p0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private blacklist isIdleConcurrent()Z
    .registers 10

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 313
    sget-object v7, Landroid/os/Message;->sMatchDeliverableMessages:Landroid/os/Message$MatchDeliverableMessages;

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 314
    return v2

    .line 317
    :cond_13
    iget-object v1, v0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-static {v1}, Landroid/os/MessageQueue;->first(Ljava/util/concurrent/ConcurrentSkipListSet;)Landroid/os/Message;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_22

    iget-wide v3, v1, Landroid/os/Message;->when:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_22

    .line 319
    return v2

    .line 322
    :cond_22
    iget-object v0, v0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-static {v0}, Landroid/os/MessageQueue;->first(Ljava/util/concurrent/ConcurrentSkipListSet;)Landroid/os/Message;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_31

    iget-wide v0, v0, Landroid/os/Message;->when:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_31

    .line 324
    return v2

    .line 327
    :cond_31
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isIdleLegacy()Z
    .registers 5

    .line 331
    monitor-enter p0

    .line 332
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 333
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    return v0

    .line 334
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private blacklist isPollingConcurrent()Z
    .registers 3

    .line 415
    invoke-direct {p0}, Landroid/os/MessageQueue;->getQuitting()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Landroid/os/MessageQueue;->incrementMptrRefs()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 417
    :try_start_c
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_16

    .line 419
    invoke-direct {p0}, Landroid/os/MessageQueue;->decrementMptrRefs()V

    .line 417
    return v0

    .line 419
    :catchall_16
    move-exception v0

    invoke-direct {p0}, Landroid/os/MessageQueue;->decrementMptrRefs()V

    .line 420
    throw v0

    .line 422
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isPollingLegacy()Z
    .registers 2

    .line 426
    monitor-enter p0

    .line 427
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 428
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private greylist-max-o isPollingLocked()Z
    .registers 3

    .line 453
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_e

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist legacyPeekOrPoll(Z)Landroid/os/Message;
    .registers 10

    .line 1544
    monitor-enter p0

    .line 1546
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1547
    nop

    .line 1548
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1549
    const/4 v3, 0x0

    if-eqz v2, :cond_21

    iget-object v4, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_21

    .line 1552
    :goto_f
    nop

    .line 1553
    iget-object v4, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1554
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Landroid/os/Message;->isAsynchronous()Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_1d

    :cond_1b
    move-object v2, v4

    goto :goto_f

    .line 1556
    :cond_1d
    :goto_1d
    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_22

    :cond_21
    move-object v4, v3

    :goto_22
    if-eqz v2, :cond_5e

    .line 1557
    if-eqz p1, :cond_28

    .line 1558
    monitor-exit p0

    return-object v2

    .line 1560
    :cond_28
    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long p1, v0, v5

    if-ltz p1, :cond_31

    .line 1562
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 1564
    :cond_31
    if-eqz v4, :cond_3e

    .line 1565
    iget-object p1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, v4, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1566
    iget-object p1, v4, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez p1, :cond_48

    .line 1567
    iput-object v4, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_48

    .line 1570
    :cond_3e
    iget-object p1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1571
    iget-object p1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez p1, :cond_48

    .line 1572
    iput-object v3, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1575
    :cond_48
    :goto_48
    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1576
    invoke-virtual {v2}, Landroid/os/Message;->markInUse()V

    .line 1577
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 1578
    iget p1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1580
    :cond_59
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1581
    monitor-exit p0

    return-object v2

    .line 1583
    :cond_5e
    monitor-exit p0

    .line 1584
    return-object v3

    .line 1583
    :catchall_60
    move-exception p1

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_60

    throw p1
.end method

.method private static blacklist logDeadThread(Landroid/os/Message;)V
    .registers 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1452
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sending message to a Handler on a dead thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1454
    const-string v1, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1455
    invoke-virtual {p0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1456
    return-void
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeInit()J
.end method

.method private static native greylist-max-o nativeIsPolling(J)Z
.end method

.method private native greylist nativePollOnce(JI)V
.end method

.method private static native greylist-max-o nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native blacklist nativeSetSkipEpollWaitForZeroTimeout(J)V
.end method

.method private static native greylist-max-o nativeWake(J)V
.end method

.method private blacklist nextConcurrent()Landroid/os/Message;
    .registers 11

    .line 892
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 893
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    .line 894
    return-object v3

    .line 897
    :cond_a
    const/4 v2, 0x0

    iput v2, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 898
    const/4 v4, -0x1

    .line 900
    :goto_e
    iget v5, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    if-eqz v5, :cond_15

    .line 901
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 904
    :cond_15
    iput-boolean v2, p0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    .line 905
    iget v5, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    invoke-direct {p0, v0, v1, v5}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 907
    invoke-direct {p0, v2, v2}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object v5

    .line 908
    if-eqz v5, :cond_29

    .line 909
    invoke-virtual {v5}, Landroid/os/Message;->markInUse()V

    .line 910
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 911
    return-object v5

    .line 915
    :cond_29
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mWorkerShouldQuit:Z

    if-eqz v5, :cond_34

    .line 916
    invoke-direct {p0}, Landroid/os/MessageQueue;->setMptrTeardownAndWaitForRefsToDrop()V

    .line 917
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 918
    return-object v3

    .line 921
    :cond_34
    iget-object v5, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 925
    if-gez v4, :cond_48

    .line 926
    :try_start_39
    invoke-virtual {p0}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 927
    iget-object v4, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_48

    .line 938
    :catchall_46
    move-exception v0

    goto :goto_98

    .line 929
    :cond_48
    :goto_48
    if-gtz v4, :cond_4c

    .line 931
    monitor-exit v5

    goto :goto_e

    .line 934
    :cond_4c
    iget-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v6, :cond_59

    .line 935
    const/4 v6, 0x4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 937
    :cond_59
    iget-object v6, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 938
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_39 .. :try_end_66} :catchall_46

    .line 942
    move v5, v2

    :goto_67
    if-ge v5, v4, :cond_92

    .line 943
    iget-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v6, v6, v5

    .line 944
    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aput-object v3, v7, v5

    .line 946
    nop

    .line 948
    :try_start_72
    invoke-interface {v6}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v7
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_77

    .line 951
    goto :goto_80

    .line 949
    :catchall_77
    move-exception v7

    .line 950
    const-string v8, "ConcurrentMessageQueue"

    const-string v9, "IdleHandler threw exception"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v2

    .line 953
    :goto_80
    if-nez v7, :cond_8f

    .line 954
    iget-object v7, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v7

    .line 955
    :try_start_85
    iget-object v8, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 956
    monitor-exit v7

    goto :goto_8f

    :catchall_8c
    move-exception v0

    monitor-exit v7
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8c

    throw v0

    .line 942
    :cond_8f
    :goto_8f
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 961
    :cond_92
    nop

    .line 965
    iput v2, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 966
    move v4, v2

    goto/16 :goto_e

    .line 938
    :goto_98
    :try_start_98
    monitor-exit v5
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_46

    throw v0
.end method

.method private blacklist nextLegacy()Landroid/os/Message;
    .registers 18

    .line 973
    move-object/from16 v1, p0

    iget-wide v2, v1, Landroid/os/MessageQueue;->mPtr:J

    .line 974
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v4, 0x0

    if-nez v0, :cond_c

    .line 975
    return-object v4

    .line 978
    :cond_c
    nop

    .line 979
    const/4 v5, -0x1

    const/4 v6, 0x0

    move v7, v5

    move v0, v6

    .line 981
    :goto_11
    if-eqz v0, :cond_16

    .line 982
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 985
    :cond_16
    invoke-direct {v1, v2, v3, v0}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 987
    monitor-enter p0

    .line 989
    :try_start_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 990
    nop

    .line 991
    iget-object v0, v1, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 992
    if-eqz v0, :cond_3b

    iget-object v10, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v10, :cond_3b

    .line 995
    :goto_27
    nop

    .line 996
    iget-object v10, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 997
    if-eqz v10, :cond_35

    invoke-virtual {v10}, Landroid/os/Message;->isAsynchronous()Z

    move-result v11

    if-eqz v11, :cond_33

    goto :goto_35

    :cond_33
    move-object v0, v10

    goto :goto_27

    .line 999
    :cond_35
    :goto_35
    move-object/from16 v16, v10

    move-object v10, v0

    move-object/from16 v0, v16

    goto :goto_3c

    :cond_3b
    move-object v10, v4

    :goto_3c
    const/4 v11, 0x1

    if-eqz v0, :cond_7f

    .line 1000
    iget-wide v12, v0, Landroid/os/Message;->when:J

    cmp-long v12, v8, v12

    if-gez v12, :cond_51

    .line 1002
    iget-wide v12, v0, Landroid/os/Message;->when:J

    sub-long/2addr v12, v8

    const-wide/32 v14, 0x7fffffff

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v0, v12

    goto :goto_80

    .line 1005
    :cond_51
    iput-boolean v6, v1, Landroid/os/MessageQueue;->mBlocked:Z

    .line 1006
    if-eqz v10, :cond_60

    .line 1007
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v10, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1008
    iget-object v2, v10, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v2, :cond_6a

    .line 1009
    iput-object v10, v1, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_6a

    .line 1012
    :cond_60
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v1, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1013
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v2, :cond_6a

    .line 1014
    iput-object v4, v1, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1017
    :cond_6a
    :goto_6a
    iput-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1019
    invoke-virtual {v0}, Landroid/os/Message;->markInUse()V

    .line 1020
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 1021
    iget v2, v1, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    sub-int/2addr v2, v11

    iput v2, v1, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1023
    :cond_7a
    invoke-direct {v1}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1024
    monitor-exit p0

    return-object v0

    .line 1028
    :cond_7f
    move v0, v5

    .line 1032
    :goto_80
    iget-boolean v10, v1, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v10, :cond_89

    .line 1033
    invoke-direct {v1}, Landroid/os/MessageQueue;->dispose()V

    .line 1034
    monitor-exit p0

    return-object v4

    .line 1040
    :cond_89
    if-gez v7, :cond_9d

    iget-object v10, v1, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_97

    iget-object v10, v1, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v12, v10, Landroid/os/Message;->when:J

    cmp-long v8, v8, v12

    if-gez v8, :cond_9d

    .line 1042
    :cond_97
    iget-object v7, v1, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1044
    :cond_9d
    if-gtz v7, :cond_a4

    .line 1046
    iput-boolean v11, v1, Landroid/os/MessageQueue;->mBlocked:Z

    .line 1047
    monitor-exit p0

    goto/16 :goto_11

    .line 1050
    :cond_a4
    iget-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v0, :cond_b1

    .line 1051
    const/4 v0, 0x4

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 1053
    :cond_b1
    iget-object v0, v1, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v8, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 1054
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_1a .. :try_end_be} :catchall_ed

    .line 1058
    move v8, v6

    :goto_bf
    if-ge v8, v7, :cond_e8

    .line 1059
    iget-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v9, v0, v8

    .line 1060
    iget-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aput-object v4, v0, v8

    .line 1062
    nop

    .line 1064
    :try_start_ca
    invoke-interface {v9}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v0
    :try_end_ce
    .catchall {:try_start_ca .. :try_end_ce} :catchall_cf

    .line 1067
    goto :goto_d8

    .line 1065
    :catchall_cf
    move-exception v0

    .line 1066
    const-string v10, "LegacyMessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    .line 1069
    :goto_d8
    if-nez v0, :cond_e5

    .line 1070
    monitor-enter p0

    .line 1071
    :try_start_db
    iget-object v0, v1, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1072
    monitor-exit p0

    goto :goto_e5

    :catchall_e2
    move-exception v0

    monitor-exit p0
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_e2

    throw v0

    .line 1058
    :cond_e5
    :goto_e5
    add-int/lit8 v8, v8, 0x1

    goto :goto_bf

    .line 1077
    :cond_e8
    nop

    .line 1081
    move v0, v6

    move v7, v0

    goto/16 :goto_11

    .line 1054
    :catchall_ed
    move-exception v0

    :try_start_ee
    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v0
.end method

.method private blacklist nextMessage(ZZ)Landroid/os/Message;
    .registers 12

    .line 674
    nop

    .line 681
    :goto_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 683
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_f3

    .line 685
    iget-object v1, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 686
    nop

    .line 689
    nop

    .line 695
    invoke-direct {p0}, Landroid/os/MessageQueue;->swapAndSetStackStateActive()Landroid/os/MessageQueue$StackNode;

    move-result-object v1

    .line 696
    nop

    .line 697
    invoke-virtual {v1}, Landroid/os/MessageQueue$StackNode;->isQuittingNode()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_29

    .line 698
    move-object v2, v1

    check-cast v2, Landroid/os/MessageQueue$QuittingNode;

    .line 699
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mWorkerShouldQuit:Z

    if-nez v5, :cond_27

    .line 700
    iput-boolean v0, p0, Landroid/os/MessageQueue;->mWorkerShouldQuit:Z

    .line 706
    goto :goto_2b

    .line 699
    :cond_27
    move v0, v3

    goto :goto_2b

    .line 697
    :cond_29
    move v0, v3

    move-object v2, v4

    .line 709
    :goto_2b
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->drainStack(Landroid/os/MessageQueue$StackNode;)V

    .line 711
    iget-object v1, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 713
    :try_start_33
    iput-boolean v3, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    .line 714
    iget-object v1, p0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_ec

    .line 716
    iget-object v1, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 717
    nop

    .line 719
    if-eqz v0, :cond_4f

    .line 720
    iget-boolean v0, v2, Landroid/os/MessageQueue$QuittingNode;->mRemoveAll:Z

    if-eqz v0, :cond_4a

    .line 721
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessages()V

    goto :goto_4f

    .line 723
    :cond_4a
    iget-wide v0, v2, Landroid/os/MessageQueue$QuittingNode;->mTS:J

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->removeAllFutureMessages(J)V

    .line 741
    :cond_4f
    :goto_4f
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-static {v0}, Landroid/os/MessageQueue;->first(Ljava/util/concurrent/ConcurrentSkipListSet;)Landroid/os/Message;

    move-result-object v0

    .line 742
    iget-object v1, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-static {v1}, Landroid/os/MessageQueue;->first(Ljava/util/concurrent/ConcurrentSkipListSet;)Landroid/os/Message;

    move-result-object v1

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 767
    nop

    .line 774
    nop

    .line 779
    invoke-static {v0}, Landroid/os/MessageQueue;->isBarrier(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 780
    if-eqz v1, :cond_73

    if-nez p2, :cond_71

    iget-wide v7, v1, Landroid/os/Message;->when:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_73

    .line 781
    :cond_71
    move-object v0, v4

    goto :goto_96

    .line 783
    :cond_73
    move-object v0, v1

    move-object v1, v4

    goto :goto_96

    .line 787
    :cond_76
    nop

    .line 788
    if-nez v0, :cond_7a

    .line 789
    goto :goto_83

    .line 790
    :cond_7a
    if-eqz v1, :cond_84

    .line 791
    invoke-static {v0, v1}, Landroid/os/Message;->compareMessages(Landroid/os/Message;Landroid/os/Message;)I

    move-result v2

    if-lez v2, :cond_84

    .line 792
    nop

    .line 796
    :goto_83
    move-object v0, v1

    :cond_84
    if-eqz v0, :cond_94

    .line 797
    if-nez p2, :cond_91

    iget-wide v1, v0, Landroid/os/Message;->when:J

    cmp-long v1, v5, v1

    if-ltz v1, :cond_8f

    goto :goto_91

    .line 800
    :cond_8f
    move-object v1, v4

    goto :goto_96

    .line 798
    :cond_91
    :goto_91
    move-object v1, v0

    move-object v0, v4

    goto :goto_96

    .line 796
    :cond_94
    move-object v0, v4

    move-object v1, v0

    .line 836
    :goto_96
    sget-object v2, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    .line 837
    if-nez v1, :cond_c7

    .line 838
    iget-boolean v7, p0, Landroid/os/MessageQueue;->mWorkerShouldQuit:Z

    if-eqz v7, :cond_a1

    .line 840
    iput v3, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    goto :goto_c7

    .line 841
    :cond_a1
    if-nez v0, :cond_a9

    .line 843
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 844
    sget-object v2, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    goto :goto_c7

    .line 850
    :cond_a9
    iget-wide v7, v0, Landroid/os/Message;->when:J

    .line 851
    cmp-long v0, v7, v5

    if-lez v0, :cond_bb

    .line 852
    sub-long/2addr v7, v5

    const-wide/32 v2, 0x7fffffff

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    goto :goto_bd

    .line 855
    :cond_bb
    iput v3, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 858
    :goto_bd
    iget-object v0, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget v2, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    int-to-long v2, v2

    add-long/2addr v5, v2

    iput-wide v5, v0, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    .line 859
    iget-object v2, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    .line 873
    :cond_c7
    :goto_c7
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mWorkerShouldQuit:Z

    if-nez v0, :cond_d9

    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    sget-object v3, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    invoke-polymorphic {v0, p0, v3, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StateNode;Landroid/os/MessageQueue$StateNode;)Z

    move-result v0

    if-eqz v0, :cond_d7

    goto :goto_d9

    .line 888
    :cond_d7
    goto/16 :goto_1

    .line 874
    :cond_d9
    :goto_d9
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {v0}, Landroid/os/MessageQueue$MessageCounts;->clearCounts()V

    .line 875
    if-eqz v1, :cond_eb

    .line 876
    if-nez p1, :cond_ea

    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->removeFromPriorityQueue(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 881
    goto/16 :goto_1

    .line 884
    :cond_ea
    return-object v1

    .line 886
    :cond_eb
    return-object v4

    .line 716
    :catchall_ec
    move-exception p1

    iget-object p2, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 717
    throw p1

    .line 685
    :catchall_f3
    move-exception p1

    iget-object p2, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 686
    throw p1
.end method

.method private blacklist peekLastMessageConcurrent()Landroid/os/Message;
    .registers 10

    .line 1129
    new-instance v7, Landroid/os/MessageQueue$FindLastMessage;

    invoke-direct {v7}, Landroid/os/MessageQueue$FindLastMessage;-><init>()V

    .line 1130
    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    .line 1131
    iget-object v0, v7, Landroid/os/MessageQueue$FindLastMessage;->lastMsg:Landroid/os/Message;

    return-object v0
.end method

.method private blacklist peekLastMessageLegacy()Landroid/os/Message;
    .registers 7

    .line 1135
    monitor-enter p0

    .line 1136
    nop

    .line 1138
    :try_start_2
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v1, 0x0

    .line 1139
    :goto_5
    if-eqz v0, :cond_19

    .line 1140
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    iget-wide v2, v1, Landroid/os/Message;->when:J

    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_16

    .line 1141
    :cond_15
    move-object v1, v0

    .line 1143
    :cond_16
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_5

    .line 1146
    :cond_19
    monitor-exit p0

    return-object v1

    .line 1147
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private greylist-max-o postSyncBarrier(J)I
    .registers 10

    .line 1306
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_27

    .line 1307
    iget-object v0, p0, Landroid/os/MessageQueue;->mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 1311
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 1313
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1315
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 1316
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1318
    invoke-direct {p0, v1, p1, p2}, Landroid/os/MessageQueue;->enqueueMessageUnchecked(Landroid/os/Message;J)Z

    move-result p1

    if-nez p1, :cond_26

    .line 1319
    const-string p1, "ConcurrentMessageQueue"

    const-string p2, "Unexpected error while adding sync barrier!"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/4 p1, -0x1

    return p1

    .line 1323
    :cond_26
    return v0

    .line 1326
    :cond_27
    monitor-enter p0

    .line 1327
    :try_start_28
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 1328
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1329
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 1330
    iput-wide p1, v1, Landroid/os/Message;->when:J

    .line 1331
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1332
    invoke-direct {p0, v1, p1, p2}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    .line 1334
    iget-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    const/4 v3, 0x0

    if-eqz v2, :cond_53

    iget-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iget-wide v4, v2, Landroid/os/Message;->when:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_53

    .line 1336
    iget-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iput-object v1, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1337
    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1338
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1339
    monitor-exit p0

    return v0

    .line 1342
    :cond_53
    nop

    .line 1343
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1344
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_6b

    .line 1345
    :goto_5c
    if-eqz v2, :cond_6b

    iget-wide v4, v2, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_6b

    .line 1346
    nop

    .line 1347
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_5c

    .line 1351
    :cond_6b
    if-nez v2, :cond_6f

    .line 1353
    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1356
    :cond_6f
    if-eqz v3, :cond_76

    .line 1357
    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1358
    iput-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_7a

    .line 1360
    :cond_76
    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1361
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1363
    :goto_7a
    monitor-exit p0

    return v0

    .line 1364
    :catchall_7c
    move-exception p1

    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_28 .. :try_end_7e} :catchall_7c

    throw p1
.end method

.method private blacklist postSyncBarrierConcurrent()I
    .registers 3

    .line 1262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method private blacklist postSyncBarrierLegacy()I
    .registers 3

    .line 1267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method private blacklist printPriorityQueueNodes()V
    .registers 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2178
    const-string v0, "* Dump priority queue"

    const-string v1, "ConcurrentMessageQueue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 2180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** Message what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/os/Message;->when:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/os/Message;->insertSeq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    goto :goto_d

    .line 2185
    :cond_4a
    return-void
.end method

.method private blacklist priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "J",
            "Landroid/os/Message$MessageCompare;",
            "Z)Z"
        }
    .end annotation

    .line 3048
    nop

    .line 3049
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/Message;

    .line 3050
    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v3, p8

    invoke-virtual/range {v3 .. v10}, Landroid/os/Message$MessageCompare;->compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3051
    const/4 v2, 0x1

    if-eqz p9, :cond_33

    .line 3052
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 3053
    invoke-virtual {v4}, Landroid/os/Message;->clear()V

    .line 3054
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 3055
    move v1, v2

    goto :goto_34

    .line 3058
    :cond_33
    return v2

    .line 3061
    :cond_34
    :goto_34
    goto :goto_6

    .line 3062
    :cond_35
    return v1
.end method

.method private blacklist removeAllFdRecords()V
    .registers 3

    .line 1200
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v0, :cond_1b

    .line 1201
    :goto_4
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 1202
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$FileDescriptorRecord;

    iget-object v0, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p0, v0}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    goto :goto_4

    .line 1205
    :cond_1b
    return-void
.end method

.method private blacklist removeAllFutureMessages(J)V
    .registers 12

    .line 2173
    sget-object v7, Landroid/os/Message;->sMatchAllFutureMessages:Landroid/os/Message$MatchAllFutureMessages;

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    .line 2174
    return-void
.end method

.method private greylist-max-o removeAllFutureMessagesLocked()V
    .registers 7

    .line 2135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2136
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2137
    if-eqz v2, :cond_3f

    .line 2138
    iget-wide v3, v2, Landroid/os/Message;->when:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_12

    .line 2139
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    goto :goto_3f

    .line 2143
    :cond_12
    :goto_12
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2144
    if-nez v3, :cond_17

    .line 2145
    return-void

    .line 2147
    :cond_17
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_3d

    .line 2148
    nop

    .line 2152
    const/4 v0, 0x0

    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2153
    iput-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 2156
    :goto_23
    nop

    .line 2157
    iget-object v0, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2158
    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2159
    iget v1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2161
    :cond_32
    invoke-virtual {v3}, Landroid/os/Message;->recycleUnchecked()V

    .line 2162
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2163
    if-nez v0, :cond_3b

    goto :goto_3f

    :cond_3b
    move-object v3, v0

    goto :goto_23

    .line 2150
    :cond_3d
    move-object v2, v3

    goto :goto_12

    .line 2166
    :cond_3f
    :goto_3f
    return-void
.end method

.method private blacklist removeAllMessages()V
    .registers 10

    .line 2169
    sget-object v7, Landroid/os/Message;->sMatchAllMessages:Landroid/os/Message$MatchAllMessages;

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    .line 2170
    return-void
.end method

.method private greylist-max-o removeAllMessagesLocked()V
    .registers 4

    .line 2121
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2122
    :goto_2
    if-eqz v0, :cond_c

    .line 2123
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2124
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 2125
    nop

    .line 2126
    move-object v0, v1

    goto :goto_2

    .line 2127
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2128
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 2129
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2130
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2131
    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    .line 2132
    return-void
.end method

.method private blacklist removeCallbacksAndMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 12

    .line 2001
    sget-object v7, Landroid/os/Message;->sMatchHandlerAndObject:Landroid/os/Message$MatchHandlerAndObject;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    .line 2002
    return-void
.end method

.method private blacklist removeCallbacksAndMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 7

    .line 2005
    monitor-enter p0

    .line 2006
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2009
    :goto_3
    if-eqz v0, :cond_28

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_28

    if-eqz p2, :cond_f

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p2, :cond_28

    .line 2011
    :cond_f
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2012
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2013
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2014
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2016
    :cond_1f
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 2017
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2018
    nop

    .line 2019
    move-object v0, v1

    goto :goto_3

    .line 2021
    :cond_28
    if-nez v0, :cond_2e

    .line 2022
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 2026
    :cond_2e
    :goto_2e
    if-eqz v0, :cond_5e

    .line 2027
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2028
    if-eqz v1, :cond_5b

    .line 2029
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_5b

    if-eqz p2, :cond_3e

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_5b

    .line 2030
    :cond_3e
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2031
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2032
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2034
    :cond_4c
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 2035
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2036
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2037
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_2e

    .line 2038
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_2e

    .line 2043
    :cond_5b
    nop

    .line 2044
    move-object v0, v1

    goto :goto_2e

    .line 2045
    :cond_5e
    monitor-exit p0

    .line 2046
    return-void

    .line 2045
    :catchall_60
    move-exception p1

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_60

    throw p1
.end method

.method private blacklist removeEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 13

    .line 1817
    sget-object v7, Landroid/os/Message;->sMatchHandlerWhatAndObjectEquals:Landroid/os/Message$MatchHandlerWhatAndObjectEquals;

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    .line 1819
    return-void
.end method

.method private blacklist removeEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 13

    .line 1940
    sget-object v7, Landroid/os/Message;->sMatchHandlerRunnableAndObjectEquals:Landroid/os/Message$MatchHandlerRunnableAndObjectEquals;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    .line 1941
    return-void
.end method

.method private blacklist removeEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8

    .line 1822
    monitor-enter p0

    .line 1823
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1826
    :goto_3
    if-eqz v0, :cond_30

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_30

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_30

    if-eqz p3, :cond_17

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1827
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1828
    :cond_17
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1829
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1830
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1831
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1833
    :cond_27
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1834
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1835
    nop

    .line 1836
    move-object v0, v1

    goto :goto_3

    .line 1838
    :cond_30
    if-nez v0, :cond_36

    .line 1839
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1843
    :cond_36
    :goto_36
    if-eqz v0, :cond_6e

    .line 1844
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1845
    if-eqz v1, :cond_6b

    .line 1846
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6b

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_6b

    if-eqz p3, :cond_4e

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1847
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1848
    :cond_4e
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1849
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1850
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1852
    :cond_5c
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1853
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1854
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1855
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_36

    .line 1856
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_36

    .line 1861
    :cond_6b
    nop

    .line 1862
    move-object v0, v1

    goto :goto_36

    .line 1863
    :cond_6e
    monitor-exit p0

    .line 1864
    return-void

    .line 1863
    :catchall_70
    move-exception p1

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_70

    throw p1
.end method

.method private blacklist removeEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 8

    .line 1944
    monitor-enter p0

    .line 1945
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1948
    :goto_3
    if-eqz v0, :cond_30

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_30

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_30

    if-eqz p3, :cond_17

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1949
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1950
    :cond_17
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1951
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1952
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1953
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1955
    :cond_27
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1956
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1957
    nop

    .line 1958
    move-object v0, v1

    goto :goto_3

    .line 1960
    :cond_30
    if-nez v0, :cond_36

    .line 1961
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1965
    :cond_36
    :goto_36
    if-eqz v0, :cond_6e

    .line 1966
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1967
    if-eqz v1, :cond_6b

    .line 1968
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6b

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_6b

    if-eqz p3, :cond_4e

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1969
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1970
    :cond_4e
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1971
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1972
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1974
    :cond_5c
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1975
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1976
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1977
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_36

    .line 1978
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_36

    .line 1983
    :cond_6b
    nop

    .line 1984
    move-object v0, v1

    goto :goto_36

    .line 1985
    :cond_6e
    monitor-exit p0

    .line 1986
    return-void

    .line 1985
    :catchall_70
    move-exception p1

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_70

    throw p1
.end method

.method private blacklist removeFromPriorityQueue(Landroid/os/Message;)Z
    .registers 3

    .line 2410
    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2411
    iget-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2413
    :cond_d
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private blacklist removeIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4

    .line 386
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_3
    iget-object v1, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 388
    monitor-exit v0

    .line 389
    return-void

    .line 388
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private blacklist removeIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3

    .line 391
    monitor-enter p0

    .line 392
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    monitor-exit p0

    .line 394
    return-void

    .line 393
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private blacklist removeMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 13

    .line 1757
    sget-object v7, Landroid/os/Message;->sMatchHandlerWhatAndObject:Landroid/os/Message$MatchHandlerWhatAndObject;

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    .line 1758
    return-void
.end method

.method private blacklist removeMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 13

    .line 1879
    sget-object v7, Landroid/os/Message;->sMatchHandlerRunnableAndObject:Landroid/os/Message$MatchHandlerRunnableAndObject;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    .line 1880
    return-void
.end method

.method private blacklist removeMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8

    .line 1761
    monitor-enter p0

    .line 1762
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1765
    :goto_3
    if-eqz v0, :cond_2c

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2c

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2c

    if-eqz p3, :cond_13

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2c

    .line 1767
    :cond_13
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1768
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1769
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1770
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1772
    :cond_23
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1773
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1774
    nop

    .line 1775
    move-object v0, v1

    goto :goto_3

    .line 1777
    :cond_2c
    if-nez v0, :cond_32

    .line 1778
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1782
    :cond_32
    :goto_32
    if-eqz v0, :cond_66

    .line 1783
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1784
    if-eqz v1, :cond_63

    .line 1785
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_63

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_63

    if-eqz p3, :cond_46

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_63

    .line 1787
    :cond_46
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1788
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1789
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1791
    :cond_54
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1792
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1793
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1794
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_32

    .line 1795
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_32

    .line 1800
    :cond_63
    nop

    .line 1801
    move-object v0, v1

    goto :goto_32

    .line 1802
    :cond_66
    monitor-exit p0

    .line 1803
    return-void

    .line 1802
    :catchall_68
    move-exception p1

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method private blacklist removeMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 8

    .line 1883
    monitor-enter p0

    .line 1884
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1887
    :goto_3
    if-eqz v0, :cond_2c

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2c

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2c

    if-eqz p3, :cond_13

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2c

    .line 1889
    :cond_13
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1890
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1891
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1892
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1894
    :cond_23
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1895
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1896
    nop

    .line 1897
    move-object v0, v1

    goto :goto_3

    .line 1899
    :cond_2c
    if-nez v0, :cond_32

    .line 1900
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1904
    :cond_32
    :goto_32
    if-eqz v0, :cond_66

    .line 1905
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1906
    if-eqz v1, :cond_63

    .line 1907
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_63

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_63

    if-eqz p3, :cond_46

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_63

    .line 1909
    :cond_46
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1910
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1911
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1913
    :cond_54
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1914
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1915
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1916
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_32

    .line 1917
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_32

    .line 1922
    :cond_63
    nop

    .line 1923
    move-object v0, v1

    goto :goto_32

    .line 1924
    :cond_66
    monitor-exit p0

    .line 1925
    return-void

    .line 1924
    :catchall_68
    move-exception p1

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method private blacklist removeOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;)V
    .registers 5

    .line 513
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 515
    monitor-exit v0

    .line 516
    return-void

    .line 515
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private blacklist removeOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;)V
    .registers 4

    .line 519
    monitor-enter p0

    .line 520
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 521
    monitor-exit p0

    .line 522
    return-void

    .line 521
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private blacklist removeSyncBarrierConcurrent(I)V
    .registers 11

    .line 1369
    new-instance v7, Landroid/os/Message$MatchBarrierToken;

    invoke-direct {v7, p1}, Landroid/os/Message$MatchBarrierToken;-><init>(I)V

    .line 1371
    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    move-result p1

    .line 1372
    if-eqz p1, :cond_1f

    .line 1376
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, v0, Landroid/os/MessageQueue;->mLooperThread:Ljava/lang/Thread;

    if-eq p1, v1, :cond_1e

    .line 1378
    invoke-direct {p0}, Landroid/os/MessageQueue;->concurrentWake()V

    .line 1380
    :cond_1e
    return-void

    .line 1373
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist removeSyncBarrierLegacy(I)V
    .registers 7

    .line 1383
    monitor-enter p0

    .line 1384
    nop

    .line 1385
    :try_start_2
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1386
    :goto_6
    if-eqz v0, :cond_17

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_10

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_17

    .line 1387
    :cond_10
    nop

    .line 1388
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_6

    .line 1390
    :cond_17
    if-eqz v0, :cond_4f

    .line 1395
    const/4 p1, 0x0

    if-eqz v2, :cond_27

    .line 1396
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1397
    iget-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_26

    .line 1398
    iput-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1400
    :cond_26
    goto :goto_3c

    .line 1402
    :cond_27
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1403
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-nez v2, :cond_31

    .line 1404
    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1406
    :cond_31
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_3c

    :cond_3b
    const/4 p1, 0x1

    .line 1408
    :cond_3c
    :goto_3c
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1409
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1413
    if-eqz p1, :cond_4d

    iget-boolean p1, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez p1, :cond_4d

    .line 1414
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1416
    :cond_4d
    monitor-exit p0

    .line 1417
    return-void

    .line 1391
    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1416
    :catchall_57
    move-exception p1

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_2 .. :try_end_59} :catchall_57

    throw p1
.end method

.method private blacklist resetConcurrent()V
    .registers 3

    .line 1166
    invoke-direct {p0}, Landroid/os/MessageQueue;->getQuitting()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1167
    return-void

    .line 1169
    :cond_7
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1170
    :try_start_a
    iget-object v1, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1171
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_21

    .line 1172
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1173
    :try_start_13
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFdRecords()V

    .line 1174
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1e

    .line 1175
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessages()V

    .line 1179
    invoke-direct {p0}, Landroid/os/MessageQueue;->resetSyncBarrierTokens()V

    .line 1180
    return-void

    .line 1174
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    .line 1171
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private blacklist resetLegacy()V
    .registers 3

    .line 1183
    monitor-enter p0

    .line 1185
    :try_start_1
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_7

    .line 1186
    monitor-exit p0

    return-void

    .line 1188
    :cond_7
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1189
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFdRecords()V

    .line 1190
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 1194
    invoke-direct {p0}, Landroid/os/MessageQueue;->resetSyncBarrierTokens()V

    .line 1195
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1196
    monitor-exit p0

    .line 1197
    return-void

    .line 1196
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private blacklist resetSyncBarrierTokens()V
    .registers 3

    .line 1208
    iget-object v0, p0, Landroid/os/MessageQueue;->mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1209
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 1210
    return-void
.end method

.method private blacklist setFileDescriptorEvents(II)V
    .registers 5

    .line 2728
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_18

    .line 2729
    invoke-direct {p0}, Landroid/os/MessageQueue;->incrementMptrRefs()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2731
    :try_start_a
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2733
    invoke-direct {p0}, Landroid/os/MessageQueue;->decrementMptrRefs()V

    .line 2734
    goto :goto_1d

    .line 2733
    :catchall_13
    move-exception p1

    invoke-direct {p0}, Landroid/os/MessageQueue;->decrementMptrRefs()V

    .line 2734
    throw p1

    .line 2737
    :cond_18
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    .line 2739
    :cond_1d
    :goto_1d
    return-void
.end method

.method private blacklist setMptrTeardownAndWaitForRefsToDrop()V
    .registers 8

    .line 2748
    nop

    :goto_1
    iget-wide v2, p0, Landroid/os/MessageQueue;->mMptrRefCountValue:J

    .line 2749
    sget-object v0, Landroid/os/MessageQueue;->sMptrRefCount:Ljava/lang/invoke/VarHandle;

    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v4, v2

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;JJ)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2751
    nop

    .line 2755
    const/4 v0, 0x0

    move v2, v0

    .line 2757
    :goto_13
    :try_start_13
    iget-wide v3, v1, Landroid/os/MessageQueue;->mMptrRefCountValue:J

    const-wide v5, 0x7fffffffffffffffL

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2a

    .line 2758
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    .line 2759
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_32

    or-int/2addr v2, v0

    goto :goto_13

    .line 2762
    :cond_2a
    if-eqz v2, :cond_31

    .line 2763
    iget-object v0, v1, Landroid/os/MessageQueue;->mLooperThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2766
    :cond_31
    return-void

    .line 2762
    :catchall_32
    move-exception v0

    if-eqz v2, :cond_3a

    .line 2763
    iget-object v1, v1, Landroid/os/MessageQueue;->mLooperThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2765
    :cond_3a
    throw v0

    .line 2753
    :cond_3b
    goto :goto_1
.end method

.method static blacklist setSkipEpollWaitForZeroTimeout(J)V
    .registers 3

    .line 214
    sget-boolean v0, Landroid/os/MessageQueue;->sSkipEpollWaitForZeroTimeoutInitialized:Z

    if-eqz v0, :cond_5

    .line 215
    return-void

    .line 217
    :cond_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->nativeLooperSkipEpollWaitForZeroTimeout()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 218
    invoke-static {p0, p1}, Landroid/os/MessageQueue;->nativeSetSkipEpollWaitForZeroTimeout(J)V

    .line 220
    :cond_e
    const/4 p0, 0x1

    sput-boolean p0, Landroid/os/MessageQueue;->sSkipEpollWaitForZeroTimeoutInitialized:Z

    .line 221
    return-void
.end method

.method private blacklist stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z
    .registers 20

    .line 2973
    nop

    .line 2974
    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    .line 2975
    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->getStateNode(Landroid/os/MessageQueue$StackNode;)Landroid/os/MessageQueue$StateNode;

    move-result-object v1

    .line 2981
    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    .line 2982
    invoke-direct {p0}, Landroid/os/MessageQueue;->waitForDrainCompleted()V

    .line 2983
    return v2

    .line 2986
    :cond_13
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isQuittingNode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2987
    check-cast v0, Landroid/os/MessageQueue$QuittingNode;

    .line 2988
    iget-object v0, v0, Landroid/os/MessageQueue$QuittingNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2989
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2990
    goto :goto_28

    .line 2992
    :cond_24
    invoke-direct {p0}, Landroid/os/MessageQueue;->waitForDrainCompleted()V

    .line 2993
    return v2

    .line 3003
    :cond_28
    :goto_28
    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    .line 3006
    :goto_2a
    iget-object v4, v0, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    .line 3007
    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v3, p7

    invoke-virtual/range {v3 .. v10}, Landroid/os/Message$MessageCompare;->compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 3008
    nop

    .line 3012
    const/4 v1, 0x1

    if-eqz p8, :cond_63

    .line 3013
    invoke-virtual {v0}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 3014
    invoke-virtual {v4}, Landroid/os/Message;->clear()V

    .line 3015
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 3016
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {v2}, Landroid/os/MessageQueue$MessageCounts;->incrementCancelled()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 3017
    invoke-direct {p0}, Landroid/os/MessageQueue;->concurrentWake()V

    .line 3025
    :cond_55
    move v2, v1

    :cond_56
    iget-object v0, v0, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 3026
    if-nez v0, :cond_5b

    .line 3031
    goto :goto_62

    .line 3033
    :cond_5b
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v1

    if-nez v1, :cond_67

    .line 3035
    nop

    .line 3040
    :goto_62
    move v1, v2

    :cond_63
    invoke-direct {p0}, Landroid/os/MessageQueue;->waitForDrainCompleted()V

    .line 3042
    return v1

    .line 3037
    :cond_67
    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    .line 3038
    goto :goto_2a
.end method

.method private blacklist swapAndSetStackStateActive()Landroid/os/MessageQueue$StackNode;
    .registers 4

    .line 2471
    nop

    :goto_1
    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    .line 2472
    sget-object v1, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    if-eq v0, v1, :cond_1f

    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isQuittingNode()Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object v1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    sget-object v2, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    .line 2473
    invoke-polymorphic {v1, p0, v0, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StackNode;Landroid/os/MessageQueue$StateNode;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_1f

    .line 2476
    :cond_1e
    goto :goto_1

    .line 2474
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method private blacklist traceMessageCount()V
    .registers 5

    .line 275
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_USE_SDK_TRACING_API_V3:Z

    if-eqz v0, :cond_1c

    .line 276
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY_V3:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 277
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 276
    invoke-static {v0, v1, v2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->counter(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/MessageQueue;->mTid:J

    iget-object v3, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->usingThreadCounterTrack(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->emit()V

    goto :goto_33

    .line 281
    :cond_1c
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/os/PerfettoTrace;->counter(Landroid/os/PerfettoTrace$Category;J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/MessageQueue;->mTid:J

    iget-object v3, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingThreadCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    .line 285
    :goto_33
    return-void
.end method

.method private greylist-max-o updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 8

    .line 551
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 553
    nop

    .line 554
    nop

    .line 555
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 556
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 557
    if-ltz v1, :cond_23

    .line 558
    iget-object v2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 559
    if-eqz v2, :cond_23

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_23

    .line 560
    return-void

    .line 555
    :cond_22
    const/4 v1, -0x1

    .line 565
    :cond_23
    if-eqz p2, :cond_4d

    .line 566
    or-int/lit8 p2, p2, 0x4

    .line 567
    if-nez v2, :cond_3f

    .line 568
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v1, :cond_34

    .line 569
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 571
    :cond_34
    new-instance v1, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 572
    iget-object p1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_49

    .line 574
    :cond_3f
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 575
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 576
    iget p1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 578
    :goto_49
    invoke-direct {p0, v0, p2}, Landroid/os/MessageQueue;->setFileDescriptorEvents(II)V

    goto :goto_5a

    .line 579
    :cond_4d
    if-eqz v2, :cond_5a

    .line 580
    const/4 p1, 0x0

    iput p1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 581
    iget-object p2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 583
    invoke-direct {p0, v0, p1}, Landroid/os/MessageQueue;->setFileDescriptorEvents(II)V

    .line 585
    :cond_5a
    :goto_5a
    return-void
.end method

.method private blacklist waitForDrainCompleted()V
    .registers 2

    .line 2489
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2490
    :goto_5
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    if-eqz v0, :cond_f

    .line 2491
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_5

    .line 2493
    :cond_f
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2494
    return-void
.end method


# virtual methods
.method public whitelist addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3

    .line 376
    if-eqz p1, :cond_e

    .line 379
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_a

    .line 380
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->addIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_d

    .line 382
    :cond_a
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->addIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V

    .line 384
    :goto_d
    return-void

    .line 377
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t add a null IdleHandler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 5

    .line 498
    if-eqz p1, :cond_18

    .line 501
    if-eqz p3, :cond_10

    .line 505
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_c

    .line 506
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    goto :goto_f

    .line 508
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 510
    :goto_f
    return-void

    .line 502
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 499
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fd must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 14
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2204
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_104

    .line 2205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2206
    nop

    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(MessageQueue is using Concurrent implementation)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2210
    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    move v9, v1

    .line 2211
    :goto_28
    if-eqz v0, :cond_83

    .line 2212
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2213
    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    iget-object v1, v0, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    .line 2214
    if-eqz p3, :cond_3a

    iget-object v4, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v4, :cond_62

    .line 2215
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2217
    :cond_62
    iget-object v0, v0, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2218
    goto :goto_80

    .line 2219
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "State: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2220
    const/4 v0, 0x0

    .line 2222
    :goto_80
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 2225
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PriorityQueue Messages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2226
    iget-object v5, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I

    move-result p1

    move-object v1, v4

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    add-int v6, v9, p1

    .line 2227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "AsyncPriorityQueue Messages: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2228
    iget-object v2, v1, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct/range {v1 .. v6}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I

    move-result p1

    move-object v4, v1

    add-int/2addr v6, p1

    .line 2230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "(Total messages: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", polling="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", quitting="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2231
    invoke-direct {p0}, Landroid/os/MessageQueue;->getQuitting()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2230
    invoke-interface {v3, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2232
    return-void

    .line 2235
    :cond_104
    move-object v4, p0

    move-object v3, p1

    move-object v7, p2

    move-object v5, p3

    monitor-enter p0

    .line 2236
    :try_start_109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "(MessageQueue is using Legacy implementation)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 2238
    nop

    .line 2239
    iget-object p3, v4, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_126
    if-eqz p3, :cond_15b

    .line 2240
    if-eqz v5, :cond_12e

    iget-object v0, p3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, v0, :cond_156

    .line 2241
    :cond_12e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2243
    :cond_156
    add-int/lit8 v1, v1, 0x1

    .line 2239
    iget-object p3, p3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_126

    .line 2245
    :cond_15b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "(Total messages: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", polling="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", quitting="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, v4, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2247
    monitor-exit p0

    .line 2248
    return-void

    .line 2247
    :catchall_197
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_19a
    .catchall {:try_start_109 .. :try_end_19a} :catchall_197

    throw p1
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2263
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    const-wide v1, 0x20b00000001L

    const-wide v3, 0x10800000003L

    const-wide v5, 0x10800000002L

    if-eqz v0, :cond_4a

    .line 2264
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2266
    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    .line 2267
    :goto_1e
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 2268
    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    iget-object v7, v0, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    .line 2269
    invoke-virtual {v7, p1, v1, v2}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2270
    iget-object v0, v0, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2271
    goto :goto_1e

    .line 2273
    :cond_2e
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p0, v0, p1}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I

    .line 2274
    iget-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p0, v0, p1}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I

    .line 2276
    invoke-virtual {p0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result v0

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2277
    invoke-direct {p0}, Landroid/os/MessageQueue;->getQuitting()Z

    move-result v0

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2278
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2279
    return-void

    .line 2282
    :cond_4a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2283
    monitor-enter p0

    .line 2284
    :try_start_4f
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_51
    if-eqz v0, :cond_59

    .line 2285
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2284
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_51

    .line 2287
    :cond_59
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2288
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2289
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_4f .. :try_end_66} :catchall_6a

    .line 2290
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2291
    return-void

    .line 2289
    :catchall_6a
    move-exception p1

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method greylist-max-o enqueueMessage(Landroid/os/Message;J)Z
    .registers 5

    .line 1532
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 1536
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1537
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageConcurrent(Landroid/os/Message;J)Z

    move-result p1

    return p1

    .line 1539
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageLegacy(Landroid/os/Message;J)Z

    move-result p1

    return p1

    .line 1533
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message must have a target."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 226
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 228
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 229
    nop

    .line 230
    return-void

    .line 228
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 229
    throw v0
.end method

.method blacklist hasEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 5

    .line 1689
    if-nez p1, :cond_4

    .line 1690
    const/4 p1, 0x0

    return p1

    .line 1692
    :cond_4
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1693
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p1

    return p1

    .line 1695
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;)Z
    .registers 3

    .line 1746
    if-nez p1, :cond_4

    .line 1747
    const/4 p1, 0x0

    return p1

    .line 1749
    :cond_4
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1750
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;)Z

    move-result p1

    return p1

    .line 1752
    :cond_d
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 5

    .line 1659
    if-nez p1, :cond_4

    .line 1660
    const/4 p1, 0x0

    return p1

    .line 1662
    :cond_4
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1663
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p1

    return p1

    .line 1665
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method greylist-max-r hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 5

    .line 1718
    if-nez p1, :cond_4

    .line 1719
    const/4 p1, 0x0

    return p1

    .line 1721
    :cond_4
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1722
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1724
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method blacklist isBlockedOnSyncBarrier()Z
    .registers 4

    .line 1630
    invoke-static {}, Landroid/app/ActivityThread;->throwIfNotInstrumenting()V

    .line 1631
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1633
    invoke-direct {p0, v2, v1}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    .line 1634
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-static {v0}, Landroid/os/MessageQueue;->first(Ljava/util/concurrent/ConcurrentSkipListSet;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/MessageQueue;->isBarrier(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 1636
    :cond_17
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1637
    if-eqz v0, :cond_20

    iget-object v0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v0, :cond_20

    move v1, v2

    :cond_20
    return v1
.end method

.method public whitelist isIdle()Z
    .registers 2

    .line 346
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_9

    .line 347
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdleConcurrent()Z

    move-result v0

    return v0

    .line 349
    :cond_9
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdleLegacy()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isPolling()Z
    .registers 2

    .line 443
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_9

    .line 444
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingConcurrent()Z

    move-result v0

    return v0

    .line 446
    :cond_9
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLegacy()Z

    move-result v0

    return v0
.end method

.method greylist next()Landroid/os/Message;
    .registers 2

    .line 1091
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_9

    .line 1092
    invoke-direct {p0}, Landroid/os/MessageQueue;->nextConcurrent()Landroid/os/Message;

    move-result-object v0

    return-object v0

    .line 1094
    :cond_9
    invoke-direct {p0}, Landroid/os/MessageQueue;->nextLegacy()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public blacklist peekLastMessageForTest()Landroid/os/Message;
    .registers 2

    .line 1105
    invoke-static {}, Landroid/app/ActivityThread;->throwIfNotInstrumenting()V

    .line 1106
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_c

    .line 1107
    invoke-direct {p0}, Landroid/os/MessageQueue;->peekLastMessageConcurrent()Landroid/os/Message;

    move-result-object v0

    return-object v0

    .line 1109
    :cond_c
    invoke-direct {p0}, Landroid/os/MessageQueue;->peekLastMessageLegacy()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method blacklist peekWhenForTest()Ljava/lang/Long;
    .registers 3

    .line 1595
    invoke-static {}, Landroid/app/ActivityThread;->throwIfNotInstrumenting()V

    .line 1597
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 1598
    invoke-direct {p0, v1, v1}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object v0

    goto :goto_11

    .line 1600
    :cond_d
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->legacyPeekOrPoll(Z)Landroid/os/Message;

    move-result-object v0

    .line 1602
    :goto_11
    if-eqz v0, :cond_1a

    iget-wide v0, v0, Landroid/os/Message;->when:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0
.end method

.method blacklist pollForTest()Landroid/os/Message;
    .registers 3

    .line 1614
    invoke-static {}, Landroid/app/ActivityThread;->throwIfNotInstrumenting()V

    .line 1615
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1616
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object v0

    return-object v0

    .line 1618
    :cond_e
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->legacyPeekOrPoll(Z)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public greylist postSyncBarrier()I
    .registers 2

    .line 1296
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_9

    .line 1297
    invoke-direct {p0}, Landroid/os/MessageQueue;->postSyncBarrierConcurrent()I

    move-result v0

    return v0

    .line 1299
    :cond_9
    invoke-direct {p0}, Landroid/os/MessageQueue;->postSyncBarrierLegacy()I

    move-result v0

    return v0
.end method

.method greylist-max-o quit(Z)V
    .registers 4

    .line 1213
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-eqz v0, :cond_6c

    .line 1217
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_4f

    .line 1218
    new-instance v0, Landroid/os/MessageQueue$QuittingNode;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue$QuittingNode;-><init>(Z)V

    .line 1220
    :goto_d
    sget-object p1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {p1, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object p1

    .line 1221
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isQuittingNode()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1222
    return-void

    .line 1224
    :cond_1b
    iput-object p1, v0, Landroid/os/MessageQueue$QuittingNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 1225
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1226
    move-object v1, p1

    check-cast v1, Landroid/os/MessageQueue$MessageNode;

    iget-object v1, v1, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    iput-object v1, v0, Landroid/os/MessageQueue$QuittingNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    goto :goto_30

    .line 1228
    :cond_2b
    move-object v1, p1

    check-cast v1, Landroid/os/MessageQueue$StateNode;

    iput-object v1, v0, Landroid/os/MessageQueue$QuittingNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 1231
    :goto_30
    sget-object v1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p0, p1, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StackNode;Landroid/os/MessageQueue$QuittingNode;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 1232
    invoke-direct {p0}, Landroid/os/MessageQueue;->incrementMptrRefs()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1234
    :try_start_3f
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_48

    .line 1236
    invoke-direct {p0}, Landroid/os/MessageQueue;->decrementMptrRefs()V

    .line 1237
    goto :goto_4d

    .line 1236
    :catchall_48
    move-exception p1

    invoke-direct {p0}, Landroid/os/MessageQueue;->decrementMptrRefs()V

    .line 1237
    throw p1

    .line 1239
    :cond_4d
    :goto_4d
    return-void

    .line 1241
    :cond_4e
    goto :goto_d

    .line 1243
    :cond_4f
    monitor-enter p0

    .line 1244
    :try_start_50
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_56

    .line 1245
    monitor-exit p0

    return-void

    .line 1247
    :cond_56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 1249
    if-eqz p1, :cond_5f

    .line 1250
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    goto :goto_62

    .line 1252
    :cond_5f
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 1256
    :goto_62
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1257
    monitor-exit p0

    .line 1259
    return-void

    .line 1257
    :catchall_69
    move-exception p1

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_69

    throw p1

    .line 1214
    :cond_6c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Main thread not allowed to quit."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist removeCallbacksAndEqualMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 4

    .line 2109
    if-nez p1, :cond_3

    .line 2110
    return-void

    .line 2113
    :cond_3
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_b

    .line 2114
    invoke-virtual {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V

    goto :goto_e

    .line 2116
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 2118
    :goto_e
    return-void
.end method

.method blacklist removeCallbacksAndEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 12

    .line 2061
    sget-object v7, Landroid/os/Message;->sMatchHandlerAndObjectEquals:Landroid/os/Message$MatchHandlerAndObjectEquals;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/Message$MessageCompare;Z)Z

    .line 2062
    return-void
.end method

.method blacklist removeCallbacksAndEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 7

    .line 2065
    monitor-enter p0

    .line 2066
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2069
    :goto_3
    if-eqz v0, :cond_2c

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2c

    if-eqz p2, :cond_13

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2070
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2071
    :cond_13
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2072
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2073
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2074
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2076
    :cond_23
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 2077
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2078
    nop

    .line 2079
    move-object v0, v1

    goto :goto_3

    .line 2081
    :cond_2c
    if-nez v0, :cond_32

    .line 2082
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 2086
    :cond_32
    :goto_32
    if-eqz v0, :cond_66

    .line 2087
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2088
    if-eqz v1, :cond_63

    .line 2089
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_63

    if-eqz p2, :cond_46

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2090
    :cond_46
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2091
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2092
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2094
    :cond_54
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 2095
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2096
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2097
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v1, :cond_32

    .line 2098
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_32

    .line 2103
    :cond_63
    nop

    .line 2104
    move-object v0, v1

    goto :goto_32

    .line 2105
    :cond_66
    monitor-exit p0

    .line 2106
    return-void

    .line 2105
    :catchall_68
    move-exception p1

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method greylist-max-o removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 4

    .line 2049
    if-nez p1, :cond_3

    .line 2050
    return-void

    .line 2053
    :cond_3
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_b

    .line 2054
    invoke-direct {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V

    goto :goto_e

    .line 2056
    :cond_b
    invoke-direct {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 2058
    :goto_e
    return-void
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 1867
    if-nez p1, :cond_3

    .line 1868
    return-void

    .line 1871
    :cond_3
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_b

    .line 1872
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_e

    .line 1874
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1876
    :goto_e
    return-void
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 5

    .line 1989
    if-eqz p1, :cond_11

    if-nez p2, :cond_5

    goto :goto_11

    .line 1993
    :cond_5
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1994
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_10

    .line 1996
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1998
    :goto_10
    return-void

    .line 1990
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3

    .line 406
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_8

    .line 407
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_b

    .line 409
    :cond_8
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V

    .line 411
    :goto_b
    return-void
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 1806
    if-nez p1, :cond_3

    .line 1807
    return-void

    .line 1809
    :cond_3
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_b

    .line 1810
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_e

    .line 1812
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1814
    :goto_e
    return-void
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 5

    .line 1928
    if-eqz p1, :cond_11

    if-nez p2, :cond_5

    goto :goto_11

    .line 1932
    :cond_5
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1933
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_10

    .line 1935
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1937
    :goto_10
    return-void

    .line 1929
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 538
    if-eqz p1, :cond_e

    .line 541
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_a

    .line 542
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;)V

    goto :goto_d

    .line 544
    :cond_a
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;)V

    .line 546
    :goto_d
    return-void

    .line 539
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fd must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist removeSyncBarrier(I)V
    .registers 3

    .line 1434
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_8

    .line 1435
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeSyncBarrierConcurrent(I)V

    goto :goto_b

    .line 1437
    :cond_8
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeSyncBarrierLegacy(I)V

    .line 1440
    :goto_b
    return-void
.end method

.method public blacklist resetForTest()V
    .registers 2

    .line 1156
    invoke-static {}, Landroid/app/ActivityThread;->throwIfNotInstrumenting()V

    .line 1157
    sget-boolean v0, Landroid/os/MessageQueue;->sUseConcurrent:Z

    if-eqz v0, :cond_b

    .line 1158
    invoke-direct {p0}, Landroid/os/MessageQueue;->resetConcurrent()V

    goto :goto_e

    .line 1160
    :cond_b
    invoke-direct {p0}, Landroid/os/MessageQueue;->resetLegacy()V

    .line 1162
    :goto_e
    return-void
.end method
