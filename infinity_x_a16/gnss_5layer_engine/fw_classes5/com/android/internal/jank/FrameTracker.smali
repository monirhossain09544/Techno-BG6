.class public Lcom/android/internal/jank/FrameTracker;
.super Ljava/lang/Object;
.source "FrameTracker.java"

# interfaces
.implements Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;
.implements Landroid/view/SurfaceControl$OnJankDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;,
        Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;,
        Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;,
        Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;,
        Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;,
        Lcom/android/internal/jank/FrameTracker$JankInfo;,
        Lcom/android/internal/jank/FrameTracker$Reasons;
    }
.end annotation


# static fields
.field private static final blacklist FLUSH_DELAY_MILLISECOND:I = 0x3c

.field private static final blacklist INVALID_ID:J = -0x1L

.field private static final blacklist MAX_FLUSH_ATTEMPTS:I = 0x3

.field private static final blacklist MAX_LENGTH_EVENT_DESC:I = 0x7f

.field public static final blacklist NANOS_IN_MILLISECOND:I = 0xf4240

.field static final blacklist REASON_CANCEL_NORMAL:I = 0x10

.field static final blacklist REASON_CANCEL_NOT_BEGUN:I = 0x11

.field static final blacklist REASON_CANCEL_SAME_VSYNC:I = 0x12

.field static final blacklist REASON_CANCEL_TIMEOUT:I = 0x13

.field static final blacklist REASON_END_NORMAL:I = 0x0

.field static final blacklist REASON_END_SURFACE_DESTROYED:I = 0x1

.field static final blacklist REASON_END_UNKNOWN:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FrameTracker"


# instance fields
.field private blacklist mBeginVsyncId:J

.field private blacklist mCancelled:Z

.field private final blacklist mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

.field private final blacklist mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

.field private final blacklist mDeferMonitoring:Z

.field private final blacklist mDisplayId:I

.field private blacklist mEndVsyncId:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

.field private final blacklist mJankInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/FrameTracker$JankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

.field private blacklist mMetricsFinalized:Z

.field private final blacklist mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

.field private final blacklist mObserver:Landroid/graphics/HardwareRendererObserver;

.field private final blacklist mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

.field private final blacklist mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

.field private final blacklist mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

.field public final blacklist mSurfaceOnly:Z

.field private final blacklist mTraceThresholdFrameTimeMillis:I

.field private final blacklist mTraceThresholdMissedFrames:I

.field private blacklist mTracingStarted:Z

.field private final blacklist mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

