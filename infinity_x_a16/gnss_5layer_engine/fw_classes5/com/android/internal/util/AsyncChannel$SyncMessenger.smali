.class Lcom/android/internal/util/AsyncChannel$SyncMessenger;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncMessenger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
    }
.end annotation


# static fields
.field private static greylist-max-o sCount:I

.field private static greylist-max-o sStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/internal/util/AsyncChannel$SyncMessenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

.field private greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private greylist-max-o mMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 764
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    .line 766
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    return-void
.end method

.method private static greylist-max-o obtain()Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    .registers 6

    .line 807
    sget-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v0

    .line 808
    :try_start_3
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 809
    new-instance v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;-><init>()V

    .line 810
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncHandler-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    .line 811
    iget-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 812
    new-instance v2, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel-IA;)V

    iput-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    .line 813
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    goto :goto_58

    .line 815
    :cond_50
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    .line 817
    :goto_58
    monitor-exit v0

    .line 818
    return-object v1

    .line 817
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private greylist-max-o recycle()V
    .registers 3

    .line 825
    sget-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v0

    .line 826
    :try_start_3
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static greylist-max-o sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .registers 7

    .line 837
    invoke-static {}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->obtain()Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    move-result-object v0

    .line 838
    nop

    .line 840
    const/4 v1, 0x0

    if-eqz p0, :cond_5b

    if-eqz p1, :cond_5b

    .line 841
    :try_start_a
    iget-object v2, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 842
    iget-object v2, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v2}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmLockObject(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_15} :catch_53
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_4a

    .line 843
    :try_start_15
    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmResultMsg(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 844
    const-string v3, "AsyncChannel"

    const-string v4, "mResultMsg should be null here"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3, v1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fputmResultMsg(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)V

    .line 847
    :cond_29
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 848
    iget-object p0, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {p0}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmLockObject(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 849
    iget-object p0, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {p0}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmResultMsg(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_47

    .line 850
    :try_start_3b
    iget-object p1, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {p1, v1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fputmResultMsg(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)V

    .line 851
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_43

    move-object v1, p0

    goto :goto_5b

    :catchall_43
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_48

    :catchall_47
    move-exception p0

    :goto_48
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw p0
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4a} :catch_53
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4a} :catch_4a

    .line 855
    :catch_4a
    move-exception p0

    .line 856
    const-string p1, "AsyncChannel"

    const-string v2, "error in sendMessageSynchronously"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 853
    :catch_53
    move-exception p0

    .line 854
    const-string p1, "AsyncChannel"

    const-string v2, "error in sendMessageSynchronously"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    :cond_5b
    :goto_5b
    nop

    .line 858
    :goto_5c
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->recycle()V

    .line 859
    return-object v1
.end method
