.class public Landroid/os/RemoteCallbackList;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallbackList$Interface;,
        Landroid/os/RemoteCallbackList$Builder;,
        Landroid/os/RemoteCallbackList$FrozenCalleePolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_MAX_QUEUE_SIZE:I = 0x3e8

.field public static final whitelist FROZEN_CALLEE_POLICY_DROP:I = 0x3

.field public static final whitelist FROZEN_CALLEE_POLICY_ENQUEUE_ALL:I = 0x1

.field public static final whitelist FROZEN_CALLEE_POLICY_ENQUEUE_MOST_RECENT:I = 0x2

.field public static final whitelist FROZEN_CALLEE_POLICY_UNSET:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RemoteCallbackList"


# instance fields
.field private greylist-max-o mActiveBroadcast:[Ljava/lang/Object;

.field private greylist-max-o mBroadcastCount:I

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mFrozenCalleePolicy:I

.field greylist mInterfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/RemoteCallbackList<",
            "TE;>.Interface;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mKilled:Z

.field private final blacklist mMaxQueueSize:I

.field private greylist-max-o mRecentCallers:Ljava/lang/StringBuilder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/os/RemoteCallbackList;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/os/RemoteCallbackList;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrozenCalleePolicy(Landroid/os/RemoteCallbackList;)I
    .registers 1

    iget p0, p0, Landroid/os/RemoteCallbackList;->mFrozenCalleePolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxQueueSize(Landroid/os/RemoteCallbackList;)I
    .registers 1

    iget p0, p0, Landroid/os/RemoteCallbackList;->mMaxQueueSize:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 382
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/os/RemoteCallbackList;-><init>(IILjava/util/concurrent/Executor;)V

    .line 383
    return-void
.end method

.method private constructor blacklist <init>(IILjava/util/concurrent/Executor;)V
    .registers 5

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    .line 402
    iput p1, p0, Landroid/os/RemoteCallbackList;->mFrozenCalleePolicy:I

    .line 403
    iput p2, p0, Landroid/os/RemoteCallbackList;->mMaxQueueSize:I

    .line 404
    iput-object p3, p0, Landroid/os/RemoteCallbackList;->mExecutor:Ljava/util/concurrent/Executor;

    .line 405
    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/util/concurrent/Executor;Landroid/os/RemoteCallbackList-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/os/RemoteCallbackList;-><init>(IILjava/util/concurrent/Executor;)V

    return-void
.end method

.method private blacklist beginBroadcastInternal()I
    .registers 6

    .line 582
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 583
    :try_start_3
    iget v1, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    if-gtz v1, :cond_2f

    .line 588
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iput v1, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 589
    const/4 v2, 0x0

    if-gtz v1, :cond_14

    .line 590
    monitor-exit v0

    return v2

    .line 592
    :cond_14
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 593
    if-eqz v3, :cond_1b

    array-length v4, v3

    if-ge v4, v1, :cond_1f

    .line 594
    :cond_1b
    new-array v3, v1, [Ljava/lang/Object;

    iput-object v3, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 596
    :cond_1f
    nop

    :goto_20
    if-ge v2, v1, :cond_2d

    .line 597
    iget-object v4, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 599
    :cond_2d
    monitor-exit v0

    return v1

    .line 584
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "beginBroadcast() called while already in a broadcast"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private blacklist logExcessiveInterfaces()V
    .registers 5

    .line 793
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    int-to-long v0, v0

    .line 796
    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_68

    .line 797
    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1a

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    .line 800
    :cond_1a
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_68

    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_68

    .line 801
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_68

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More than 3000 remote callbacks registered. Recent callers:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    const-string v1, "RemoteCallbackList"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    .line 811
    :cond_68
    return-void
.end method


# virtual methods
.method public whitelist beginBroadcast()I
    .registers 2

    .line 575
    iget v0, p0, Landroid/os/RemoteCallbackList;->mFrozenCalleePolicy:I

    if-nez v0, :cond_9

    .line 578
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;->beginBroadcastInternal()I

    move-result v0

    return v0

    .line 576
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist broadcast(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "TE;TC;>;)V"
        }
    .end annotation

    .line 706
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 708
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1a

    .line 709
    :try_start_7
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 712
    :catchall_15
    move-exception p1

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 713
    throw p1

    .line 712
    :cond_1a
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 713
    nop

    .line 714
    return-void
.end method

.method public whitelist broadcast(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TE;>;)V"
        }
    .end annotation

    .line 672
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;->beginBroadcastInternal()I

    move-result v0

    .line 674
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    .line 675
    :try_start_7
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Landroid/os/RemoteCallbackList$Interface;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList$Interface;->addCallback(Ljava/util/function/Consumer;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_13

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 678
    :catchall_13
    move-exception p1

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 679
    throw p1

    .line 678
    :cond_18
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 679
    nop

    .line 680
    return-void
.end method

.method public greylist-max-o broadcastForEachCookie(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TC;>;)V"
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 691
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16

    .line 692
    :try_start_7
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_11

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 695
    :catchall_11
    move-exception p1

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 696
    throw p1

    .line 695
    :cond_16
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 696
    nop

    .line 697
    return-void
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 785
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 786
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "callbacks: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 787
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "killed: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 788
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "broadcasts count: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 789
    monitor-exit v0

    .line 790
    return-void

    .line 789
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public whitelist finishBroadcast()V
    .registers 6

    .line 645
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 646
    :try_start_3
    iget v1, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    if-ltz v1, :cond_1b

    .line 651
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 652
    if-eqz v1, :cond_16

    .line 653
    iget v2, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 654
    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_16

    .line 655
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 654
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 659
    :cond_16
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 660
    monitor-exit v0

    .line 661
    return-void

    .line 647
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "finishBroadcast() called outside of a broadcast"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist getBroadcastCookie(I)Ljava/lang/Object;
    .registers 3

    .line 634
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Landroid/os/RemoteCallbackList$Interface;

    iget-object p1, p1, Landroid/os/RemoteCallbackList$Interface;->mCookie:Ljava/lang/Object;

    return-object p1
.end method

.method public whitelist getBroadcastItem(I)Landroid/os/IInterface;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Landroid/os/RemoteCallbackList$Interface;

    iget-object p1, p1, Landroid/os/RemoteCallbackList$Interface;->mInterface:Landroid/os/IInterface;

    return-object p1
.end method

.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public whitelist getFrozenCalleePolicy()I
    .registers 2

    .line 352
    iget v0, p0, Landroid/os/RemoteCallbackList;->mFrozenCalleePolicy:I

    return v0
.end method

.method public whitelist getMaxQueueSize()I
    .registers 2

    .line 362
    iget v0, p0, Landroid/os/RemoteCallbackList;->mMaxQueueSize:I

    return v0
.end method

.method public whitelist getRegisteredCallbackCookie(I)Ljava/lang/Object;
    .registers 4

    .line 775
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 776
    :try_start_3
    iget-boolean v1, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    if-eqz v1, :cond_a

    .line 777
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 779
    :cond_a
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList$Interface;

    iget-object p1, p1, Landroid/os/RemoteCallbackList$Interface;->mCookie:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    .line 780
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist getRegisteredCallbackCount()I
    .registers 3

    .line 729
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 730
    :try_start_3
    iget-boolean v1, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    if-eqz v1, :cond_a

    .line 731
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 733
    :cond_a
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 734
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getRegisteredCallbackItem(I)Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 753
    :try_start_3
    iget-boolean v1, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    if-eqz v1, :cond_a

    .line 754
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 756
    :cond_a
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList$Interface;

    iget-object p1, p1, Landroid/os/RemoteCallbackList$Interface;->mInterface:Landroid/os/IInterface;

    monitor-exit v0

    return-object p1

    .line 757
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist kill()V
    .registers 7

    .line 500
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 501
    :try_start_3
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_25

    .line 502
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList$Interface;

    .line 503
    iget-object v4, v3, Landroid/os/RemoteCallbackList$Interface;->mInterface:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 504
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList$Interface;->maybeUnsubscribeFromFrozenCallback()V

    .line 501
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 506
    :cond_25
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 507
    iput-boolean v2, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    .line 508
    monitor-exit v0

    .line 509
    return-void

    .line 508
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public whitelist onCallbackDied(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 516
    return-void
.end method

.method public whitelist onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 533
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    .line 534
    return-void
.end method

.method public whitelist register(Landroid/os/IInterface;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 443
    :try_start_3
    iget-boolean v1, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 444
    monitor-exit v0

    return v2

    .line 447
    :cond_a
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;->logExcessiveInterfaces()V

    .line 448
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2a

    .line 450
    :try_start_11
    new-instance v3, Landroid/os/RemoteCallbackList$Interface;

    invoke-direct {v3, p0, p1, p2}, Landroid/os/RemoteCallbackList$Interface;-><init>(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 452
    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 453
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList$Interface;->maybeSubscribeToFrozenCallback()V

    .line 454
    iget-object p1, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_24} :catch_27
    .catchall {:try_start_11 .. :try_end_24} :catchall_2a

    .line 455
    :try_start_24
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 456
    :catch_27
    move-exception p1

    .line 457
    monitor-exit v0

    return v2

    .line 459
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public whitelist unregister(Landroid/os/IInterface;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 481
    :try_start_3
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList$Interface;

    .line 482
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    .line 483
    iget-object v2, p1, Landroid/os/RemoteCallbackList$Interface;->mInterface:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 484
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList$Interface;->maybeUnsubscribeFromFrozenCallback()V

    .line 485
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 487
    :cond_21
    monitor-exit v0

    return v1

    .line 488
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method