.field private blacklist mWaitForFinishTimedOut:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$OVeLaqcN9IKIE5Wad60L5pZL8A0(Lcom/android/internal/jank/FrameTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->lambda$onFrameMetricsAvailable$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nODy56noZxnLNFzf_DRK46KMZpI(Lcom/android/internal/jank/FrameTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rVugi0fZvtwemZN6TKJG3SIcOWw(Lcom/android/internal/jank/FrameTracker;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/FrameTracker;->lambda$onJankDataAvailable$0(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJankDataListenerRegistration(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;)V
    .registers 13

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    .line 121
    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    .line 206
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->isSurfaceOnly()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    .line 207
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 208
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    .line 209
    iput-object p5, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    .line 210
    iput-object p4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    .line 211
    iput-object p7, p0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->shouldDeferMonitor()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    .line 215
    iget-boolean p4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    const/4 p5, 0x0

    if-eqz p4, :cond_35

    move-object p2, p5

    :cond_35
    iput-object p2, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    .line 216
    iget-boolean p2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz p2, :cond_3c

    move-object p6, p5

    :cond_3c
    iput-object p6, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 217
    iget-boolean p2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz p2, :cond_43

    move-object p3, p5

    :cond_43
    iput-object p3, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    .line 218
    iget-boolean p2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez p2, :cond_64

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/jank/Flags;->useSfFrameDuration()Z

    move-result p2

    if-eqz p2, :cond_56

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/jank/Flags;->ignoreHwuiIsFirstFrame()Z

    move-result p2

    if-eqz p2, :cond_56

    goto :goto_64

    .line 220
    :cond_56
    new-instance p2, Landroid/graphics/HardwareRendererObserver;

    iget-object p3, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-virtual {p3}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object p3

    iget-object p4, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p3, p4, v0}, Landroid/graphics/HardwareRendererObserver;-><init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V

    goto :goto_65

    .line 219
    :cond_64
    :goto_64
    move-object p2, p5

    .line 220
    :goto_65
    iput-object p2, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    .line 223
    iput p8, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    .line 224
    iput p9, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    .line 225
    iput-object p10, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    .line 226
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/internal/jank/FrameTracker;->mDisplayId:I

    .line 228
    iget-boolean p2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz p2, :cond_80

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 230
    iput-object p5, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    goto :goto_a2

    .line 234
    :cond_80
    iget-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {p1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_94

    .line 235
    iget-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {p1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 238
    :cond_94
    new-instance p1, Lcom/android/internal/jank/FrameTracker$1;

    invoke-direct {p1, p0}, Lcom/android/internal/jank/FrameTracker$1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    .line 269
    iget-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    iget-object p2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-virtual {p1, p2}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 271
    :goto_a2
    return-void
.end method

.method private blacklist beginInternal()V
    .registers 5

    .line 309
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4a

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    goto :goto_4a

    .line 312
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    .line 313
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 315
    const-string v0, "FT#beginVsync"

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "FT#layerId"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 317
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->markCujUiThread()V

    .line 318
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 319
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    .line 320
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_49

    .line 321
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 323
    :cond_49
    return-void

    .line 310
    :cond_4a
    :goto_4a
    return-void
.end method

.method private blacklist callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    if-nez v0, :cond_7

    .line 566
    iget-boolean p1, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    goto :goto_12

    .line 567
    :cond_7
    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v0, :cond_11

    iget-boolean p1, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 565
    :goto_12
    return p1
.end method

.method private blacklist findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/jank/FrameTracker$JankInfo;

    return-object p1
.end method

.method private blacklist finish()V
    .registers 2

    .line 572
    const-string v0, "FrameTracker#finish"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 573
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finishTraced()V

    .line 574
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 575
    return-void
.end method

.method private blacklist finishTraced()V
    .registers 24

    .line 579
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-nez v1, :cond_27b

    iget-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-eqz v1, :cond_c

    goto/16 :goto_27b

    .line 580
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    .line 582
    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 583
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    .line 584
    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    int-to-long v2, v2

    const-string v4, "FT#finish"

    invoke-direct {v0, v4, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 587
    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    .line 589
    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v2

    .line 591
    nop

    .line 592
    nop

    .line 593
    nop

    .line 594
    nop

    .line 595
    nop

    .line 596
    nop

    .line 597
    nop

    .line 598
    nop

    .line 600
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_40
    iget-object v14, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v6, v14, :cond_1aa

    .line 601
    iget-object v14, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 602
    iget-boolean v15, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v15, :cond_5a

    iget-boolean v15, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    if-eqz v15, :cond_5a

    move v15, v1

    goto :goto_5b

    :cond_5a
    const/4 v15, 0x0

    .line 603
    :goto_5b
    if-eqz v15, :cond_6c

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/jank/Flags;->ignoreHwuiIsFirstFrame()Z

    move-result v15

    if-nez v15, :cond_6c

    .line 604
    move/from16 v18, v1

    move-wide/from16 v16, v4

    move/from16 v19, v6

    move-object v4, v2

    goto/16 :goto_1a1

    .line 606
    :cond_6c
    move-wide/from16 v16, v4

    iget-wide v3, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    move v5, v1

    move-object/from16 v18, v2

    iget-wide v1, v0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_81

    .line 607
    move v3, v9

    move v1, v10

    move-wide/from16 v9, v16

    move-object/from16 v4, v18

    goto/16 :goto_1ae

    .line 609
    :cond_81
    iget-boolean v1, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    const-string v2, ", CUJ="

    const-string v3, "FrameTracker"

    if-eqz v1, :cond_134

    .line 610
    add-int/lit8 v7, v7, 0x1

    .line 611
    nop

    .line 612
    iget v1, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b6

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missed App frame:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v4, v18

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    add-int/lit8 v9, v9, 0x1

    .line 615
    move v1, v5

    goto :goto_b9

    .line 612
    :cond_b6
    move-object/from16 v4, v18

    const/4 v1, 0x0

    .line 617
    :goto_b9
    move/from16 v18, v5

    iget v5, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e3

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missed SF frame:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    add-int/lit8 v10, v10, 0x1

    .line 620
    move/from16 v1, v18

    .line 622
    :cond_e3
    if-eqz v1, :cond_ea

    .line 623
    add-int/lit8 v8, v8, 0x1

    .line 624
    add-int/lit8 v12, v12, 0x1

    goto :goto_ef

    .line 626
    :cond_ea
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 628
    const/4 v12, 0x0

    .line 630
    :goto_ef
    iget v1, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    if-eqz v1, :cond_ff

    iget v1, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    if-eq v1, v13, :cond_ff

    .line 631
    if-nez v13, :cond_fd

    .line 632
    iget v1, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    move v13, v1

    goto :goto_ff

    :cond_fd
    move/from16 v13, v18

    .line 636
    :cond_ff
    :goto_ff
    iget-object v1, v0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    if-eqz v1, :cond_131

    iget-boolean v1, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-nez v1, :cond_131

    .line 637
    const-string v1, "FT#MissedHWUICallback"

    move/from16 v19, v6

    iget-wide v5, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing HWUI jank callback for vsyncId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13a

    .line 636
    :cond_131
    move/from16 v19, v6

    goto :goto_13a

    .line 609
    :cond_134
    move/from16 v19, v6

    move-object/from16 v4, v18

    move/from16 v18, v5

    .line 642
    :goto_13a
    iget-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v1, :cond_181

    iget-boolean v1, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v1, :cond_181

    .line 643
    iget-wide v5, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    move v1, v9

    move/from16 v20, v10

    move-wide/from16 v9, v16

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 644
    iget-boolean v9, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-nez v9, :cond_17b

    .line 645
    const-string v9, "FT#MissedSFCallback"

    move-wide/from16 v16, v5

    iget-wide v5, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-direct {v0, v9, v5, v6}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing SF jank callback for vsyncId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v9, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17d

    .line 644
    :cond_17b
    move-wide/from16 v16, v5

    .line 600
    :goto_17d
    move v9, v1

    move/from16 v10, v20

    goto :goto_1a1

    .line 642
    :cond_181
    move v1, v9

    move/from16 v20, v10

    move-wide/from16 v9, v16

    .line 649
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/jank/Flags;->useSfFrameDuration()Z

    move-result v2

    if-eqz v2, :cond_19c

    iget-boolean v2, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-eqz v2, :cond_19c

    .line 650
    iget-wide v2, v14, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move v9, v1

    move-wide/from16 v16, v2

    move/from16 v10, v20

    goto :goto_1a1

    .line 600
    :cond_19c
    move-wide/from16 v16, v9

    move/from16 v10, v20

    move v9, v1

    :goto_1a1
    add-int/lit8 v6, v19, 0x1

    move-object v2, v4

    move-wide/from16 v4, v16

    move/from16 v1, v18

    goto/16 :goto_40

    :cond_1aa
    move v3, v9

    move v1, v10

    move-wide v9, v4

    move-object v4, v2

    .line 653
    :goto_1ae
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 657
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#missedFrames"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v11, 0x1000

    invoke-static {v11, v12, v5, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#missedAppFrames"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v12, v5, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 659
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#missedSfFrames"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v12, v5, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 660
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#totalFrames"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v12, v5, v7}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#maxFrameTimeMillis"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/32 v14, 0xf4240

    div-long v14, v9, v14

    long-to-int v6, v14

    invoke-static {v11, v12, v5, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 663
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#maxSuccessiveMissedFrames"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12, v4, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 667
    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-eqz v4, :cond_250

    long-to-int v4, v9

    .line 668
    invoke-direct {v0, v8, v4}, Lcom/android/internal/jank/FrameTracker;->shouldTriggerPerfetto(II)Z

    move-result v4

    if-eqz v4, :cond_250

    .line 669
    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-interface {v4, v5}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->triggerPerfetto(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    .line 671
    :cond_250
    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v4}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->logToStatsd()Z

    move-result v4

    if-eqz v4, :cond_27a

    .line 672
    iget-object v6, v0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    iget v4, v0, Lcom/android/internal/jank/FrameTracker;->mDisplayId:I

    iget-object v0, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 676
    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getStatsdInteractionType()I

    move-result v0

    int-to-long v11, v7

    int-to-long v7, v8

    int-to-long v14, v1

    move/from16 p0, v0

    int-to-long v0, v3

    int-to-long v2, v2

    .line 672
    move-wide/from16 v17, v14

    move-wide v15, v9

    move v9, v13

    move-wide v13, v7

    const/16 v7, 0x131

    move/from16 v10, p0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v2

    move v8, v4

    invoke-virtual/range {v6 .. v22}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->write(IIIIJJJJJJ)V

    .line 684
    :cond_27a
    return-void

    .line 579
    :cond_27b
    :goto_27b
    return-void
.end method

.method private blacklist hasReceivedCallbacksAfterEnd()Z
    .registers 9

    .line 532
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 533
    return v1

    .line 535
    :cond_a
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_24

    :cond_15
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 536
    :goto_24
    if-nez v0, :cond_27

    .line 537
    return v1

    .line 539
    :cond_27
    iget-wide v3, v0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v5, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_30

    .line 540
    return v1

    .line 542
    :cond_30
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_37
    if-ltz v0, :cond_53

    .line 543
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 544
    iget-wide v4, v3, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v6, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_50

    .line 545
    invoke-direct {p0, v3}, Lcom/android/internal/jank/FrameTracker;->callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 546
    return v2

    .line 542
    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    .line 550
    :cond_53
    return v1
.end method

.method private blacklist isInRange(J)Z
    .registers 5

    .line 492
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private synthetic blacklist lambda$onFrameMetricsAvailable$1()V
    .registers 8

    .line 499
    :try_start_0
    const-string v0, "FrameTracker#onFrameMetricsAvailable"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 500
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_e

    goto :goto_56

    .line 507
    :cond_e
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v0

    .line 508
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 509
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_27

    move v2, v3

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    .line 510
    :goto_28
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 511
    invoke-virtual {v4}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v4

    aget-wide v3, v4, v3

    .line 513
    invoke-direct {p0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v5
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_5a

    if-nez v5, :cond_3a

    .line 525
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 514
    return-void

    .line 516
    :cond_3a
    :try_start_3a
    invoke-direct {p0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v5

    .line 517
    if-eqz v5, :cond_44

    .line 518
    invoke-static {v5, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker$JankInfo;->-$$Nest$mupdate(Lcom/android/internal/jank/FrameTracker$JankInfo;JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    goto :goto_4e

    .line 520
    :cond_44
    iget-object v5, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v6, v3

    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 523
    :goto_4e
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_5a

    .line 525
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 526
    nop

    .line 527
    return-void

    .line 525
    :cond_56
    :goto_56
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 501
    return-void

    .line 525
    :catchall_5a
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 526
    throw v0
.end method

.method private synthetic blacklist lambda$onJankDataAvailable$0(Ljava/util/List;)V
    .registers 6

    .line 451
    :try_start_0
    const-string v0, "FrameTracker#onJankDataAvailable"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 452
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_e

    goto :goto_4e

    .line 456
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$JankData;

    .line 457
    invoke-virtual {v0}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v1

    if-nez v1, :cond_29

    .line 458
    goto :goto_12

    .line 460
    :cond_29
    invoke-virtual {v0}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_37

    .line 462
    invoke-static {v1, v0}, Lcom/android/internal/jank/FrameTracker$JankInfo;->-$$Nest$mupdate(Lcom/android/internal/jank/FrameTracker$JankInfo;Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;

    goto :goto_45

    .line 464
    :cond_37
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 465
    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromSurfaceControlCallback(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v0

    .line 464
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    :goto_45
    goto :goto_12

    .line 468
    :cond_46
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_52

    .line 470
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 471
    nop

    .line 472
    return-void

    .line 470
    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 453
    return-void

    .line 470
    :catchall_52
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 471
    throw p1
.end method

.method private blacklist markCujUiThread()V
    .registers 5

    .line 436
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#UIThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 440
    :cond_24
    return-void
.end method

.method private blacklist markEvent(Ljava/lang/String;J)V
    .registers 7

    .line 424
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 425
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s#%s"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x7f

    if-gt p2, p3, :cond_28

    .line 431
    iget-object p2, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 427
    :cond_28
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 429
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 427
    const-string p3, "The length of the trace event description <%s> exceeds %d"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 433
    :cond_3c
    :goto_3c
    return-void
.end method

.method private blacklist notifyCujEvent(Ljava/lang/String;I)V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-nez v0, :cond_5

    return-void

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->onCujEvents(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V

    .line 445
    return-void
.end method

.method private blacklist processJankInfos()V
    .registers 2

    .line 555
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_5

    .line 556
    return-void

    .line 558
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->hasReceivedCallbacksAfterEnd()Z

    move-result v0

    if-nez v0, :cond_c

    .line 559
    return-void

    .line 561
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    .line 562
    return-void
.end method

.method private blacklist shouldTriggerPerfetto(II)Z
    .registers 7

    .line 687
    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    if-lt p1, v0, :cond_d

    move p1, v1

    goto :goto_e

    :cond_d
    move p1, v2

    .line 689
    :goto_e
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_20

    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    if-eq v0, v3, :cond_20

    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    const v3, 0xf4240

    mul-int/2addr v0, v3

    if-lt p2, v0, :cond_20

    move p2, v1

    goto :goto_21

    :cond_20
    move p2, v2

    .line 691
    :goto_21
    if-nez p1, :cond_27

    if-eqz p2, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :cond_27
    :goto_27
    return v1
.end method


# virtual methods
.method public blacklist begin()V
    .registers 7

    .line 278
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v0

    .line 282
    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 283
    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v2, :cond_16

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    goto :goto_17

    :cond_16
    move-wide v2, v0

    :goto_17
    iput-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    .line 285
    :cond_19
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3a

    .line 286
    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v2, :cond_37

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_37

    .line 287
    const-string v0, "FT#deferMonitoring"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 290
    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->postTraceStartMarker(Ljava/lang/Runnable;)V

    goto :goto_3a

    .line 294
    :cond_37
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    .line 297
    :cond_3a
    :goto_3a
    return-void
.end method

.method public blacklist cancel(I)Z
    .registers 9

    .line 396
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x12

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v2

    .line 398
    :goto_e
    iget-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v3, :cond_40

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    if-nez v0, :cond_1d

    goto :goto_40

    .line 399
    :cond_1d
    iput-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    .line 400
    const-string v0, "FT#cancel"

    int-to-long v3, p1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 402
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    if-eqz v0, :cond_37

    .line 403
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 404
    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v3

    .line 403
    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 408
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    .line 412
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;I)V

    .line 413
    return v2

    .line 398
    :cond_40
    :goto_40
    return v1
.end method

.method public blacklist end(I)Z
    .registers 8

    .line 330
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_76

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    goto :goto_76

    .line 331
    :cond_d
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    .line 332
    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v4

    .line 331
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimationHandler;->getLastAnimationFrameVsyncId(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    .line 336
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 337
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result p1

    return p1

    .line 338
    :cond_2a
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_39

    .line 339
    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result p1

    return p1

    .line 341
    :cond_39
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "FT#end"

    int-to-long v2, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 343
    const-string v1, "FT#endVsync"

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 344
    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 346
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    if-eqz v1, :cond_5f

    .line 347
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->removeAfter(J)V

    .line 354
    :cond_5f
    new-instance v1, Lcom/android/internal/jank/FrameTracker$2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/jank/FrameTracker$2;-><init>(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    .line 385
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;I)V

    .line 387
    const/4 p1, 0x1

    return p1

    .line 330
    :cond_76
    :goto_76
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist onFrameMetricsAvailable(I)V
    .registers 2

    .line 497
    new-instance p1, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/FrameTracker;->postCallback(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method public whitelist onJankDataAvailable(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl$JankData;",
            ">;)V"
        }
    .end annotation

    .line 449
    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->postCallback(Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method

.method public blacklist postCallback(Ljava/lang/Runnable;)V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    return-void
.end method

.method public blacklist postTraceStartMarker(Ljava/lang/Runnable;)V
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->-$$Nest$fgetmChoreographer(Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;)Landroid/view/Choreographer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public blacklist removeObservers()V
    .registers 3

    .line 700
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    if-eqz v0, :cond_c

    .line 701
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->release()V

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    .line 704
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_22

    .line 706
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    if-eqz v0, :cond_22

    .line 708
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 711
    :cond_22
    return-void
.end method
