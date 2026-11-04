.class public Landroid/os/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Handler$Callback;,
        Landroid/os/Handler$BlockingRunnable;,
        Landroid/os/Handler$MessengerImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o FIND_POTENTIAL_LEAKS:Z = false

.field private static greylist-max-o MAIN_THREAD_HANDLER:Landroid/os/Handler; = null

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Handler"


# instance fields
.field final greylist-max-o mAsynchronous:Z

.field final greylist mCallback:Landroid/os/Handler$Callback;

.field private final blacklist mIsShared:Z

.field final greylist mLooper:Landroid/os/Looper;

.field greylist mMessenger:Landroid/os/IMessenger;

.field final greylist-max-o mQueue:Landroid/os/MessageQueue;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 156
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Handler$Callback;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 180
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Handler$Callback;Z)V
    .registers 4

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    .line 251
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1b

    .line 256
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 257
    iput-object p1, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    .line 258
    iput-boolean p2, p0, Landroid/os/Handler;->mAsynchronous:Z

    .line 259
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/Handler;->mIsShared:Z

    .line 260
    return-void

    .line 252
    :cond_1b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t create handler inside thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 253
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " that has not called Looper.prepare()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Landroid/os/Looper;)V
    .registers 4

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 189
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 4

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 200
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V

    .line 284
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V
    .registers 5

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    .line 290
    iget-object p1, p1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object p1, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 291
    iput-object p2, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    .line 292
    iput-boolean p3, p0, Landroid/os/Handler;->mAsynchronous:Z

    .line 293
    iput-boolean p4, p0, Landroid/os/Handler;->mIsShared:Z

    .line 294
    return-void
.end method

.method public constructor greylist-max-r <init>(Z)V
    .registers 3

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 221
    return-void
.end method

.method public static whitelist createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 4

    .line 310
    if-eqz p0, :cond_a

    .line 311
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object v0

    .line 310
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "looper must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 4

    .line 328
    if-eqz p0, :cond_13

    .line 329
    if-eqz p1, :cond_b

    .line 330
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object v0

    .line 329
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 328
    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "looper must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist disallowNullArgumentIfShared(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 833
    iget-boolean v0, p0, Landroid/os/Handler;->mIsShared:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    .line 834
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null argument disallowed for shared handler. Consider creating your own Handler instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 837
    :cond_f
    :goto_f
    return-object p1
.end method

