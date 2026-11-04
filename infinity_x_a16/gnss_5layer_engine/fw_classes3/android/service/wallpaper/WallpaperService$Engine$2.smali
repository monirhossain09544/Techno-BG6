.class Landroid/service/wallpaper/WallpaperService$Engine$2;
.super Lcom/android/internal/view/BaseIWindow;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 491
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchAppVisibility(ZI)V
    .registers 5

    .line 523
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v0, :cond_1a

    .line 524
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 525
    nop

    .line 524
    const/16 v1, 0x271a

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    .line 526
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 528
    :cond_1a
    return-void
.end method

.method public blacklist dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 8

    .line 552
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_5
    new-instance v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;-><init>()V

    .line 555
    iput-object p1, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    .line 556
    iput p2, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    .line 557
    iput p3, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    .line 558
    iput p4, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    .line 559
    iput-object p5, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    .line 560
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 p2, 0x2729

    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 561
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 562
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 563
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public blacklist dispatchWallpaperOffsets(FFFFF)V
    .registers 8

    .line 533
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_5
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v1, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fputmPendingXOffset(Landroid/service/wallpaper/WallpaperService$Engine;F)V

    .line 536
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fputmPendingYOffset(Landroid/service/wallpaper/WallpaperService$Engine;F)V

    .line 537
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {p1, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fputmPendingXOffsetStep(Landroid/service/wallpaper/WallpaperService$Engine;F)V

    .line 538
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {p1, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fputmPendingYOffsetStep(Landroid/service/wallpaper/WallpaperService$Engine;F)V

    .line 539
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean p1, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    if-nez p1, :cond_35

    .line 540
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 541
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 p2, 0x2724

    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 542
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 544
    :cond_35
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    const/16 p3, 0x2774

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object p1

    .line 545
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 546
    monitor-exit v0

    .line 547
    return-void

    .line 546
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public blacklist moved(II)V
    .registers 5

    .line 515
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2733

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    .line 516
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 517
    return-void
.end method

.method public blacklist resized(Landroid/view/WindowRelayoutResult;ZZIZZ)V
    .registers 7

    .line 497
    iget-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p3, p3, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {p3}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmAlwaysSeqId(Landroid/service/wallpaper/WallpaperService;)Z

    move-result p3

    const/16 p4, 0x272e

    if-eqz p3, :cond_34

    .line 498
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget p3, p1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    iget-object p5, p1, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p2, p4, p3, p5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 500
    iget-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p3, p3, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object p3, p3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingSeqId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    .line 501
    :goto_22
    iget p4, p1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    if-ge p3, p4, :cond_33

    .line 502
    iget-object p4, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p4, p4, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object p4, p4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingSeqId:Ljava/util/concurrent/atomic/AtomicInteger;

    iget p5, p1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    invoke-virtual {p4, p3, p5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndExchange(II)I

    move-result p3

    goto :goto_22

    .line 505
    :cond_33
    goto :goto_47

    .line 506
    :cond_34
    iget-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p3, p3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object p1, p1, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p3, p4, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 508
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 510
    :goto_47
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 511
    return-void
.end method
