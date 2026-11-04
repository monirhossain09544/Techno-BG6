.class public Lcom/android/internal/view/SurfaceCallbackHelper;
.super Ljava/lang/Object;
.source "SurfaceCallbackHelper.java"


# static fields
.field private static final blacklist LOGTAG_SURFACEVIEW_CALLBACK:I = 0xea66


# instance fields
.field blacklist mFinishDrawingCollected:I

.field blacklist mFinishDrawingExpected:I

.field private blacklist mFinishDrawingRunnable:Ljava/lang/Runnable;

.field blacklist mRunnable:Ljava/lang/Runnable;

.field private blacklist mSurfaceRedrawImplemented:Z

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceRedrawImplemented(Lcom/android/internal/view/SurfaceCallbackHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mSurfaceRedrawImplemented:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Lcom/android/internal/view/SurfaceCallbackHelper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    .line 29
    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    .line 31
    new-instance v1, Lcom/android/internal/view/SurfaceCallbackHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/view/SurfaceCallbackHelper$1;-><init>(Lcom/android/internal/view/SurfaceCallbackHelper;)V

    iput-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p2, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mTag:Ljava/lang/String;

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mSurfaceRedrawImplemented:Z

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    .registers 7

    .line 60
    if-eqz p2, :cond_2e

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_2e

    .line 65
    :cond_6
    monitor-enter p0

    .line 66
    :try_start_7
    array-length v0, p2

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    .line 68
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_2b

    .line 70
    array-length v1, p2

    :goto_f
    if-ge v0, v1, :cond_2a

    aget-object v2, p2, v0

    .line 71
    instance-of v3, v2, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_22

    .line 72
    check-cast v2, Landroid/view/SurfaceHolder$Callback2;

    iget-object v3, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, p1, v3}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mSurfaceRedrawImplemented:Z

    goto :goto_27

    .line 76
    :cond_22
    iget-object v2, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 70
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 79
    :cond_2a
    return-void

    .line 68
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1

    .line 61
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 62
    return-void
.end method