.method private greylist-max-o enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z
    .registers 6

    .line 822
    invoke-static {p1, p2, p3, p4}, Landroid/os/Handler;->onBeforeEnqueue(Landroid/os/MessageQueue;Landroid/os/Message;J)V

    .line 823
    iput-object p0, p2, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 824
    invoke-static {}, Landroid/os/ThreadLocalWorkSource;->getUid()I

    move-result v0

    iput v0, p2, Landroid/os/Message;->workSourceUid:I

    .line 826
    iget-boolean v0, p0, Landroid/os/Handler;->mAsynchronous:Z

    if-eqz v0, :cond_13

    .line 827
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 829
    :cond_13
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/MessageQueue;->enqueueMessage(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public static greylist-max-r getMain()Landroid/os/Handler;
    .registers 2

    .line 337
    sget-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 338
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    .line 340
    :cond_f
    sget-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method private static greylist-max-o getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 2

    .line 1056
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1057
    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 1058
    return-object v0
.end method

.method private static greylist getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;
    .registers 3

    .line 1063
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1064
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1065
    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 1066
    return-object v0
.end method

.method private static greylist-max-o handleCallback(Landroid/os/Message;)V
    .registers 1

    .line 1070
    iget-object p0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1071
    return-void
.end method

.method public static greylist-max-o mainIfNull(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    .line 346
    if-nez p0, :cond_6

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method private static blacklist onBeforeEnqueue(Landroid/os/MessageQueue;Landroid/os/Message;J)V
    .registers 4

    .line 818
    return-void
.end method


# virtual methods
.method public whitelist dispatchMessage(Landroid/os/Message;)V
    .registers 3

    .line 124
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    .line 125
    invoke-static {p1}, Landroid/os/Handler;->handleCallback(Landroid/os/Message;)V

    goto :goto_18

    .line 127
    :cond_8
    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_15

    .line 128
    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 129
    return-void

    .line 132
    :cond_15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 134
    :goto_18
    return-void
.end method

.method public final whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_3d

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "looper uninitialized"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_55

    .line 1014
    :cond_3d
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1016
    :goto_55
    return-void
.end method

.method public final greylist-max-o dumpMine(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_3d

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "looper uninitialized"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_55

    .line 1026
    :cond_3d
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p0}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1028
    :goto_55
    return-void
.end method

.method public final greylist-max-o executeOrSendMessage(Landroid/os/Message;)Z
    .registers 4

    .line 807
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 808
    invoke-virtual {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 809
    const/4 p1, 0x1

    return p1

    .line 811
    :cond_d
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method final greylist getIMessenger()Landroid/os/IMessenger;
    .registers 4

    .line 1039
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    monitor-enter v0

    .line 1040
    :try_start_3
    iget-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    if-eqz v1, :cond_b

    .line 1041
    iget-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    monitor-exit v0

    return-object v1

    .line 1043
    :cond_b
    new-instance v1, Landroid/os/Handler$MessengerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/os/Handler$MessengerImpl;-><init>(Landroid/os/Handler;Landroid/os/Handler-IA;)V

    iput-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    .line 1044
    iget-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    monitor-exit v0

    return-object v1

    .line 1045
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public final whitelist getLooper()Landroid/os/Looper;
    .registers 2

    .line 1006
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 4

    .line 376
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 377
    iget-object p1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 379
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getTraceName(Landroid/os/Message;)Ljava/lang/String;
    .registers 5

    .line 352
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    instance-of v0, v0, Landroid/os/TraceNameSupplier;

    if-eqz v0, :cond_f

    .line 353
    iget-object p1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    check-cast p1, Landroid/os/TraceNameSupplier;

    invoke-interface {p1}, Landroid/os/TraceNameSupplier;->getTraceName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 356
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_37

    .line 359
    iget-object p1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 361
    :cond_37
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    :goto_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 118
    return-void
.end method

.method public final whitelist hasCallbacks(Ljava/lang/Runnable;)Z
    .registers 4

    .line 999
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final blacklist hasEqualMessages(ILjava/lang/Object;)Z
    .registers 4

    .line 986
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->hasEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist hasMessages(I)Z
    .registers 4

    .line 941
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist hasMessages(ILjava/lang/Object;)Z
    .registers 4

    .line 971
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final greylist-max-o hasMessagesOrCallbacks()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 958
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public final whitelist obtainMessage()Landroid/os/Message;
    .registers 2

    .line 390
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainMessage(I)Landroid/os/Message;
    .registers 2

    .line 402
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist obtainMessage(III)Landroid/os/Message;
    .registers 4

    .line 431
    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 5

    .line 446
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 3

    .line 416
    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist post(Ljava/lang/Runnable;)Z
    .registers 4

    .line 461
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final whitelist postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .registers 2

    .line 583
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final whitelist postAtTime(Ljava/lang/Runnable;J)Z
    .registers 4

    .line 483
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final whitelist postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .registers 5

    .line 510
    invoke-static {p1, p2}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final blacklist postDelayed(Ljava/lang/Runnable;IJ)Z
    .registers 5

    .line 538
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final whitelist postDelayed(Ljava/lang/Runnable;J)Z
    .registers 4

    .line 533
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final whitelist postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .registers 5

    .line 564
    invoke-static {p1, p2}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final whitelist removeCallbacks(Ljava/lang/Runnable;)V
    .registers 4

    .line 652
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 653
    return-void
.end method

.method public final whitelist removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4

    .line 666
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 667
    return-void
.end method

.method public final blacklist removeCallbacksAndEqualMessages(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 929
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-direct {p0, p1}, Landroid/os/Handler;->disallowNullArgumentIfShared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessages(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 930
    return-void
.end method

.method public final whitelist removeCallbacksAndMessages(Ljava/lang/Object;)V
    .registers 3

    .line 904
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-direct {p0, p1}, Landroid/os/Handler;->disallowNullArgumentIfShared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/os/MessageQueue;->removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 905
    return-void
.end method

.method public final blacklist removeEqualMessages(ILjava/lang/Object;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 895
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;->disallowNullArgumentIfShared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 896
    return-void
.end method

.method public final whitelist removeMessages(I)V
    .registers 4

    .line 856
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 857
    return-void
.end method

.method public final whitelist removeMessages(ILjava/lang/Object;)V
    .registers 4

    .line 870
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;->disallowNullArgumentIfShared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 871
    return-void
.end method

.method public final greylist-max-o runWithScissors(Ljava/lang/Runnable;J)Z
    .registers 6

    .line 627
    if-eqz p1, :cond_28

    .line 630
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1f

    .line 634
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_15

    .line 635
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 636
    const/4 p1, 0x1

    return p1

    .line 639
    :cond_15
    new-instance v0, Landroid/os/Handler$BlockingRunnable;

    invoke-direct {v0, p1}, Landroid/os/Handler$BlockingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 640
    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler$BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    move-result p1

    return p1

    .line 631
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeout must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 628
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "runnable must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist sendEmptyMessage(I)Z
    .registers 4

    .line 691
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist sendEmptyMessageAtTime(IJ)Z
    .registers 5

    .line 720
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 721
    iput p1, v0, Landroid/os/Message;->what:I

    .line 722
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final whitelist sendEmptyMessageDelayed(IJ)Z
    .registers 5

    .line 704
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 705
    iput p1, v0, Landroid/os/Message;->what:I

    .line 706
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final whitelist sendMessage(Landroid/os/Message;)Z
    .registers 4

    .line 679
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final whitelist sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .registers 5

    .line 787
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 788
    if-nez v0, :cond_27

    .line 789
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sendMessageAtFrontOfQueue() called with no mQueue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 791
    const-string v0, "Looper"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    const/4 p1, 0x0

    return p1

    .line 794
    :cond_27
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/os/Handler;->enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public whitelist sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 5

    .line 764
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 765
    if-nez v0, :cond_27

    .line 766
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " sendMessageAtTime() called with no mQueue"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 768
    const-string p2, "Looper"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    const/4 p1, 0x0

    return p1

    .line 771
    :cond_27
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/Handler;->enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final whitelist sendMessageDelayed(Landroid/os/Message;J)Z
    .registers 7

    .line 738
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_7

    .line 739
    move-wide p2, v0

    .line 741
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1033
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1032
    return-object v0
.end method
