.class public final Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;
    }
.end annotation


# static fields
.field static final blacklist DISPATCH_HANDLED:I = 0x1

.field static final blacklist DISPATCH_IN_PROGRESS:I = -0x1

.field static final blacklist DISPATCH_NOT_HANDLED:I = 0x0

.field private static final blacklist INPUT_SESSION_NOT_RESPONDING_TIMEOUT:J = 0x9c4L


# instance fields
.field private final blacklist mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

.field private blacklist mInputChannel:Landroid/view/InputChannel;

.field private blacklist mInputSession:Landroid/media/tv/TvInputManager$Session;

.field private final blacklist mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

.field private final blacklist mSeq:I

.field private final blacklist mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

.field private final blacklist mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mToken:Landroid/os/IBinder;

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->recyclePendingEventLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseInternal(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->releaseInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppManager;IILandroid/util/SparseArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/view/InputChannel;",
            "Landroid/media/tv/interactive/ITvInteractiveAppManager;",
            "II",
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;",
            ">;)V"
        }
    .end annotation

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    .line 1092
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 1093
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    .line 1101
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    .line 1102
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    .line 1103
    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    .line 1104
    iput p4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    .line 1105
    iput p5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSeq:I

    .line 1106
    iput-object p6, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 1107
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppManager;IILandroid/util/SparseArray;Landroid/media/tv/interactive/TvInteractiveAppManager-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppManager;IILandroid/util/SparseArray;)V

    return-void
.end method

.method private blacklist flushPendingEventsLocked()V
    .registers 7

    .line 1849
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->removeMessages(I)V

    .line 1851
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1852
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v0, :cond_26

    .line 1853
    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1854
    iget-object v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    invoke-virtual {v5, v1, v4, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1856
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1857
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1852
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1859
    :cond_26
    return-void
.end method

.method private blacklist obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;
    .registers 7

    .line 1881
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    .line 1882
    if-nez v0, :cond_10

    .line 1883
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager-IA;)V

    .line 1885
    :cond_10
    iput-object p1, v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1886
    iput-object p2, v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 1887
    iput-object p3, v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

    .line 1888
    iput-object p4, v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 1889
    return-object v0
.end method

