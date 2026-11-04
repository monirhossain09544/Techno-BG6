.class public Landroid/os/TestLooperManager;
.super Ljava/lang/Object;
.source "TestLooperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TestLooperManager$LooperHolder;,
        Landroid/os/TestLooperManager$MessageExecution;
    }
.end annotation


# static fields
.field private static final greylist-max-o sHeldLoopers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/TestLooperManager$MessageExecution;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLooper:Landroid/os/Looper;

.field private final blacklist mLooperHolderLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mLooperIsMyLooper:Z

.field private final greylist-max-o mQueue:Landroid/os/MessageQueue;

.field private greylist-max-o mReleased:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecuteQueue(Landroid/os/TestLooperManager;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 1

    iget-object p0, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLooperHolderLatch(Landroid/os/TestLooperManager;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Landroid/os/TestLooperManager;->mLooperHolderLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReleased(Landroid/os/TestLooperManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/TestLooperManager;->mReleased:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Looper;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 46
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/os/TestLooperManager;->mLooperHolderLatch:Ljava/util/concurrent/CountDownLatch;

    .line 54
    sget-object v0, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 55
    :try_start_15
    sget-object v2, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 58
    sget-object v2, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_5b

    .line 60
    iput-object p1, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    .line 61
    iget-object v0, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v0, p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    iput-boolean v1, p0, Landroid/os/TestLooperManager;->mLooperIsMyLooper:Z

    .line 63
    iget-boolean v0, p0, Landroid/os/TestLooperManager;->mLooperIsMyLooper:Z

    if-nez v0, :cond_4d

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/os/TestLooperManager$LooperHolder;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroid/os/TestLooperManager$LooperHolder;-><init>(Landroid/os/TestLooperManager;Landroid/os/TestLooperManager-IA;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    invoke-direct {p0}, Landroid/os/TestLooperManager;->waitForLooperHolder()V

    goto :goto_52

    .line 68
    :cond_4d
    iget-object p1, p0, Landroid/os/TestLooperManager;->mLooperHolderLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 70
    :goto_52
    return-void

    .line 56
    :cond_53
    :try_start_53
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "TestLooperManager already held for this looper"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :catchall_5b
    move-exception p1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method private greylist-max-o checkReleased()V
    .registers 3

    .line 221
    iget-boolean v0, p0, Landroid/os/TestLooperManager;->mReleased:Z

    if-nez v0, :cond_5

    .line 224
    return-void

    .line 222
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "release() has already be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist waitForLooperHolder()V
    .registers 2

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/os/TestLooperManager;->mLooperHolderLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 237
    goto :goto_e

    .line 235
    :catch_6
    move-exception v0

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 238
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist execute(Landroid/os/Message;)V
    .registers 4

    .line 162
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 163
    iget-object v0, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 165
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_37

    .line 167
    :cond_11
    iget-boolean v0, p0, Landroid/os/TestLooperManager;->mLooperIsMyLooper:Z

    if-nez v0, :cond_45

    .line 170
    new-instance v0, Landroid/os/TestLooperManager$MessageExecution;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/TestLooperManager$MessageExecution;-><init>(Landroid/os/TestLooperManager-IA;)V

    .line 171
    invoke-static {v0, p1}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fputm(Landroid/os/TestLooperManager$MessageExecution;Landroid/os/Message;)V

    .line 172
    monitor-enter v0

    .line 173
    :try_start_1f
    iget-object p1, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_42

    .line 176
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_28
    .catchall {:try_start_24 .. :try_end_27} :catchall_42

    .line 179
    goto :goto_30

    .line 177
    :catch_28
    move-exception p1

    .line 178
    :try_start_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 180
    :goto_30
    invoke-static {v0}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fgetresponse(Landroid/os/TestLooperManager$MessageExecution;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_38

    .line 183
    monitor-exit v0

    .line 185
    :goto_37
    return-void

    .line 181
    :cond_38
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fgetresponse(Landroid/os/TestLooperManager$MessageExecution;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 183
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_42

    throw p1

    .line 168
    :cond_45
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot call execute from non Looper thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getMessageQueue()Landroid/os/MessageQueue;
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 77
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public greylist getQueue()Landroid/os/MessageQueue;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-virtual {p0}, Landroid/os/TestLooperManager;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasMessages(Landroid/os/Handler;Ljava/lang/Object;I)Z
    .registers 5

    .line 204
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 205
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1, p3, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist hasMessages(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .registers 5

    .line 216
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 217
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1, p3, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist isBlockedOnSyncBarrier()Z
    .registers 2

    .line 135
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 136
    invoke-direct {p0}, Landroid/os/TestLooperManager;->waitForLooperHolder()V

    .line 137
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->isBlockedOnSyncBarrier()Z

    move-result v0

    return v0
.end method

.method public whitelist next()Landroid/os/Message;
    .registers 2

    .line 94
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 95
    invoke-direct {p0}, Landroid/os/TestLooperManager;->waitForLooperHolder()V

    .line 96
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peekWhen()Ljava/lang/Long;
    .registers 2

    .line 125
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 126
    invoke-direct {p0}, Landroid/os/TestLooperManager;->waitForLooperHolder()V

    .line 127
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->peekWhenForTest()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public whitelist poll()Landroid/os/Message;
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 111
    invoke-direct {p0}, Landroid/os/TestLooperManager;->waitForLooperHolder()V

    .line 112
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->pollForTest()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public whitelist recycle(Landroid/os/Message;)V
    .registers 2

    .line 192
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 193
    invoke-virtual {p1}, Landroid/os/Message;->recycleUnchecked()V

    .line 194
    return-void
.end method

.method public whitelist release()V
    .registers 4

    .line 145
    sget-object v0, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 146
    :try_start_3
    sget-object v1, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1d

    .line 148
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/TestLooperManager;->mReleased:Z

    .line 150
    iget-object v0, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Landroid/os/TestLooperManager$MessageExecution;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/TestLooperManager$MessageExecution;-><init>(Landroid/os/TestLooperManager-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 151
    return-void

    .line 147
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method
