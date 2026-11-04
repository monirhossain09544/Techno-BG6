.class public abstract Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;
.super Landroid/app/TaskStackListener;
.source "FullscreenTaskStackChangeListener.java"


# static fields
.field private static final blacklist DEFAULT_TAG:Ljava/lang/String; = "FullscreenTaskStackChangeListener"


# instance fields
.field private final blacklist mActivityManager:Landroid/app/ActivityManager;

.field private final blacklist mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private blacklist mDebug:Z

.field private blacklist mDebugTag:Ljava/lang/String;

.field private final blacklist mIActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private blacklist mListening:Z

.field private final blacklist mObserveActivityChange:Z

.field private blacklist mTopActivity:Ljava/lang/String;

.field private blacklist mTopPackage:Ljava/lang/String;

.field private blacklist mTopTaskId:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;-><init>(Landroid/content/Context;Z)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 48
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mDebug:Z

    .line 36
    const-string v1, "FullscreenTaskStackChangeListener"

    iput-object v1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mDebugTag:Ljava/lang/String;

    .line 38
    iput-boolean v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mListening:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopPackage:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopActivity:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopTaskId:I

    .line 49
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mActivityManager:Landroid/app/ActivityManager;

    .line 50
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 51
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mIActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 52
    iput-boolean p2, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mObserveActivityChange:Z

    .line 53
    return-void
.end method

.method private blacklist handleChange(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopActivity:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 77
    return-void

    .line 79
    :cond_11
    iput-object p2, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopActivity:Ljava/lang/String;

    .line 80
    iget-boolean p2, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mObserveActivityChange:Z

    if-nez p2, :cond_20

    iget-object p2, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopPackage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 81
    return-void

    .line 83
    :cond_20
    iput-object p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopPackage:Ljava/lang/String;

    .line 84
    iput p3, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopTaskId:I

    .line 85
    iget-boolean p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mDebug:Z

    if-eqz p1, :cond_5a

    .line 86
    iget-object p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mDebugTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Change: mTopPackage="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopPackage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", mTopActivity="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopActivity:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", mTopTaskId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopTaskId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_5a
    iget-object p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopPackage:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopActivity:Ljava/lang/String;

    iget p3, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopTaskId:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->onFullscreenTaskChanged(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    return-void
.end method


# virtual methods
.method public blacklist forceCheck()V
    .registers 4

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mIActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 108
    if-nez v0, :cond_9

    .line 109
    return-void

    .line 111
    :cond_9
    invoke-virtual {v0}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    .line 112
    return-void

    .line 114
    :cond_11
    iget-object v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 115
    if-nez v1, :cond_16

    .line 116
    return-void

    .line 118
    :cond_16
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->handleChange(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_25

    .line 119
    :catch_24
    move-exception v0

    :goto_25
    nop

    .line 120
    return-void
.end method

.method public blacklist getTopActivityName()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopActivity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTopPackageName()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTopTaskId()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mTopTaskId:I

    return v0
.end method

.method public abstract blacklist onFullscreenTaskChanged(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public blacklist onTaskFocusChanged(IZ)V
    .registers 3

    .line 100
    if-eqz p2, :cond_5

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->forceCheck()V

    .line 103
    :cond_5
    return-void
.end method

.method public blacklist onTaskStackChanged()V
    .registers 1

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->forceCheck()V

    .line 96
    return-void
.end method

.method public blacklist setDebug(Z)V
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mDebug:Z

    .line 57
    return-void
.end method

.method public blacklist setDebugTag(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mDebugTag:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public blacklist setListening(Z)V
    .registers 3

    .line 64
    iget-boolean v0, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mListening:Z

    if-eq v0, p1, :cond_17

    .line 65
    if-eqz p1, :cond_f

    .line 66
    iget-object p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {p1, p0}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 67
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mListening:Z

    goto :goto_17

    .line 69
    :cond_f
    iget-object p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {p1, p0}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 70
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/util/neoteric/FullscreenTaskStackChangeListener;->mListening:Z

    .line 73
    :cond_17
    :goto_17
    return-void
.end method