.method private blacklist recyclePendingEventLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V
    .registers 3

    .line 1966
    invoke-virtual {p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->recycle()V

    .line 1967
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1968
    return-void
.end method

.method private blacklist releaseInternal()V
    .registers 4

    .line 1862
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    .line 1863
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    monitor-enter v1

    .line 1864
    :try_start_6
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_1f

    .line 1865
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    if-eqz v2, :cond_18

    .line 1866
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->flushPendingEventsLocked()V

    .line 1867
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;->dispose()V

    .line 1868
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    .line 1870
    :cond_18
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 1871
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    .line 1873
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_2f

    .line 1874
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1875
    :try_start_23
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSeq:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 1876
    monitor-exit v0

    .line 1877
    return-void

    .line 1876
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v1

    .line 1873
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private blacklist sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V
    .registers 5

    .line 1910
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    monitor-enter v0

    .line 1911
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)I

    move-result v1

    .line 1912
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 1913
    monitor-exit v0

    return-void

    .line 1915
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 1917
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;Z)V

    .line 1918
    return-void

    .line 1915
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private blacklist sendInputEventOnMainLooperLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)I
    .registers 5

    .line 1921
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_62

    .line 1922
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    if-nez v0, :cond_17

    .line 1923
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    .line 1926
    :cond_17
    iget-object v0, p1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1927
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    .line 1928
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1929
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1930
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1932
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1933
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1934
    const/4 p1, -0x1

    return p1

    .line 1937
    :cond_3e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to send input event to session: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " dropping:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TvInteractiveAppManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_62
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method blacklist createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6

    .line 1154
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1155
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return-void

    .line 1159
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->createBiInteractiveApp(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1162
    nop

    .line 1163
    return-void

    .line 1160
    :catch_17
    move-exception p1

    .line 1161
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist createMediaView(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6

    .line 1521
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1526
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_18

    .line 1527
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-void

    .line 1531
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_27

    .line 1534
    nop

    .line 1535
    return-void

    .line 1532
    :catch_27
    move-exception p1

    .line 1533
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1524
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "view must be attached to a window"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist destroyBiInteractiveApp(Ljava/lang/String;)V
    .registers 5

    .line 1166
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1167
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    return-void

    .line 1171
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->destroyBiInteractiveApp(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1174
    nop

    .line 1175
    return-void

    .line 1172
    :catch_17
    move-exception p1

    .line 1173
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 7

    .line 1606
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    monitor-enter v0

    .line 1610
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-nez v1, :cond_13

    .line 1611
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 1613
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    move-result-object p1

    .line 1614
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_27

    .line 1616
    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)I

    move-result p1

    monitor-exit v0

    return p1

    .line 1620
    :cond_27
    iget-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1621
    invoke-virtual {p1, p3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1622
    iget-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    invoke-virtual {p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1623
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    .line 1624
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public blacklist dispatchSurfaceChanged(III)V
    .registers 10

    .line 1579
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1580
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    return-void

    .line 1584
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_1a

    .line 1587
    nop

    .line 1588
    return-void

    .line 1585
    :catch_1a
    move-exception v0

    move-object p1, v0

    .line 1586
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist finishedInputEvent(IZZ)V
    .registers 7

    .line 1945
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    monitor-enter v0

    .line 1946
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 1947
    if-gez p1, :cond_d

    .line 1948
    monitor-exit v0

    return-void

    .line 1951
    :cond_d
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    .line 1952
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1954
    if-eqz p3, :cond_37

    .line 1955
    const-string p1, "TvInteractiveAppManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for session to handle input event after 2500 ms: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 1958
    :cond_37
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const/4 p3, 0x2

    invoke-virtual {p1, p3, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1960
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_42

    .line 1962
    invoke-virtual {p0, v1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;Z)V

    .line 1963
    return-void

    .line 1960
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public blacklist getInputSession()Landroid/media/tv/TvInputManager$Session;
    .registers 2

    .line 1110
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method blacklist invokeFinishedInputEventCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;Z)V
    .registers 3

    .line 1894
    iput-boolean p2, p1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mHandled:Z

    .line 1895
    iget-object p2, p1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 1898
    invoke-virtual {p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->run()V

    goto :goto_1f

    .line 1902
    :cond_12
    iget-object p2, p1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 1903
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1904
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1906
    :goto_1f
    return-void
.end method

.method public blacklist notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .registers 5

    .line 1665
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1666
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    return-void

    .line 1670
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyAdBufferConsumed(Landroid/os/IBinder;Landroid/media/tv/AdBuffer;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_21
    .catchall {:try_start_c .. :try_end_15} :catchall_1f

    .line 1674
    if-eqz p1, :cond_1e

    .line 1675
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    .line 1678
    :cond_1e
    return-void

    .line 1674
    :catchall_1f
    move-exception v0

    goto :goto_27

    .line 1671
    :catch_21
    move-exception v0

    .line 1672
    :try_start_22
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 1674
    :goto_27
    if-eqz p1, :cond_30

    .line 1675
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    .line 1677
    :cond_30
    throw v0
.end method

.method public blacklist notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 5

    .line 1650
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1651
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    return-void

    .line 1655
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyAdResponse(Landroid/os/IBinder;Landroid/media/tv/AdResponse;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1658
    nop

    .line 1659
    return-void

    .line 1656
    :catch_17
    move-exception p1

    .line 1657
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 5

    .line 1633
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1634
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return-void

    .line 1638
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyBroadcastInfoResponse(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoResponse;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1641
    nop

    .line 1642
    return-void

    .line 1639
    :catch_17
    move-exception p1

    .line 1640
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyContentAllowed()V
    .registers 4

    .line 1792
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1793
    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    return-void

    .line 1797
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyContentAllowed(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1800
    nop

    .line 1801
    return-void

    .line 1798
    :catch_17
    move-exception v0

    .line 1799
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 5

    .line 1807
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1808
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    return-void

    .line 1812
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyContentBlocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_1b

    .line 1815
    nop

    .line 1816
    return-void

    .line 1813
    :catch_1b
    move-exception p1

    .line 1814
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1371
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1372
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return-void

    .line 1376
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1379
    nop

    .line 1380
    return-void

    .line 1377
    :catch_17
    move-exception p1

    .line 1378
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1432
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1433
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    return-void

    .line 1437
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyRecordingConnectionFailed(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1440
    nop

    .line 1441
    return-void

    .line 1438
    :catch_17
    move-exception p1

    .line 1439
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1444
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1445
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    return-void

    .line 1449
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyRecordingDisconnected(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1452
    nop

    .line 1453
    return-void

    .line 1450
    :catch_17
    move-exception p1

    .line 1451
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyRecordingError(Ljava/lang/String;I)V
    .registers 6

    .line 1468
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1469
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return-void

    .line 1473
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyRecordingError(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1476
    nop

    .line 1477
    return-void

    .line 1474
    :catch_17
    move-exception p1

    .line 1475
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1480
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1481
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    return-void

    .line 1485
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyRecordingScheduled(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1488
    nop

    .line 1489
    return-void

    .line 1486
    :catch_17
    move-exception p1

    .line 1487
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1322
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1323
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void

    .line 1327
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyRecordingStarted(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1330
    nop

    .line 1331
    return-void

    .line 1328
    :catch_17
    move-exception p1

    .line 1329
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyRecordingStopped(Ljava/lang/String;)V
    .registers 5

    .line 1334
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1335
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return-void

    .line 1339
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyRecordingStopped(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1342
    nop

    .line 1343
    return-void

    .line 1340
    :catch_17
    move-exception p1

    .line 1341
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    .line 1456
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1457
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return-void

    .line 1461
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyRecordingTuned(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1464
    nop

    .line 1465
    return-void

    .line 1462
    :catch_17
    move-exception p1

    .line 1463
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifySignalStrength(I)V
    .registers 5

    .line 1822
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1823
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    return-void

    .line 1827
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifySignalStrength(Landroid/os/IBinder;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1830
    nop

    .line 1831
    return-void

    .line 1828
    :catch_17
    move-exception p1

    .line 1829
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V
    .registers 10

    .line 1420
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1421
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return-void

    .line 1425
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    move-object v2, p1

    move-wide v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTimeShiftCurrentPositionChanged(Landroid/os/IBinder;Ljava/lang/String;JI)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_19

    .line 1428
    nop

    .line 1429
    return-void

    .line 1426
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 1427
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 5

    .line 1383
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1384
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    return-void

    .line 1388
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTimeShiftPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1391
    nop

    .line 1392
    return-void

    .line 1389
    :catch_17
    move-exception p1

    .line 1390
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyTimeShiftStartPositionChanged(Ljava/lang/String;J)V
    .registers 10

    .line 1408
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1409
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return-void

    .line 1413
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    move-object v2, p1

    move-wide v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTimeShiftStartPositionChanged(Landroid/os/IBinder;Ljava/lang/String;JI)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_19

    .line 1416
    nop

    .line 1417
    return-void

    .line 1414
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 1415
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist notifyTimeShiftStatusChanged(Ljava/lang/String;I)V
    .registers 6

    .line 1396
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1397
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return-void

    .line 1401
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTimeShiftStatusChanged(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1404
    nop

    .line 1405
    return-void

    .line 1402
    :catch_17
    move-exception p1

    .line 1403
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyTrackSelected(ILjava/lang/String;)V
    .registers 6

    .line 1716
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1717
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    return-void

    .line 1721
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTrackSelected(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1724
    nop

    .line 1725
    return-void

    .line 1722
    :catch_17
    move-exception p1

    .line 1723
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyTracksChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1732
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return-void

    .line 1736
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTracksChanged(Landroid/os/IBinder;Ljava/util/List;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1739
    nop

    .line 1740
    return-void

    .line 1737
    :catch_17
    move-exception p1

    .line 1738
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyTuned(Landroid/net/Uri;)V
    .registers 5

    .line 1701
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1702
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    return-void

    .line 1706
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTuned(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1709
    nop

    .line 1710
    return-void

    .line 1707
    :catch_17
    move-exception p1

    .line 1708
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 6

    .line 1837
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1838
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    return-void

    .line 1842
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1845
    nop

    .line 1846
    return-void

    .line 1843
    :catch_17
    move-exception p1

    .line 1844
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyVideoAvailable()V
    .registers 4

    .line 1746
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1747
    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    return-void

    .line 1751
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyVideoAvailable(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1754
    nop

    .line 1755
    return-void

    .line 1752
    :catch_17
    move-exception v0

    .line 1753
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist notifyVideoFreezeUpdated(Z)V
    .registers 5

    .line 1777
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1778
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return-void

    .line 1782
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyVideoFreezeUpdated(Landroid/os/IBinder;ZI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1785
    nop

    .line 1786
    return-void

    .line 1783
    :catch_17
    move-exception p1

    .line 1784
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyVideoUnavailable(I)V
    .registers 5

    .line 1761
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1762
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    return-void

    .line 1766
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyVideoUnavailable(Landroid/os/IBinder;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1769
    nop

    .line 1770
    return-void

    .line 1767
    :catch_17
    move-exception p1

    .line 1768
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .registers 5

    .line 1543
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 1545
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return-void

    .line 1549
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1a

    .line 1552
    nop

    .line 1553
    return-void

    .line 1550
    :catch_1a
    move-exception p1

    .line 1551
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist release()V
    .registers 4

    .line 1684
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1685
    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    return-void

    .line 1689
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->releaseSession(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_1a

    .line 1692
    nop

    .line 1694
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->releaseInternal()V

    .line 1695
    return-void

    .line 1690
    :catch_1a
    move-exception v0

    .line 1691
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist removeMediaView()V
    .registers 4

    .line 1559
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1560
    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    return-void

    .line 1564
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->removeMediaView(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1567
    nop

    .line 1568
    return-void

    .line 1565
    :catch_17
    move-exception v0

    .line 1566
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist resetInteractiveApp()V
    .registers 4

    .line 1142
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1143
    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    return-void

    .line 1147
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->resetInteractiveApp(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1150
    nop

    .line 1151
    return-void

    .line 1148
    :catch_17
    move-exception v0

    .line 1149
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist sendAvailableSpeeds([F)V
    .registers 5

    .line 1286
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1287
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    return-void

    .line 1291
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendAvailableSpeeds(Landroid/os/IBinder;[FI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1294
    nop

    .line 1295
    return-void

    .line 1292
    :catch_17
    move-exception p1

    .line 1293
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendCertificate(Ljava/lang/String;ILandroid/net/http/SslCertificate;)V
    .registers 10

    .line 1358
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1359
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    return-void

    .line 1363
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    invoke-static {p3}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendCertificate(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Bundle;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_1d

    .line 1367
    nop

    .line 1368
    return-void

    .line 1365
    :catch_1d
    move-exception v0

    move-object p1, v0

    .line 1366
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendCurrentChannelLcn(I)V
    .registers 5

    .line 1214
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1215
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    return-void

    .line 1219
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendCurrentChannelLcn(Landroid/os/IBinder;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1222
    nop

    .line 1223
    return-void

    .line 1220
    :catch_17
    move-exception p1

    .line 1221
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 5

    .line 1202
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1203
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return-void

    .line 1207
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1210
    nop

    .line 1211
    return-void

    .line 1208
    :catch_17
    move-exception p1

    .line 1209
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 5

    .line 1262
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1263
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    return-void

    .line 1267
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1270
    nop

    .line 1271
    return-void

    .line 1268
    :catch_17
    move-exception p1

    .line 1269
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 5

    .line 1190
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1191
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void

    .line 1195
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendCurrentVideoBounds(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1198
    nop

    .line 1199
    return-void

    .line 1196
    :catch_17
    move-exception p1

    .line 1197
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendSelectedTrackInfo(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1251
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    return-void

    .line 1255
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendSelectedTrackInfo(Landroid/os/IBinder;Ljava/util/List;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1258
    nop

    .line 1259
    return-void

    .line 1256
    :catch_17
    move-exception p1

    .line 1257
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendSigningResult(Ljava/lang/String;[B)V
    .registers 6

    .line 1346
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1347
    const-string p1, "TvInteractiveAppManager"

    const-string p2, "The session has been already released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return-void

    .line 1351
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1354
    nop

    .line 1355
    return-void

    .line 1352
    :catch_17
    move-exception p1

    .line 1353
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendStreamVolume(F)V
    .registers 5

    .line 1226
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1227
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return-void

    .line 1231
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendStreamVolume(Landroid/os/IBinder;FI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1234
    nop

    .line 1235
    return-void

    .line 1232
    :catch_17
    move-exception p1

    .line 1233
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendTimeShiftMode(I)V
    .registers 5

    .line 1274
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1275
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-void

    .line 1279
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendTimeShiftMode(Landroid/os/IBinder;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1282
    nop

    .line 1283
    return-void

    .line 1280
    :catch_17
    move-exception p1

    .line 1281
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendTrackInfoList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1238
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1239
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return-void

    .line 1243
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1246
    nop

    .line 1247
    return-void

    .line 1244
    :catch_17
    move-exception p1

    .line 1245
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V
    .registers 5

    .line 1298
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1299
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-void

    .line 1303
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendTvRecordingInfo(Landroid/os/IBinder;Landroid/media/tv/TvRecordingInfo;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1306
    nop

    .line 1307
    return-void

    .line 1304
    :catch_17
    move-exception p1

    .line 1305
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist sendTvRecordingInfoList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;)V"
        }
    .end annotation

    .line 1310
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1311
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return-void

    .line 1315
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendTvRecordingInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1318
    nop

    .line 1319
    return-void

    .line 1316
    :catch_17
    move-exception p1

    .line 1317
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setInputSession(Landroid/media/tv/TvInputManager$Session;)V
    .registers 2

    .line 1114
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputSession:Landroid/media/tv/TvInputManager$Session;

    .line 1115
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .registers 5

    .line 1497
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1498
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    return-void

    .line 1503
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1506
    nop

    .line 1507
    return-void

    .line 1504
    :catch_17
    move-exception p1

    .line 1505
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist setTeletextAppEnabled(Z)V
    .registers 5

    .line 1178
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1179
    const-string p1, "TvInteractiveAppManager"

    const-string v0, "The session has been already released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return-void

    .line 1183
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->setTeletextAppEnabled(Landroid/os/IBinder;ZI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1186
    nop

    .line 1187
    return-void

    .line 1184
    :catch_17
    move-exception p1

    .line 1185
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist startInteractiveApp()V
    .registers 4

    .line 1118
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1119
    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return-void

    .line 1123
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->startInteractiveApp(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1126
    nop

    .line 1127
    return-void

    .line 1124
    :catch_17
    move-exception v0

    .line 1125
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist stopInteractiveApp()V
    .registers 4

    .line 1130
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1131
    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return-void

    .line 1135
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->stopInteractiveApp(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 1138
    nop

    .line 1139
    return-void

    .line 1136
    :catch_17
    move-exception v0

    .line 1137
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
