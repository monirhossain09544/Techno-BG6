.class Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
.super Landroid/service/wallpaper/IWallpaperEngine$Stub;
.source "WallpaperService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IWallpaperEngineWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field final greylist-max-o mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final blacklist mDescription:Landroid/app/wallpaper/WallpaperDescription;

.field final blacklist mDisplay:Landroid/view/Display;

.field final blacklist mDisplayId:I

.field final blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final greylist-max-o mDisplayPadding:Landroid/graphics/Rect;

.field greylist-max-o mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field final blacklist mInfo:Landroid/app/WallpaperInfo;

.field final greylist-max-o mIsPreview:Z

.field final blacklist mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final blacklist mPendingSeqId:Ljava/util/concurrent/atomic/AtomicInteger;

.field blacklist mReportDraw:Z

.field greylist-max-o mReqHeight:I

.field greylist-max-o mReqWidth:I

.field greylist-max-o mShownReported:Z

.field final blacklist mWallpaperManager:Landroid/app/WallpaperManager;

.field blacklist mWhich:I

.field final greylist-max-o mWindowToken:Landroid/os/IBinder;

.field final greylist-max-o mWindowType:I

.field final synthetic blacklist this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCaller(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;IILandroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V
    .registers 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2545
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;-><init>()V

    .line 2524
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2526
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingSeqId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2530
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    .line 2546
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2547
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2}, Landroid/service/wallpaper/WallpaperService;->onProvideEngineLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2548
    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 2549
    iput-object p4, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    .line 2550
    iput p5, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    .line 2551
    iput-boolean p6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    .line 2552
    iput p7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 2553
    iput p8, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 2554
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {p2, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2555
    iput p10, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    .line 2556
    iput p11, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    .line 2557
    iput-object p12, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    .line 2558
    move-object/from16 p2, p13

    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    .line 2561
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2562
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    .line 2564
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    if-eqz p1, :cond_71

    .line 2568
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2569
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2570
    return-void

    .line 2566
    :cond_71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot find display with id"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist doAttachEngine()V
    .registers 5

    .line 2706
    const-string v0, "WallpaperService"

    const-string v1, "WPMS.onCreateEngine"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2708
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine(Landroid/app/wallpaper/WallpaperDescription;)Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v1

    .line 2709
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2710
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 2711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPMS.mConnection.attachEngine-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2713
    :try_start_2c
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-interface {v2, p0, v3}, Landroid/service/wallpaper/IWallpaperConnection;->attachEngine(Landroid/service/wallpaper/IWallpaperEngine;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_33} :catch_43
    .catchall {:try_start_2c .. :try_end_33} :catchall_5a

    .line 2723
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2724
    nop

    .line 2725
    const-string v0, "WPMS.engine.attach"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {v1, p0}, Landroid/service/wallpaper/WallpaperService$Engine;->attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V

    .line 2727
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2728
    return-void

    .line 2718
    :catch_43
    move-exception v1

    .line 2719
    :try_start_44
    const-string v2, "Connector instance already destroyed, can\'t attach engine to non existing connector"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_5a

    .line 2723
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2721
    return-void

    .line 2714
    :catch_4d
    move-exception v2

    .line 2715
    :try_start_4e
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    .line 2716
    const-string v1, "Wallpaper host disappeared"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_5a

    .line 2723
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2717
    return-void

    .line 2723
    :catchall_5a
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2724
    throw v0
.end method

.method private blacklist doDetachEngine()V
    .registers 6

    .line 2733
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_4c

    .line 2734
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    .line 2735
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 2736
    :try_start_16
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 2737
    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v3, :cond_46

    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v3, :cond_46

    .line 2738
    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2739
    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2741
    :cond_46
    goto :goto_24

    .line 2742
    :cond_47
    monitor-exit v0

    goto :goto_4c

    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_16 .. :try_end_4b} :catchall_49

    throw v1

    .line 2744
    :cond_4c
    :goto_4c
    return-void
.end method

