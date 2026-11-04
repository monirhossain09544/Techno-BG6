.class public abstract Landroid/service/contentcapture/ContentCaptureService;
.super Landroid/app/Service;
.source "ContentCaptureService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;,
        Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;,
        Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;
    }
.end annotation


# static fields
.field public static final blacklist ASSIST_CONTENT_ACTIVITY_START_KEY:Ljava/lang/String; = "activity_start_assist_content"

.field private static final blacklist METRICS_FLUSH_THRESHOLD:I = 0x2710

.field public static final blacklist PROTECTION_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.contentcapture.ContentProtectionService"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.contentcapture.ContentCaptureService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.content_capture"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCallerMismatchTimeout:J

.field private final blacklist mContentCaptureClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

.field private final blacklist mContentCaptureServerInterface:Landroid/service/contentcapture/IContentCaptureService;

.field private blacklist mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

.field private blacklist mContentProtectionAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

.field private final blacklist mContentProtectionServerInterface:Landroid/service/contentcapture/IContentProtectionService;

.field private final blacklist mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastCallerMismatchLog:J

.field public final blacklist mPendingMetrics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionUids:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$Azqdm1PMLvRVcHJ8G6Q4nwJm1cw(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->lambda$handleOnLoginDetected$0(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataShareAdapterResourceManager(Landroid/service/contentcapture/ContentCaptureService;)Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;
    .registers 1

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService;->mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleFinishSession(Landroid/service/contentcapture/ContentCaptureService;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleFinishSession(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnActivityEvent(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/ActivityEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnActivitySnapshot(Landroid/service/contentcapture/ContentCaptureService;ILandroid/service/contentcapture/SnapshotData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnConnected(Landroid/service/contentcapture/ContentCaptureService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnCreateSession(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/service/contentcapture/ContentCaptureService;->handleOnCreateSession(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDataRemovalRequest(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDataShared(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDisconnected(Landroid/service/contentcapture/ContentCaptureService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDisconnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnLoginDetected(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnLoginDetected(ILandroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnUpdateAllowlistRequest(Landroid/service/contentcapture/ContentCaptureService;ILandroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnUpdateAllowlistRequest(ILandroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSendEvents(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureService;->handleSendEvents(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    const-class v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    .line 169
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;-><init>(Landroid/service/contentcapture/ContentCaptureService-IA;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    .line 176
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallerMismatchTimeout:J

    .line 180
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$1;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$1;-><init>(Landroid/service/contentcapture/ContentCaptureService;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServerInterface:Landroid/service/contentcapture/IContentCaptureService;

    .line 238
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$2;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$2;-><init>(Landroid/service/contentcapture/ContentCaptureService;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentProtectionServerInterface:Landroid/service/contentcapture/IContentProtectionService;

    .line 264
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$3;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$3;-><init>(Landroid/service/contentcapture/ContentCaptureService;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    .line 281
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    return-void
.end method

.method private blacklist flushAllPendingMetrics()V
    .registers 9

    .line 878
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 879
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_13

    .line 880
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "flushAllPendingMetrics() - nothing to flush"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_13
    return-void

    .line 885
    :cond_14
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_3c

    .line 886
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flushing metrics for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sessions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 890
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 891
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;

    .line 892
    invoke-static {v1}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetactivityComponent(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v1}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object v5

    invoke-static {v1}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetoptions(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/content/ContentCaptureOptions;

    move-result-object v6

    invoke-static {v1}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetflushReason(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/service/contentcapture/ContentCaptureService;->writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 896
    :cond_6a
    move-object v2, p0

    iget-object v0, v2, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 897
    return-void
.end method

.method private blacklist flushMetricsForSession(I)V
    .registers 11

    .line 901
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 902
    if-gez v0, :cond_9

    .line 903
    return-void

    .line 905
    :cond_9
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;

    .line 906
    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 907
    if-nez v1, :cond_19

    .line 908
    return-void

    .line 910
    :cond_19
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_35

    .line 911
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flushing metrics for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_35
    invoke-static {v1}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetactivityComponent(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v1}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object v6

    invoke-static {v1}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetoptions(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/content/ContentCaptureOptions;

    move-result-object v7

    invoke-static {v1}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetflushReason(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)I

    move-result v8

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/service/contentcapture/ContentCaptureService;->writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 915
    return-void
.end method

.method private blacklist handleFinishSession(I)V
    .registers 3

    .line 766
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 767
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->reduceBinderTransactionEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 768
    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->flushMetricsForSession(I)V

    .line 770
    :cond_e
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/service/contentcapture/ContentCaptureService;->onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 771
    return-void
.end method

.method private blacklist handleIsRightCallerFor(Landroid/view/contentcapture/ContentCaptureEvent;I)Z
    .registers 10

    .line 818
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_aa

    .line 824
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v0

    goto :goto_11

    .line 821
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getParentSessionId()I

    move-result v0

    .line 822
    nop

    .line 826
    :goto_11
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_4d

    .line 827
    sget-boolean p2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz p2, :cond_4c

    .line 828
    sget-object p2, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIsRightCallerFor("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "): no session for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_4c
    return v2

    .line 834
    :cond_4d
    iget-object p1, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 835
    if-eq p1, p2, :cond_a8

    .line 836
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid call from UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " belongs to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 839
    iget-wide v3, p0, Landroid/service/contentcapture/ContentCaptureService;->mLastCallerMismatchLog:J

    sub-long v3, v0, v3

    iget-wide v5, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallerMismatchTimeout:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_a7

    .line 840
    nop

    .line 841
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 842
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p2

    .line 840
    const/16 v3, 0xce

    invoke-static {v3, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 843
    iput-wide v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mLastCallerMismatchLog:J

    .line 845
    :cond_a7
    return v2

    .line 847
    :cond_a8
    const/4 p1, 0x1

    return p1

    :pswitch_data_aa
    .packed-switch -0x2
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private blacklist handleOnActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .registers 2

    .line 810
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    .line 811
    return-void
.end method

.method private blacklist handleOnActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V
    .registers 4

    .line 762
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Landroid/service/contentcapture/ContentCaptureService;->onActivitySnapshot(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/service/contentcapture/SnapshotData;)V

    .line 763
    return-void
.end method

.method private blacklist handleOnConnected(Landroid/os/IBinder;)V
    .registers 2

    .line 527
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureServiceCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 528
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->onConnected()V

    .line 529
    return-void
.end method

.method private blacklist handleOnCreateSession(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 7

    .line 548
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 549
    new-instance p3, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {p3, p2}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, p1, p3}, Landroid/service/contentcapture/ContentCaptureService;->onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 551
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureContext;->getFlags()I

    move-result p1

    .line 552
    nop

    .line 553
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_19

    .line 554
    const/16 p2, 0x20

    goto :goto_1a

    .line 553
    :cond_19
    const/4 p2, 0x0

    .line 556
    :goto_1a
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_20

    .line 557
    or-int/lit8 p2, p2, 0x40

    .line 559
    :cond_20
    if-nez p2, :cond_23

    .line 560
    goto :goto_25

    .line 562
    :cond_23
    or-int/lit8 p5, p2, 0x4

    .line 564
    :goto_25
    iget-object p1, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-interface {p1}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p4, p5, p1}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 565
    return-void
.end method

.method private blacklist handleOnDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 2

    .line 774
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 775
    return-void
.end method

.method private blacklist handleOnDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 4

    .line 779
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$4;

    invoke-direct {v0, p0, p2}, Landroid/service/contentcapture/ContentCaptureService$4;-><init>(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/IDataShareCallback;)V

    invoke-virtual {p0, p1, v0}, Landroid/service/contentcapture/ContentCaptureService;->onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/DataShareCallback;)V

    .line 807
    return-void
.end method

.method private blacklist handleOnDisconnected()V
    .registers 4

    .line 532
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->onDisconnected()V

    .line 533
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->reduceBinderTransactionEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 534
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_38

    .line 535
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flushing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pending metrics on disconnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0}, Landroid/service/contentcapture/ContentCaptureService;->flushAllPendingMetrics()V

    .line 539
    :cond_38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 540
    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentProtectionAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    .line 541
    return-void
.end method

.method private blacklist handleOnLoginDetected(ILandroid/content/pm/ParceledListSlice;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;)V"
        }
    .end annotation

    .line 732
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1d

    .line 733
    sget-object p2, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnLoginDetected() not allowed for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void

    .line 736
    :cond_1d
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 737
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    move p2, v0

    goto :goto_34

    :cond_2a
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual {p2}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result p2

    .line 738
    :goto_34
    new-instance v1, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v1, p2}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    .line 740
    new-instance v2, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v3, 0x7

    invoke-direct {v2, p2, v3}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 742
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 743
    invoke-virtual {p0, v1, v2}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 745
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Landroid/service/contentcapture/ContentCaptureService$$ExternalSyntheticLambda0;-><init>(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 747
    new-instance p1, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v0, 0x8

    invoke-direct {p1, p2, v0}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 748
    invoke-virtual {p0, v1, p1}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 749
    return-void
.end method

.method private blacklist handleOnUpdateAllowlistRequest(ILandroid/os/IBinder;)V
    .registers 5

    .line 752
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1d

    .line 753
    sget-object p2, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnUpdateAllowlistRequest() not allowed for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void

    .line 756
    :cond_1d
    nop

    .line 757
    invoke-static {p2}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentProtectionAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    .line 758
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->onConnected()V

    .line 759
    return-void
.end method

.method private blacklist handleSendEvents(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;I",
            "Landroid/content/ContentCaptureOptions;",
            ")V"
        }
    .end annotation

    .line 571
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->reduceBinderTransactionEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 572
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureService;->handleSendEventsWithBatching(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V

    goto :goto_d

    .line 574
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureService;->handleSendEventsNoBatching(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V

    .line 576
    :goto_d
    return-void
.end method

.method private blacklist handleSendEventsNoBatching(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;I",
            "Landroid/content/ContentCaptureOptions;",
            ")V"
        }
    .end annotation

    .line 582
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 583
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 584
    sget-object p1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string p2, "handleSendEvents() received empty list of events"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void

    .line 589
    :cond_12
    new-instance v3, Landroid/service/contentcapture/FlushMetrics;

    invoke-direct {v3}, Landroid/service/contentcapture/FlushMetrics;-><init>()V

    .line 590
    nop

    .line 594
    nop

    .line 595
    nop

    .line 597
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v6, v0

    move-object v2, v1

    move v1, v6

    move-object v0, v2

    :goto_20
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_b8

    .line 598
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 599
    invoke-direct {p0, v7, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleIsRightCallerFor(Landroid/view/contentcapture/ContentCaptureEvent;I)Z

    move-result v4

    if-nez v4, :cond_37

    move v5, p3

    move-object p3, p0

    goto/16 :goto_b3

    .line 600
    :cond_37
    move v4, v1

    invoke-virtual {v7}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v1

    .line 601
    if-eq v1, v4, :cond_56

    .line 602
    new-instance v8, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v8, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    .line 603
    nop

    .line 604
    if-eqz v6, :cond_51

    .line 605
    move-object v0, p0

    move v5, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/service/contentcapture/ContentCaptureService;->writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 606
    move-object p3, v0

    invoke-virtual {v3}, Landroid/service/contentcapture/FlushMetrics;->reset()V

    goto :goto_53

    .line 604
    :cond_51
    move v5, p3

    move-object p3, p0

    .line 609
    :goto_53
    move v4, v1

    move-object v0, v8

    goto :goto_58

    .line 601
    :cond_56
    move v5, p3

    move-object p3, p0

    .line 609
    :goto_58
    invoke-virtual {v7}, Landroid/view/contentcapture/ContentCaptureEvent;->getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v8

    .line 610
    if-nez v2, :cond_64

    if-eqz v8, :cond_64

    .line 611
    invoke-virtual {v8}, Landroid/view/contentcapture/ContentCaptureContext;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 613
    :cond_64
    invoke-virtual {v7}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_c2

    .line 638
    :pswitch_6b
    invoke-virtual {p0, v0, v7}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    goto :goto_b2

    .line 634
    :pswitch_6f
    invoke-virtual {p0, v0, v7}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 635
    iget v1, v3, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    .line 636
    goto :goto_b2

    .line 630
    :pswitch_79
    invoke-virtual {p0, v0, v7}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 631
    iget v1, v3, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    .line 632
    goto :goto_b2

    .line 626
    :pswitch_83
    invoke-virtual {p0, v0, v7}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 627
    iget v1, v3, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    .line 628
    goto :goto_b2

    .line 615
    :pswitch_8d
    invoke-virtual {v7}, Landroid/view/contentcapture/ContentCaptureEvent;->getParentSessionId()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/view/contentcapture/ContentCaptureContext;->setParentSessionId(I)V

    .line 616
    iget-object v7, p3, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 617
    invoke-virtual {p0, v8, v0}, Landroid/service/contentcapture/ContentCaptureService;->onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 618
    iget v1, v3, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    .line 619
    goto :goto_b2

    .line 621
    :pswitch_a3
    iget-object v7, p3, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 622
    invoke-virtual {p0, v0}, Landroid/service/contentcapture/ContentCaptureService;->onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 623
    iget v1, v3, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    .line 624
    nop

    .line 597
    :goto_b2
    move v1, v4

    :goto_b3
    add-int/lit8 v6, v6, 0x1

    move p3, v5

    goto/16 :goto_20

    .line 641
    :cond_b8
    move v5, p3

    move v4, v1

    move-object p3, p0

    move-object v0, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/service/contentcapture/ContentCaptureService;->writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 642
    return-void

    nop

    :pswitch_data_c2
    .packed-switch -0x2
        :pswitch_a3
        :pswitch_8d
        :pswitch_6b
        :pswitch_83
        :pswitch_79
        :pswitch_6f
    .end packed-switch
.end method

.method private blacklist handleSendEventsWithBatching(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;I",
            "Landroid/content/ContentCaptureOptions;",
            ")V"
        }
    .end annotation

    .line 648
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 649
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 650
    sget-object p1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string p2, "handleSendEventsWithBatching() received empty list of events"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void

    .line 654
    :cond_12
    nop

    .line 655
    nop

    .line 657
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v4, v0

    move v2, v1

    move v3, v2

    :goto_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_e4

    .line 658
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 659
    invoke-direct {p0, v5, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleIsRightCallerFor(Landroid/view/contentcapture/ContentCaptureEvent;I)Z

    move-result v6

    if-nez v6, :cond_2d

    goto/16 :goto_e0

    .line 661
    :cond_2d
    invoke-virtual {v5}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v6

    .line 662
    if-eq v6, v3, :cond_39

    .line 663
    new-instance v4, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v4, v6}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    .line 664
    move v3, v6

    .line 667
    :cond_39
    invoke-virtual {v5}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v7

    .line 668
    iget-object v8, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;

    .line 669
    if-nez v8, :cond_51

    .line 670
    new-instance v8, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;

    invoke-direct {v8}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;-><init>()V

    .line 671
    iget-object v9, p0, Landroid/service/contentcapture/ContentCaptureService;->mPendingMetrics:Landroid/util/SparseArray;

    invoke-virtual {v9, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 673
    :cond_51
    invoke-virtual {v5}, Landroid/view/contentcapture/ContentCaptureEvent;->getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v9

    .line 674
    nop

    .line 675
    if-eqz v9, :cond_5d

    invoke-virtual {v9}, Landroid/view/contentcapture/ContentCaptureContext;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v10

    goto :goto_5e

    :cond_5d
    move-object v10, v0

    .line 674
    :goto_5e
    invoke-static {v8, v10, p4, p3}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$mupdate(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;Landroid/content/ComponentName;Landroid/content/ContentCaptureOptions;I)V

    .line 679
    nop

    .line 680
    const/4 v10, 0x1

    packed-switch v7, :pswitch_data_e6

    .line 715
    :pswitch_66
    invoke-virtual {p0, v4, v5}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    goto :goto_da

    .line 695
    :pswitch_6a
    invoke-virtual {p0, v4, v5}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 697
    nop

    .line 698
    goto :goto_db

    .line 710
    :pswitch_6f
    invoke-virtual {p0, v4, v5}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 711
    invoke-static {v8}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object v5

    iget v7, v5, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    add-int/2addr v7, v10

    iput v7, v5, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    .line 712
    invoke-static {v8}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object v5

    invoke-static {v5}, Landroid/service/contentcapture/ContentCaptureService;->isOverThreshold(Landroid/service/contentcapture/FlushMetrics;)Z

    move-result v10

    .line 713
    goto :goto_db

    .line 705
    :pswitch_84
    invoke-virtual {p0, v4, v5}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 706
    invoke-static {v8}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object v5

    iget v7, v5, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    add-int/2addr v7, v10

    iput v7, v5, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    .line 707
    invoke-static {v8}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object v5

    invoke-static {v5}, Landroid/service/contentcapture/ContentCaptureService;->isOverThreshold(Landroid/service/contentcapture/FlushMetrics;)Z

    move-result v10

    .line 708
    goto :goto_db

    .line 700
    :pswitch_99
    invoke-virtual {p0, v4, v5}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 701
    invoke-static {v8}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object v5

    iget v7, v5, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    add-int/2addr v7, v10

    iput v7, v5, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    .line 702
    invoke-static {v8}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object v5

    invoke-static {v5}, Landroid/service/contentcapture/ContentCaptureService;->isOverThreshold(Landroid/service/contentcapture/FlushMetrics;)Z

    move-result v10

    .line 703
    goto :goto_db

    .line 682
    :pswitch_ae
    invoke-virtual {v5}, Landroid/view/contentcapture/ContentCaptureEvent;->getParentSessionId()I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/view/contentcapture/ContentCaptureContext;->setParentSessionId(I)V

    .line 683
    iget-object v5, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 684
    invoke-virtual {p0, v9, v4}, Landroid/service/contentcapture/ContentCaptureService;->onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 685
    invoke-static {v8}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object v5

    iget v7, v5, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    add-int/2addr v7, v10

    iput v7, v5, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    .line 686
    goto :goto_da

    .line 688
    :pswitch_c7
    iget-object v5, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->delete(I)V

    .line 689
    invoke-virtual {p0, v4}, Landroid/service/contentcapture/ContentCaptureService;->onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 690
    invoke-static {v8}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->-$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object v5

    iget v7, v5, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    add-int/2addr v7, v10

    iput v7, v5, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    .line 692
    nop

    .line 693
    goto :goto_db

    .line 718
    :goto_da
    move v10, v1

    :goto_db
    if-eqz v10, :cond_e0

    .line 719
    invoke-direct {p0, v6}, Landroid/service/contentcapture/ContentCaptureService;->flushMetricsForSession(I)V

    .line 657
    :cond_e0
    :goto_e0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    .line 722
    :cond_e4
    return-void

    nop

    :pswitch_data_e6
    .packed-switch -0x2
        :pswitch_c7
        :pswitch_ae
        :pswitch_66
        :pswitch_99
        :pswitch_84
        :pswitch_6f
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_6a
    .end packed-switch
.end method

.method private static blacklist isOverThreshold(Landroid/service/contentcapture/FlushMetrics;)Z
    .registers 3

    .line 725
    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_11

    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    if-ge v0, v1, :cond_11

    iget p0, p0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    if-lt p0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private synthetic blacklist lambda$handleOnLoginDetected$0(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 3

    .line 745
    invoke-virtual {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method public static blacklist setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V
    .registers 5

    .line 864
    if-eqz p2, :cond_d

    .line 865
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 866
    const-string v1, "binder"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_e

    .line 868
    :cond_d
    const/4 v0, 0x0

    .line 870
    :goto_e
    invoke-interface {p0, p1, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    .line 873
    goto :goto_2b

    .line 871
    :catch_12
    move-exception p0

    .line 872
    sget-object p1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error async reporting result to client: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :goto_2b
    return-void
.end method

.method private blacklist writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .registers 12

    .line 923
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    if-nez v0, :cond_d

    .line 924
    sget-object p1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "writeSessionFlush(): no server callback"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return-void

    .line 929
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    .line 933
    goto :goto_32

    .line 931
    :catch_18
    move-exception v0

    move-object p1, v0

    .line 932
    sget-object p2, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed to write flush metrics: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :goto_32
    return-void
.end method


# virtual methods
.method public final whitelist disableSelf()V
    .registers 3

    .line 486
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "disableSelf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_b
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 489
    if-nez v0, :cond_17

    .line 490
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "disableSelf(): no server callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void

    .line 494
    :cond_17
    :try_start_17
    invoke-interface {v0}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->disableSelf()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 497
    goto :goto_1f

    .line 495
    :catch_1b
    move-exception v0

    .line 496
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 498
    :goto_1f
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 514
    const-string p1, "Debug: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " Verbose: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 515
    iget-object p1, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    .line 516
    const-string p3, "Number sessions: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 517
    if-lez p1, :cond_46

    .line 519
    const/4 p3, 0x0

    :goto_25
    if-ge p3, p1, :cond_46

    .line 520
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 521
    const-string v0, ": uid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 519
    add-int/lit8 p3, p3, 0x1

    goto :goto_25

    .line 524
    :cond_46
    return-void
.end method

.method public whitelist onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .registers 5

    .line 470
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityEvent(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1d
    return-void
.end method

.method public whitelist onActivitySnapshot(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/service/contentcapture/SnapshotData;)V
    .registers 5

    .line 458
    sget-boolean p2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz p2, :cond_23

    sget-object p2, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivitySnapshot(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_23
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    .line 293
    const-string v0, "android.service.contentcapture.ContentCaptureService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 294
    iget-object p1, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServerInterface:Landroid/service/contentcapture/IContentCaptureService;

    invoke-interface {p1}, Landroid/service/contentcapture/IContentCaptureService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 296
    :cond_13
    const-string v0, "android.service.contentcapture.ContentProtectionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 297
    iget-object p1, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentProtectionServerInterface:Landroid/service/contentcapture/IContentProtectionService;

    invoke-interface {p1}, Landroid/service/contentcapture/IContentProtectionService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 299
    :cond_26
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to bind to wrong intent (should be android.service.contentcapture.ContentCaptureService or android.service.contentcapture.ContentProtectionService): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onConnected()V
    .registers 4

    .line 396
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bound to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public whitelist onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 5

    .line 421
    sget-boolean p2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz p2, :cond_23

    sget-object p2, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onContentCaptureEventsRequest(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_23
    return-void
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 286
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 287
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mHandler:Landroid/os/Handler;

    .line 288
    return-void
.end method

.method public whitelist onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V
    .registers 6

    .line 407
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_2d

    .line 408
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateContentCaptureSession(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", ctx="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_2d
    return-void
.end method

.method public whitelist onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 3

    .line 430
    sget-boolean p1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz p1, :cond_c

    sget-object p1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDataRemovalRequest()"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_c
    return-void
.end method

.method public whitelist onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/DataShareCallback;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 445
    sget-boolean p1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz p1, :cond_c

    sget-object p1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onDataShareRequest()"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_c
    return-void
.end method

.method public whitelist onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V
    .registers 5

    .line 479
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_23

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyContentCaptureSession(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_23
    return-void
.end method

.method public whitelist onDisconnected()V
    .registers 4

    .line 508
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void
.end method

.method public final whitelist setContentCaptureConditions(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;)V"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 378
    if-nez v0, :cond_d

    .line 379
    sget-object p1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setContentCaptureConditions(): no server callback"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void

    .line 384
    :cond_d
    :try_start_d
    invoke-static {p2}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    .line 387
    goto :goto_19

    .line 385
    :catch_15
    move-exception p1

    .line 386
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 388
    :goto_19
    return-void
.end method

.method public final whitelist setContentCaptureWhitelist(Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 326
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentProtectionAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    .line 329
    if-nez v0, :cond_11

    if-nez v1, :cond_11

    .line 330
    sget-object p1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setContentCaptureWhitelist(): missing both server callbacks"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 334
    :cond_11
    if-eqz v0, :cond_2f

    .line 335
    if-nez v1, :cond_27

    .line 339
    nop

    .line 340
    :try_start_16
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p2}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p2

    .line 339
    invoke-interface {v0, p1, p2}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    .line 343
    goto :goto_26

    .line 341
    :catch_22
    move-exception p1

    .line 342
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 344
    :goto_26
    return-void

    .line 336
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Have both server callbacks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_2f
    :try_start_2f
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback;->setAllowlist(Ljava/util/List;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_37

    .line 351
    goto :goto_3b

    .line 349
    :catch_37
    move-exception p1

    .line 350
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 352
    :goto_3b
    return-void
.end method
