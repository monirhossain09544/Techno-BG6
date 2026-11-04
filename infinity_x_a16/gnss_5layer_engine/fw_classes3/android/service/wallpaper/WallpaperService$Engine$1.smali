.class Landroid/service/wallpaper/WallpaperService$Engine$1;
.super Lcom/android/internal/view/BaseSurfaceHolder;
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

    .line 394
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    .line 396
    const/4 p1, 0x2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->mRequestedFormat:I

    .line 397
    return-void
.end method

.method private blacklist prepareToDraw()V
    .registers 3

    .line 438
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fgetmDisableDrawWakeLock(Landroid/service/wallpaper/WallpaperService$Engine;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 439
    return-void

    .line 441
    :cond_9
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fgetmDisplayState(Landroid/service/wallpaper/WallpaperService$Engine;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 443
    :try_start_12
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 446
    goto :goto_1f

    .line 444
    :catch_1e
    move-exception v0

    .line 448
    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public whitelist isCreating()Z
    .registers 2

    .line 417
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    return v0
.end method

.method public whitelist lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 452
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;->prepareToDraw()V

    .line 453
    invoke-super {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 2

    .line 458
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;->prepareToDraw()V

    .line 459
    invoke-super {p0, p1}, Lcom/android/internal/view/BaseSurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p1

    return-object p1
.end method

.method public whitelist lockHardwareCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 464
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;->prepareToDraw()V

    .line 465
    invoke-super {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onAllowLockCanvas()Z
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    return v0
.end method

.method public blacklist onRelayoutContainer()V
    .registers 3

    .line 406
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 407
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 408
    return-void
.end method

.method public blacklist onUpdateSurface()V
    .registers 3

    .line 412
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 413
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 414
    return-void
.end method

.method public whitelist setFixedSize(II)V
    .registers 4

    .line 422
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v0, :cond_f

    goto :goto_17

    .line 426
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Wallpapers currently only support sizing from layout"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_17
    :goto_17
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFixedSize(II)V

    .line 430
    return-void
.end method

.method public whitelist setKeepScreenOn(Z)V
    .registers 3

    .line 433
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Wallpapers do not support keep screen on"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
