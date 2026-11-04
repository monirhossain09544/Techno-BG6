.class Lcom/android/internal/util/LatencyTracker$Session;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/LatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mAction:I

.field private blacklist mEndRtc:J

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mStartRtc:J

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$Dzezij23-uI942iyKn2O1MqIAl0(Lcom/android/internal/util/LatencyTracker$Session;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker$Session;->lambda$begin$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartRtc(Lcom/android/internal/util/LatencyTracker$Session;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    return-wide v0
.end method

.method constructor blacklist <init>(ILjava/lang/String;)V
    .registers 5

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    .line 895
    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mEndRtc:J

    .line 898
    iput p1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mAction:I

    .line 899
    iput-object p2, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTag:Ljava/lang/String;

    .line 900
    iget-object p1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 901
    sget-object p1, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    iget p2, p0, Lcom/android/internal/util/LatencyTracker$Session;->mAction:I

    aget p1, p1, p2

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    .line 902
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    iget v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mAction:I

    aget p2, p2, v0

    invoke-static {p2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "::"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_43
    iput-object p1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mName:Ljava/lang/String;

    .line 903
    return-void
.end method

.method private synthetic blacklist lambda$begin$0(Ljava/lang/Runnable;)V
    .registers 6

    .line 919
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeout"

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 921
    return-void
.end method


# virtual methods
.method blacklist begin(Ljava/lang/Runnable;)V
    .registers 7

    .line 914
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    .line 915
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v0, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 918
    new-instance v0, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/LatencyTracker$Session;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 922
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 923
    const-wide/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 924
    return-void
.end method

.method blacklist cancel()V
    .registers 5

    .line 934
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel"

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 936
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 938
    return-void
.end method

.method blacklist duration()I
    .registers 5

    .line 941
    iget-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mEndRtc:J

    iget-wide v2, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method blacklist end()V
    .registers 5

    .line 927
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mEndRtc:J

    .line 928
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 929
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 931
    return-void
.end method

.method blacklist name()Ljava/lang/String;
    .registers 2

    .line 906
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist traceName()Ljava/lang/String;
    .registers 3

    .line 910
    iget v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mAction:I

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/LatencyTracker;->-$$Nest$smgetTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