.method private blacklist handleResized(Landroid/util/MergedConfiguration;I)V
    .registers 9

    .line 2885
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 2886
    :goto_7
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v3}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmAlwaysSeqId(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_27

    .line 2887
    if-eqz p2, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v0

    .line 2888
    :goto_15
    if-eqz v2, :cond_1e

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    goto :goto_1f

    :cond_1e
    move v5, v4

    .line 2889
    :goto_1f
    if-eqz v3, :cond_23

    .line 2890
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReportDraw:Z

    .line 2892
    :cond_23
    if-lez v5, :cond_26

    .line 2898
    return-void

    .line 2900
    :cond_26
    goto :goto_32

    .line 2901
    :cond_27
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingSeqId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 2902
    if-eqz v2, :cond_32

    if-le v3, p2, :cond_32

    .line 2908
    return-void

    .line 2911
    :cond_32
    :goto_32
    if-eqz v2, :cond_3b

    .line 2916
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v2, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 2918
    :cond_3b
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmAlwaysSeqId(Landroid/service/wallpaper/WallpaperService;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 2919
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {p1, v1, p2, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZIZ)V

    goto :goto_52

    .line 2921
    :cond_49
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReportDraw:Z

    invoke-virtual {p1, v1, v4, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZIZ)V

    .line 2922
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReportDraw:Z

    .line 2924
    :goto_52
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {p1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 2925
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService$Engine;->scaleAndCropScreenshot()V

    .line 2926
    return-void
.end method


# virtual methods
.method public blacklist addLocalColorsAreas(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2654
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->addLocalColorsAreas(Ljava/util/List;)V

    .line 2655
    return-void
.end method

.method public blacklist applyDimming(F)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2662
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2663
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 2662
    const/16 v1, 0x27d8

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object p1

    .line 2664
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2665
    return-void
.end method

.method public greylist-max-o destroy()V
    .registers 4

    .line 2668
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2669
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2670
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2671
    return-void
.end method

.method public greylist-max-o dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 3

    .line 2607
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_a

    .line 2608
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$mdispatchPointer(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 2610
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2612
    :goto_d
    return-void
.end method

.method public greylist-max-o dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 7

    .line 2616
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_c

    .line 2617
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/view/BaseIWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 2619
    :cond_c
    return-void
.end method

.method public greylist-max-o executeMessage(Landroid/os/Message;)V
    .registers 7

    .line 2762
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_14c

    .line 2872
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14b

    .line 2867
    :sswitch_24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    .line 2869
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$mdoMirrorSurfaceControl(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/concurrent/CompletableFuture;)V

    .line 2870
    goto/16 :goto_14b

    .line 2863
    :sswitch_2f
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onWallpaperFlagsChanged(I)V

    .line 2864
    goto/16 :goto_14b

    .line 2794
    :sswitch_38
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$mupdateWallpaperDimming(Landroid/service/wallpaper/WallpaperService$Engine;F)V

    .line 2795
    goto/16 :goto_14b

    .line 2811
    :sswitch_45
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4c

    move v2, v3

    :cond_4c
    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onScreenTurningOnChanged(Z)V

    .line 2812
    goto/16 :goto_14b

    .line 2858
    :sswitch_51
    const-string p1, "WPMS.MSG_REPORT_SHOWN"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2859
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    .line 2860
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2861
    goto/16 :goto_14b

    .line 2797
    :sswitch_5e
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$mresizePreview(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/Rect;)V

    .line 2798
    goto/16 :goto_14b

    .line 2791
    :sswitch_69
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setZoom(F)V

    .line 2792
    goto/16 :goto_14b

    .line 2846
    :sswitch_76
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    if-nez p1, :cond_7c

    .line 2847
    goto/16 :goto_14b

    .line 2850
    :cond_7c
    :try_start_7c
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object p1

    .line 2851
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$msetPrimaryWallpaperColors(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/app/WallpaperColors;)V

    .line 2852
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-interface {v0, p1, v1}, Landroid/service/wallpaper/IWallpaperConnection;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_8e} :catch_90

    .line 2855
    goto/16 :goto_14b

    .line 2853
    :catch_90
    move-exception p1

    .line 2856
    goto/16 :goto_14b

    .line 2827
    :sswitch_93
    nop

    .line 2828
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    .line 2829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b6

    .line 2830
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2831
    :try_start_a4
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-ne v1, p1, :cond_b0

    .line 2832
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_b1

    .line 2835
    :cond_b0
    move v2, v3

    .line 2837
    :goto_b1
    monitor-exit v0

    goto :goto_b6

    :catchall_b3
    move-exception p1

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_a4 .. :try_end_b5} :catchall_b3

    throw p1

    .line 2839
    :cond_b6
    :goto_b6
    if-nez v2, :cond_bd

    .line 2841
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 2843
    :cond_bd
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2844
    goto/16 :goto_14b

    .line 2825
    :sswitch_c2
    goto/16 :goto_14b

    .line 2821
    :sswitch_c4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/MergedConfiguration;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->handleResized(Landroid/util/MergedConfiguration;I)V

    .line 2822
    goto/16 :goto_14b

    .line 2817
    :sswitch_cf
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 2818
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V

    .line 2819
    goto/16 :goto_14b

    .line 2814
    :sswitch_da
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {p1, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 2815
    goto :goto_14b

    .line 2802
    :sswitch_e0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v4}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmAlwaysSeqId(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 2803
    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v4}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fgetmVisSeqId(Landroid/service/wallpaper/WallpaperService$Engine;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_f8

    :cond_f7
    nop

    :goto_f8
    invoke-static {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fputmVisSeqId(Landroid/service/wallpaper/WallpaperService$Engine;I)V

    .line 2804
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_102

    move v2, v3

    :cond_102
    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2805
    goto :goto_14b

    .line 2788
    :sswitch_106
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {p1, v3, v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZIZ)V

    .line 2789
    goto :goto_14b

    .line 2784
    :sswitch_10c
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_113

    move v2, v3

    :cond_113
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->doAmbientModeChanged(ZJ)V

    .line 2785
    return-void

    .line 2780
    :sswitch_11f
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->doDisplayPaddingChanged(Landroid/graphics/Rect;)V

    .line 2781
    return-void

    .line 2776
    :sswitch_129
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->doDesiredSizeChanged(II)V

    .line 2777
    return-void

    .line 2770
    :sswitch_133
    const-string p1, "WPMS.DO_DETACH"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2771
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->doDetachEngine()V

    .line 2772
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2773
    return-void

    .line 2764
    :sswitch_13f
    const-string p1, "WPMS.DO_ATTACH"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2765
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->doAttachEngine()V

    .line 2766
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2767
    return-void

    .line 2874
    :goto_14b
    return-void

    :sswitch_data_14c
    .sparse-switch
        0xa -> :sswitch_13f
        0x14 -> :sswitch_133
        0x1e -> :sswitch_129
        0x28 -> :sswitch_11f
        0x32 -> :sswitch_10c
        0x2710 -> :sswitch_106
        0x271a -> :sswitch_e0
        0x2724 -> :sswitch_da
        0x2729 -> :sswitch_cf
        0x272e -> :sswitch_c4
        0x2733 -> :sswitch_c2
        0x2738 -> :sswitch_93
        0x2742 -> :sswitch_76
        0x2774 -> :sswitch_69
        0x277e -> :sswitch_5e
        0x27a6 -> :sswitch_51
        0x27ba -> :sswitch_45
        0x27d8 -> :sswitch_38
        0x27e2 -> :sswitch_2f
        0x27ec -> :sswitch_24
    .end sparse-switch
.end method

.method public blacklist mirrorSurfaceControl()Landroid/view/SurfaceControl;
    .registers 7

    .line 2680
    const-string v0, "WallpaperService"

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_e

    goto :goto_4e

    .line 2683
    :cond_e
    const-string v1, "WPMS.mirrorSurfaceControl"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2685
    :try_start_13
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2686
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x27ec

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2687
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2688
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_2f} :catch_3e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_2f} :catch_3e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_13 .. :try_end_2f} :catch_33
    .catchall {:try_start_13 .. :try_end_2f} :catchall_49

    .line 2696
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2688
    return-object v1

    .line 2692
    :catch_33
    move-exception v1

    .line 2693
    :try_start_34
    const-string v3, "mirrorSurfaceControl timed out"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_49

    .line 2694
    nop

    .line 2696
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2694
    return-object v2

    .line 2689
    :catch_3e
    move-exception v1

    .line 2690
    :try_start_3f
    const-string v3, "mirrorSurfaceControl failed with an exception: "

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_49

    .line 2691
    nop

    .line 2696
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2691
    return-object v2

    .line 2696
    :catchall_49
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2697
    throw v0

    .line 2681
    :cond_4e
    :goto_4e
    return-object v2
.end method

.method public blacklist onApplyWallpaper(I)Landroid/app/wallpaper/WallpaperDescription;
    .registers 3

    .line 2702
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWallpaper(I)Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public blacklist onScreenTurnedOn()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2757
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->updateScreenTurningOn(Z)V

    .line 2758
    return-void
.end method

.method public blacklist onScreenTurningOn()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2753
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->updateScreenTurningOn(Z)V

    .line 2754
    return-void
.end method

.method public blacklist removeLocalColorsAreas(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2658
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->removeLocalColorsAreas(Ljava/util/List;)V

    .line 2659
    return-void
.end method

.method public greylist-max-o reportShown()V
    .registers 4

    .line 2627
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v1, "WallpaperService"

    if-nez v0, :cond_c

    .line 2628
    const-string v0, "Can\'t report null engine as shown."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    return-void

    .line 2631
    :cond_c
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_18

    .line 2632
    const-string v0, "Engine was destroyed before we could draw."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    return-void

    .line 2635
    :cond_18
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v0, :cond_4b

    .line 2636
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    .line 2637
    const-string v0, "WPMS.mConnection.engineShown"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2639
    :try_start_24
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    invoke-interface {v0, p0}, Landroid/service/wallpaper/IWallpaperConnection;->engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V

    .line 2640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper has updated the surface:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_41} :catch_42

    .line 2643
    goto :goto_48

    .line 2641
    :catch_42
    move-exception v0

    .line 2642
    const-string v2, "Wallpaper host disappeared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2644
    :goto_48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2646
    :cond_4b
    return-void
.end method

.method public greylist-max-o requestWallpaperColors()V
    .registers 3

    .line 2649
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2742

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2650
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2651
    return-void
.end method

.method public blacklist resizePreview(Landroid/graphics/Rect;)V
    .registers 4

    .line 2674
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x277e

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2675
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2676
    return-void
.end method

.method public greylist-max-o setDesiredSize(II)V
    .registers 5

    .line 2573
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    .line 2574
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2575
    return-void
.end method

.method public greylist-max-o setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 4

    .line 2578
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2579
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2580
    return-void
.end method

.method public blacklist setInAmbientMode(ZJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2601
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2602
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 2601
    const/16 p3, 0x32

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2603
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2604
    return-void
.end method

.method public greylist-max-o setVisibility(Z)V
    .registers 5

    .line 2583
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2584
    nop

    .line 2583
    const/16 v1, 0x271a

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    .line 2585
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2586
    return-void
.end method

.method public blacklist setWallpaperFlags(I)V
    .registers 4

    .line 2590
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    if-ne p1, v0, :cond_5

    .line 2591
    return-void

    .line 2593
    :cond_5
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    .line 2594
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x27e2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object p1

    .line 2595
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2596
    return-void
.end method

.method public blacklist setZoomOut(F)V
    .registers 4

    .line 2622
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2774

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object p1

    .line 2623
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2624
    return-void
.end method

.method public blacklist updateScreenTurningOn(Z)V
    .registers 5

    .line 2747
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x27ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2749
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2750
    return-void
.end method
