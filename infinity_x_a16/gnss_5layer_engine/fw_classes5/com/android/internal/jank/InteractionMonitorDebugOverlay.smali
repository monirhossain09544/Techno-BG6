.class public Lcom/android/internal/jank/InteractionMonitorDebugOverlay;
.super Ljava/lang/Object;
.source "InteractionMonitorDebugOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;,
        Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;,
        Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerStatus;
    }
.end annotation


# static fields
.field private static final blacklist HIDE_OVERLAY_DELAY:J = 0x7d0L

.field private static final blacklist STATUS_CANCELLED:I = 0x2

.field private static final blacklist STATUS_ENDED:I = 0x1

.field private static final blacklist STATUS_RUNNING:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "InteractionMonitorDebug"


# instance fields
.field private final blacklist mCurrentApplication:Landroid/app/Application;

.field private final blacklist mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

.field private final blacklist mHideOverlayRunnable:Ljava/lang/Runnable;

.field private final blacklist mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field private final blacklist mRunningCujs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUiThread:Landroid/os/Handler;

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$lKL24KOGNKjWLNLA0x31emQoRuM(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->lambda$dispose$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rRAM6ub7GIJYq1EsYJmRqi11UOA(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->lambda$onTrackerAdded$0(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tPM-rm0dkRvs34Wr3PFkBL-_nQA(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->lambda$onTrackerRemoved$1(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentApplication(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Landroid/app/Application;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mCurrentApplication:Landroid/app/Application;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDebugOverlayView(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Ljava/util/ArrayList;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/app/Application;Landroid/os/Handler;ID)V
    .registers 15

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$1;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHideOverlayRunnable:Ljava/lang/Runnable;

    .line 97
    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mCurrentApplication:Landroid/app/Application;

    .line 98
    iput-object p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    .line 99
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mCurrentApplication:Landroid/app/Application;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 100
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mCurrentApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    .line 102
    const/16 v0, 0x7d6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    .line 103
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mWindowManager:Landroid/view/WindowManager;

    .line 104
    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 105
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {p1, p0}, Lcom/android/internal/util/LatencyTracker;->setDebugOverlay(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V

    .line 107
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 109
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x800138

    const/4 v3, -0x3

    invoke-direct {v1, v0, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 116
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 119
    const/4 v0, 0x3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 120
    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 121
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p2, v0

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    const/16 p1, 0x11

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 126
    const-string p1, "InteractionMonitorDebugOverlay"

    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-nez p1, :cond_94

    .line 129
    const-string p1, "InteractionMonitorDebug"

    const-string p2, "InteractionMonitorDebugOverlay must be constructed on InteractionJankMonitor\'s worker thread"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_94
    new-instance v2, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    iget-object v4, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mCurrentApplication:Landroid/app/Application;

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;IDLcom/android/internal/jank/InteractionMonitorDebugOverlay-IA;)V

    iput-object v2, v3, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    .line 133
    iget-object p1, v3, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, v3, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void
.end method

.method private synthetic blacklist lambda$dispose$2()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method private synthetic blacklist lambda$onTrackerAdded$0(Ljava/lang/String;I)V
    .registers 6

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " started (cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InteractionMonitorDebug"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;-><init>(Ljava/lang/String;ILcom/android/internal/jank/InteractionMonitorDebugOverlay-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->invalidate()V

    .line 152
    return-void
.end method

.method private synthetic blacklist lambda$onTrackerRemoved$1(IZ)V
    .registers 10

    .line 158
    nop

    .line 159
    nop

    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_7
    iget-object v5, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_29

    .line 161
    iget-object v5, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;

    .line 162
    iget v6, v5, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCookie:I

    if-ne v6, p1, :cond_1d

    .line 163
    move-object v0, v5

    goto :goto_26

    .line 166
    :cond_1d
    if-eqz v4, :cond_25

    iget v4, v5, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mState:I

    if-eqz v4, :cond_25

    move v4, v1

    goto :goto_26

    :cond_25
    move v4, v2

    .line 160
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 170
    :cond_29
    if-eqz v0, :cond_30

    .line 171
    if-eqz p2, :cond_2e

    const/4 v1, 0x2

    :cond_2e
    iput v1, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mState:I

    .line 174
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_40

    const-string p2, " cancelled"

    goto :goto_42

    :cond_40
    const-string p2, " ended"

    :goto_42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " (cookie="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InteractionMonitorDebug"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz v4, :cond_6f

    .line 178
    const-string p1, "All CUJs ended"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHideOverlayRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :cond_6f
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->invalidate()V

    .line 182
    return-void
.end method


# virtual methods
.method blacklist dispose()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->setDebugOverlay(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method public blacklist onTrackerAdded(Ljava/lang/String;I)V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHideOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public blacklist onTrackerRemoved(ZI)V
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method
