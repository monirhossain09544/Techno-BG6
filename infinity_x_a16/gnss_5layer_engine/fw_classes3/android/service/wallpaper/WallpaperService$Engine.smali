.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# instance fields
.field blacklist mBbqApplyToken:Landroid/os/IBinder;

.field blacklist mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field private final greylist-max-o mClockFunction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field greylist-max-o mCreated:Z

.field greylist-max-o mCurHeight:I

.field greylist-max-o mCurWidth:I

.field greylist-max-o mCurWindowFlags:I

.field greylist-max-o mCurWindowPrivateFlags:I

.field private blacklist mCustomDimAmount:F

.field private blacklist mDefaultDimAmount:F

.field greylist-max-o mDestroyed:Z

.field private final blacklist mDisableDrawWakeLock:Z

.field final greylist-max-o mDispatchedContentInsets:Landroid/graphics/Rect;

.field greylist-max-o mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

.field final greylist-max-o mDispatchedStableInsets:Landroid/graphics/Rect;

.field private greylist-max-o mDisplay:Landroid/view/Display;

.field private blacklist mDisplayContext:Landroid/content/Context;

.field private final greylist-max-o mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private greylist-max-o mDisplayState:I

.field greylist-max-o mDrawingAllowed:Z

.field private final blacklist mEnableTransformSurfaceControlCommand:Z

.field greylist-max-o mFixedSizeAllowed:Z

.field greylist-max-o mFormat:I

.field private blacklist mFrozenRequested:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mHeight:I

.field greylist-max-o mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field greylist-max-o mInitializing:Z

.field greylist-max-o mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field final blacklist mInsetsState:Landroid/view/InsetsState;

.field greylist-max-o mIsCreating:Z

.field greylist-max-o mIsInAmbientMode:Z

.field private blacklist mIsScreenTurningOn:Z

.field private greylist-max-o mLastColorInvalidation:J

.field private blacklist mLastProcessLocalColorsTimestamp:J

.field private blacklist mLastScreenshot:Landroid/graphics/Bitmap;

.field private final blacklist mLastSurfaceSize:Landroid/graphics/Point;

.field final greylist-max-o mLayout:Landroid/view/WindowManager$LayoutParams;

.field private final blacklist mLocalColorAreas:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalColorsToAdd:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mLock:Ljava/lang/Object;

.field final greylist-max-o mMergedConfiguration:Landroid/util/MergedConfiguration;

.field private final greylist-max-o mNotifyColorsChanged:Ljava/lang/Runnable;

.field greylist-max-o mOffsetMessageEnqueued:Z

.field greylist-max-o mOffsetsChanged:Z

.field greylist-max-o mPendingMove:Landroid/view/MotionEvent;

.field private greylist-max-p mPendingXOffset:F

.field private greylist-max-o mPendingXOffsetStep:F

.field private greylist-max-o mPendingYOffset:F

.field private greylist-max-o mPendingYOffsetStep:F

.field private blacklist mPixelCopyCount:I

.field blacklist mPreviewSurfacePosition:Landroid/graphics/Rect;

.field private blacklist mPreviousWallpaperDimAmount:F

.field private blacklist mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field blacklist mRelayoutResult:Landroid/view/WindowRelayoutResult;

.field blacklist mReportedSurfaceCreated:Z

.field greylist-max-o mReportedVisible:Z

.field private blacklist mResetWindowPages:Z

.field private blacklist mScreenshotSize:Landroid/graphics/Point;

.field private blacklist mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

.field blacklist mSeqId:I

.field greylist-max-o mSession:Landroid/view/IWindowSession;

.field blacklist mShouldDimByDefault:Z

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSurfaceCreated:Z

.field final greylist-max-o mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field private final blacklist mSurfaceReleaseLock:Ljava/lang/Object;

.field private final blacklist mSurfaceSize:Landroid/graphics/Point;

.field final blacklist mTempControls:Landroid/view/InsetsSourceControl$Array;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTmpValues:[F

.field blacklist mTransformSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mType:I

.field private blacklist mVisSeqId:I

.field greylist-max-o mVisible:Z

.field private blacklist mWallpaperDimAmount:F

.field greylist-max-o mWidth:I

.field final blacklist mWinFrames:Landroid/window/ClientWindowFrames;

.field final greylist-max-o mWindow:Lcom/android/internal/view/BaseIWindow;

.field greylist-max-o mWindowFlags:I

.field private blacklist mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

.field greylist-max-o mWindowPrivateFlags:I

.field greylist-max-o mWindowToken:Landroid/os/IBinder;

.field blacklist mZoom:F

.field final synthetic blacklist this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public static synthetic blacklist $r8$lambda$3jX6LT2WFK8p48hRgDRaH45bOtA(Landroid/service/wallpaper/WallpaperService$Engine;ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updatePage$2(ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DP3zhCwfM-jUectCyYRWZR9n0cA(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$addLocalColorsAreas$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GShbwRGG_28Qbgw7ZiWH2EcBra8(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$removeLocalColorsAreas$5(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ohYq4B3nAldT3-sO9RiLuVHOv-0(Landroid/service/wallpaper/WallpaperService$Engine;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$processLocalColors$1(JJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uohwGsM6sV51YVYxLOMvwkrCKSs(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updateWallpaperDimming$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uvEMS0sEXbaKTh-TxU28qDRsYcY(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updatePageColors$3(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisableDrawWakeLock(Landroid/service/wallpaper/WallpaperService$Engine;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisableDrawWakeLock:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayState(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .registers 1

    iget p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisSeqId(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .registers 1

    iget p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisSeqId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingXOffset(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingXOffsetStep(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingYOffset(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingYOffsetStep(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVisSeqId(Landroid/service/wallpaper/WallpaperService$Engine;I)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisSeqId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchPointer(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoMirrorSurfaceControl(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->doMirrorSurfaceControl(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresizePreview(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->resizePreview(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPrimaryWallpaperColors(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/app/WallpaperColors;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateWallpaperDimming(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/wallpaper/WallpaperService;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 571
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    .line 572
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 582
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 297
    const/4 v1, 0x0

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 298
    const/16 v2, 0x10

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 299
    const/4 v2, 0x4

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 301
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 302
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 304
    new-instance v3, Landroid/window/ClientWindowFrames;

    invoke-direct {v3}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    .line 305
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    .line 306
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    .line 307
    sget-object v3, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 308
    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3}, Landroid/view/InsetsState;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 309
    new-instance v3, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v3}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    .line 310
    new-instance v3, Landroid/util/MergedConfiguration;

    invoke-direct {v3}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 312
    new-instance v3, Landroid/view/SurfaceControl;

    invoke-direct {v3}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 313
    new-instance v3, Landroid/view/WindowRelayoutResult;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    .line 316
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    .line 317
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 318
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 319
    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    .line 321
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 324
    const/4 v3, -0x1

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSeqId:I

    .line 330
    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisSeqId:I

    .line 333
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 334
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceReleaseLock:Ljava/lang/Object;

    .line 350
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    .line 353
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    .line 356
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 357
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    .line 359
    new-array v2, v0, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 369
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    .line 377
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    .line 378
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 379
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 380
    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 387
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqApplyToken:Landroid/os/IBinder;

    .line 389
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    .line 394
    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v1, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 491
    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v1, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    .line 2447
    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$4;

    invoke-direct {v1, p0}, Landroid/service/wallpaper/WallpaperService$Engine$4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 583
    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    .line 584
    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    .line 585
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->enableWallpaperTransformSurfaceControlCommand()Z

    move-result p2

    iput-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mEnableTransformSurfaceControlCommand:Z

    .line 586
    const-wide/32 p2, 0x158b0a60

    invoke-static {p2, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_102

    .line 587
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->disableDrawWakeLock()Z

    move-result p2

    if-eqz p2, :cond_102

    goto :goto_103

    :cond_102
    move p1, v0

    :goto_103
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisableDrawWakeLock:Z

    .line 588
    return-void
.end method

.method private blacklist cleanUpScreenshotSurfaceControl()V
    .registers 3

    .line 2252
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_22

    .line 2253
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2254
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2255
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mEnableTransformSurfaceControlCommand:Z

    if-eqz v1, :cond_16

    .line 2256
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTransformSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_18

    :cond_16
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2255
    :goto_18
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2257
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2258
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2260
    :cond_22
    return-void
.end method

.method private greylist-max-o dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1212
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1213
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 1214
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_16

    .line 1216
    :cond_13
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 1218
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_25

    .line 1219
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2738

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1220
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1221
    goto :goto_2b

    .line 1218
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1

    .line 1222
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1224
    :goto_2b
    return-void
.end method

.method private blacklist doMirrorSurfaceControl(Ljava/util/concurrent/CompletableFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/view/SurfaceControl;",
            ">;)V"
        }
    .end annotation

    .line 1849
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1850
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 1852
    :cond_10
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 1853
    return-void
.end method

.method private blacklist fixRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5

    .line 2181
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_13

    goto :goto_16

    .line 2183
    :cond_13
    iget v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_17

    .line 2182
    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 2183
    :goto_17
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 2184
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_2b

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_28

    goto :goto_2b

    .line 2186
    :cond_28
    iget p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2f

    .line 2185
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 2186
    :goto_2f
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 2187
    return-object p2
.end method

.method private blacklist freeze()V
    .registers 2

    .line 2228
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_9

    goto :goto_18

    .line 2232
    :cond_9
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->showScreenshotOfWallpaper()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2233
    return-void

    .line 2236
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2240
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2241
    return-void

    .line 2230
    :cond_18
    :goto_18
    return-void
.end method

.method private blacklist generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .registers 8

    .line 2097
    int-to-float v0, p2

    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 2098
    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    div-float/2addr p2, p3

    .line 2099
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 2100
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 2103
    cmpg-float v3, v1, v0

    if-gez v3, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    .line 2104
    :goto_11
    cmpl-float v1, v2, p2

    if-lez v1, :cond_16

    goto :goto_17

    :cond_16
    move p2, v2

    .line 2107
    :goto_17
    mul-float/2addr v0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    rem-float/2addr v0, v1

    .line 2108
    mul-float/2addr p2, p3

    rem-float/2addr p2, v1

    .line 2109
    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_23

    .line 2110
    goto :goto_24

    .line 2109
    :cond_23
    move v1, p2

    .line 2113
    :goto_24
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p2, v0, p3, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2
.end method

.method private blacklist getOrCreateBLASTSurface(III)Landroid/view/Surface;
    .registers 7

    .line 2464
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3a

    .line 2470
    :cond_e
    nop

    .line 2471
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v0, :cond_32

    .line 2472
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    const-string v1, "Wallpaper"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2474
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqApplyToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setApplyToken(Landroid/os/IBinder;)V

    .line 2475
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 2478
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {p1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v1

    goto :goto_39

    .line 2480
    :cond_32
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 2483
    :goto_39
    return-object v1

    .line 2465
    :cond_3a
    :goto_3a
    const-string p1, "WallpaperService"

    const-string p2, "Skipping BlastBufferQueue update/create - invalid surface control"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    return-object v1
.end method

.method private blacklist getRectFPage(Landroid/graphics/RectF;F)I
    .registers 5

    .line 2128
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2129
    :cond_a
    invoke-direct {p0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 2130
    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 2131
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    int-to-float v0, p2

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2132
    if-ne p1, p2, :cond_27

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 2133
    :cond_27
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length p2, p2

    if-ne p1, p2, :cond_31

    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 2134
    :cond_31
    return p1
.end method

.method private blacklist initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V
    .registers 6

    .line 1962
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 1963
    new-instance v1, Landroid/service/wallpaper/EngineWindowPage;

    invoke-direct {v1}, Landroid/service/wallpaper/EngineWindowPage;-><init>()V

    aput-object v1, p1, v0

    .line 1962
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1965
    :cond_e
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1966
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1967
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1968
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v2, v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1969
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1970
    goto :goto_20

    .line 1972
    :cond_3a
    invoke-direct {p0, v1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v2

    .line 1973
    aget-object v2, p1, v2

    invoke-virtual {v2, v1}, Landroid/service/wallpaper/EngineWindowPage;->addArea(Landroid/graphics/RectF;)V

    .line 1974
    goto :goto_20

    .line 1975
    :cond_44
    return-void
.end method

.method private synthetic blacklist lambda$addLocalColorsAreas$4(Ljava/util/List;)V
    .registers 4

    .line 2148
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2149
    :try_start_3
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2150
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 2151
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 2152
    return-void

    .line 2150
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method private synthetic blacklist lambda$processLocalColors$1(JJ)V
    .registers 5

    .line 1867
    add-long/2addr p1, p3

    iput-wide p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastProcessLocalColorsTimestamp:J

    .line 1868
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1869
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColorsInternal()V

    .line 1870
    return-void
.end method

.method private synthetic blacklist lambda$removeLocalColorsAreas$5(Ljava/util/List;)V
    .registers 8

    .line 2163
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2164
    :try_start_3
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 2165
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 2166
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 2167
    invoke-direct {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2168
    monitor-exit v0

    return-void

    .line 2170
    :cond_17
    const/4 v1, 0x0

    move v2, v1

    :goto_19
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v3, v3

    if-ge v2, v3, :cond_38

    .line 2171
    move v3, v1

    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 2172
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v4, v4, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/service/wallpaper/EngineWindowPage;->removeArea(Landroid/graphics/RectF;)V

    .line 2171
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 2170
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2175
    :cond_38
    monitor-exit v0

    .line 2176
    return-void

    .line 2175
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private synthetic blacklist lambda$updatePage$2(ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V
    .registers 12

    .line 2008
    const-string v0, "WallpaperService#pixelCopy"

    invoke-static {v0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 2013
    if-eqz p10, :cond_24

    .line 2014
    invoke-virtual {p2}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2016
    iget-object p7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p7}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2017
    iget-object p7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 2018
    if-eqz p7, :cond_23

    invoke-static {p1, p7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 2019
    move p7, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p7}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    .line 2022
    :cond_23
    goto :goto_36

    .line 2023
    :cond_24
    move-object p1, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p0

    iput-object p1, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 2024
    invoke-virtual {p3, p1}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2025
    invoke-virtual {p3, p8, p9}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 2026
    invoke-direct/range {p2 .. p7}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    .line 2029
    :goto_36
    return-void
.end method

.method private synthetic blacklist lambda$updatePageColors$3(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .registers 5

    .line 2085
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 2086
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 2085
    invoke-interface {v0, p1, p2, v1}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2089
    goto :goto_14

    .line 2087
    :catch_c
    move-exception p1

    .line 2088
    const-string p2, "WallpaperService"

    const-string v0, "Error calling Connection.onLocalWallpaperColorsChanged"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2090
    :goto_14
    return-void
.end method

.method private synthetic blacklist lambda$updateWallpaperDimming$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 1091
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 1092
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1093
    :try_start_d
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1094
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    .line 1095
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1097
    :cond_25
    monitor-exit v0

    .line 1098
    return-void

    .line 1097
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_27

    throw p1
.end method

.method private blacklist processLocalColors()V
    .registers 8

    .line 1860
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1861
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1862
    iget-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastProcessLocalColorsTimestamp:J

    sub-long v0, v3, v0

    .line 1863
    const-wide/16 v5, 0x7d0

    sub-long/2addr v5, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1866
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda7;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda7;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;JJ)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1872
    :cond_2e
    return-void
.end method

.method private blacklist processLocalColorsInternal()V
    .registers 12

    .line 1883
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1892
    :cond_7
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1893
    :try_start_a
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 1894
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 1895
    iget v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 1901
    rem-float v3, v0, v2

    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c0

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1902
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_c0

    .line 1904
    :cond_27
    invoke-direct {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-nez v3, :cond_36

    .line 1908
    nop

    .line 1909
    nop

    .line 1910
    nop

    .line 1911
    const/4 v0, 0x0

    move v7, v5

    goto :goto_4a

    .line 1913
    :cond_36
    div-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v5

    .line 1914
    int-to-float v3, v2

    div-float/2addr v4, v3

    .line 1915
    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 1916
    mul-float/2addr v0, v6

    .line 1917
    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v7, v2

    .line 1924
    :goto_4a
    nop

    .line 1925
    nop

    .line 1927
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 1928
    nop

    .line 1929
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v2

    if-eq v2, v7, :cond_63

    .line 1930
    :cond_5a
    new-array v2, v7, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 1931
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    invoke-direct {p0, v2, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V

    .line 1933
    :cond_63
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-eqz v2, :cond_a1

    .line 1934
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 1935
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v6, v3}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_86

    goto :goto_71

    .line 1936
    :cond_86
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1937
    invoke-direct {p0, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v6

    .line 1938
    iget-object v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v6, v9, v6

    .line 1939
    const-wide/16 v9, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 1940
    invoke-virtual {v6, v3}, Landroid/service/wallpaper/EngineWindowPage;->removeColor(Landroid/graphics/RectF;)V

    .line 1941
    goto :goto_71

    .line 1942
    :cond_9c
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1944
    :cond_a1
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v2

    if-lt v0, v2, :cond_ac

    .line 1952
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v0, v0

    sub-int/2addr v0, v5

    move v6, v0

    goto :goto_ad

    .line 1944
    :cond_ac
    move v6, v0

    .line 1954
    :goto_ad
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v4, v0, v6

    .line 1955
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v4}, Landroid/service/wallpaper/EngineWindowPage;->getAreas()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1956
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_a .. :try_end_bb} :catchall_c2

    .line 1957
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePage(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    .line 1958
    return-void

    .line 1902
    :cond_c0
    :goto_c0
    :try_start_c0
    monitor-exit v1

    return-void

    .line 1956
    :catchall_c2
    move-exception v0

    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_c2

    throw v0
.end method

.method private blacklist reposition()V
    .registers 9

    .line 1614
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 1615
    return-void

    .line 1621
    :cond_5
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1622
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    .line 1623
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1622
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1624
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1625
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1626
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1628
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v1, 0x0

    aget v4, v0, v1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v1, 0x3

    aget v5, v0, v1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v1, 0x1

    aget v6, v0, v1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v1, 0x4

    aget v7, v0, v1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1630
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1631
    return-void
.end method

.method private blacklist resetWindowPages()V
    .registers 5

    .line 2118
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2119
    :cond_7
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    if-nez v0, :cond_c

    return-void

    .line 2120
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 2121
    nop

    :goto_10
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 2122
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 2121
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2124
    :cond_21
    return-void
.end method

.method private blacklist resizePreview(Landroid/graphics/Rect;)V
    .registers 4

    .line 1608
    if-eqz p1, :cond_f

    .line 1609
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFixedSize(II)V

    .line 1611
    :cond_f
    return-void
.end method

.method private blacklist sendTransformSurfaceControl()V
    .registers 8

    .line 1602
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1603
    const-string v0, "android.wallpaper.transform_surface_control"

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTransformSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1604
    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v1, "android.wallpaper.transform_surface_control"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1605
    return-void
.end method

.method private blacklist setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V
    .registers 3

    .line 1050
    if-nez p1, :cond_3

    .line 1051
    return-void

    .line 1053
    :cond_3
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    .line 1054
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_11

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    .line 1058
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V

    .line 1059
    return-void
.end method

.method private blacklist showScreenshotOfWallpaper()Z
    .registers 7

    .line 2299
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_ea

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_ea

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_ea

    .line 2304
    :cond_13
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2305
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const-string v3, "WallpaperService"

    if-eqz v2, :cond_2e

    .line 2306
    const-string v0, "Failed to screenshot wallpaper: surface bounds are empty"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    return v1

    .line 2310
    :cond_2e
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3a

    .line 2311
    const-string v2, "Screenshot is unexpectedly not null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2316
    :cond_3a
    new-instance v2, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v2, v4}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 2322
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 2323
    invoke-virtual {v2, v1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    move-result-object v2

    .line 2324
    invoke-virtual {v2, v0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 2325
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;

    move-result-object v0

    .line 2317
    invoke-static {v0}, Landroid/window/ScreenCaptureInternal;->captureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object v0

    .line 2327
    if-nez v0, :cond_66

    .line 2328
    const-string v0, "Failed to screenshot wallpaper: screenshotBuffer is null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    return v1

    .line 2332
    :cond_66
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 2334
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2337
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper snapshot for engine "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2338
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 2339
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2340
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 2341
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 2342
    const-string v4, "WallpaperService.Engine.showScreenshotOfWallpaper"

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 2343
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 2344
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2346
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 2348
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 2349
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 2351
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2352
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2353
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mEnableTransformSurfaceControlCommand:Z

    if-eqz v0, :cond_e0

    .line 2354
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTransformSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_e2

    :cond_e0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2353
    :goto_e2
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2355
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2357
    const/4 v0, 0x1

    return v0

    .line 2301
    :cond_ea
    :goto_ea
    return v1
.end method

.method private blacklist unfreeze()V
    .registers 2

    .line 2244
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2245
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_b

    .line 2246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2248
    :cond_b
    return-void
.end method

.method private blacklist updateFrozenState(Z)V
    .registers 3

    .line 2208
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    .line 2213
    return-void

    .line 2215
    :cond_9
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 2216
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 2217
    :goto_12
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-ne v0, p1, :cond_17

    .line 2218
    return-void

    .line 2220
    :cond_17
    iget-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-eqz p1, :cond_1f

    .line 2221
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    goto :goto_22

    .line 2223
    :cond_1f
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->unfreeze()V

    .line 2225
    :goto_22
    return-void
.end method

.method private blacklist updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/wallpaper/EngineWindowPage;",
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;IIF)V"
        }
    .end annotation

    .line 2040
    invoke-virtual {p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2041
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 2045
    const-string v0, "WallpaperService#updatePageColors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2051
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 2052
    if-nez v0, :cond_2f

    goto :goto_20

    .line 2053
    :cond_2f
    invoke-direct {p0, v0, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v1

    .line 2054
    invoke-virtual {p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2055
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2056
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 2057
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2058
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2061
    :try_start_6b
    invoke-static {v2, v3, v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_91

    .line 2065
    nop

    .line 2066
    invoke-static {v1, p5}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 2067
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2068
    invoke-virtual {p1, v0}, Landroid/service/wallpaper/EngineWindowPage;->getColors(Landroid/graphics/RectF;)Landroid/app/WallpaperColors;

    move-result-object v1

    .line 2076
    if-eqz v1, :cond_83

    invoke-virtual {v2, v1}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 2077
    :cond_83
    invoke-virtual {p1, v0, v2}, Landroid/service/wallpaper/EngineWindowPage;->addWallpaperColors(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    .line 2083
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2092
    :cond_90
    goto :goto_20

    .line 2062
    :catch_91
    move-exception v0

    .line 2063
    const-string v1, "WallpaperService"

    const-string v2, "Error creating page local color bitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2064
    goto :goto_20

    .line 2093
    :cond_9a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2094
    return-void

    .line 2042
    :cond_9e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ProcessLocalColors should be called from the background thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist updateWallpaperDimming(F)V
    .registers 7

    .line 1067
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    .line 1070
    iget-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    if-nez p1, :cond_f

    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    goto :goto_17

    .line 1071
    :cond_f
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_17
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 1073
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetENABLE_WALLPAPER_DIMMING()Z

    move-result p1

    if-eqz p1, :cond_a3

    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_a3

    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1074
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_a3

    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_34

    goto :goto_a3

    .line 1079
    :cond_34
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1082
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "WallpaperService"

    if-nez v1, :cond_83

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting wallpaper dimming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v3

    aput v1, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1089
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1090
    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1099
    new-instance p1, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {p1, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1105
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1106
    goto :goto_95

    .line 1107
    :cond_83
    const-string v1, "Setting wallpaper dimming: 0"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1109
    const/4 p1, -0x1

    invoke-virtual {p0, v3, p1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZIZ)V

    .line 1112
    :goto_95
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 1115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    .line 1116
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onDimAmountChanged(F)V

    .line 1117
    return-void

    .line 1076
    :cond_a3
    :goto_a3
    return-void
.end method

.method private blacklist validStep(F)Z
    .registers 3

    .line 2191
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_13

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method


# virtual methods
.method public blacklist addLocalColorsAreas(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2143
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2147
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2153
    return-void
.end method

.method greylist-max-o attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .registers 9

    .line 1635
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 1636
    return-void

    .line 1639
    :cond_5
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1640
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-$$Nest$fgetmCaller(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1641
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 1642
    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 1643
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 1644
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1645
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object p1

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 1647
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 1649
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1651
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->displayListenerPerformanceImprovements()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 1653
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->committedStateSeparateEvent()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 1654
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1655
    invoke-virtual {p1}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1654
    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V

    goto :goto_63

    .line 1658
    :cond_54
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1659
    invoke-virtual {v1}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1658
    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1661
    :goto_63
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1663
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1, v0}, Landroid/service/wallpaper/WallpaperService;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    .line 1664
    const/16 v0, 0x7dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1665
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050133

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 1667
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getCommittedState()I

    move-result p1

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1668
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1669
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1668
    invoke-virtual {p1, v0}, Landroid/util/MergedConfiguration;->setOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 1672
    const-string p1, "WPMS.Engine.onCreate"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1673
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 1674
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1676
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1678
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1679
    const-string v0, "WPMS.Engine.updateSurface"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1680
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZIZ)V

    .line 1681
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1682
    return-void
.end method

.method public greylist-max-o detach()V
    .registers 6

    .line 2382
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 2383
    return-void

    .line 2386
    :cond_5
    invoke-static {p0}, Landroid/animation/AnimationHandler;->removeRequestor(Ljava/lang/Object;)V

    .line 2388
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 2390
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1e

    .line 2391
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 2394
    :cond_1e
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 2395
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2397
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 2400
    :cond_28
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 2403
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 2405
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2406
    :try_start_31
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_8f

    const/4 v3, 0x0

    if-eqz v2, :cond_80

    .line 2413
    :try_start_36
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v2, :cond_41

    .line 2414
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    .line 2415
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 2418
    :cond_41
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_4c} :catch_4d
    .catchall {:try_start_36 .. :try_end_4c} :catchall_8f

    .line 2420
    goto :goto_4e

    .line 2419
    :catch_4d
    move-exception v2

    .line 2421
    :goto_4e
    :try_start_4e
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 2422
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v2, :cond_60

    .line 2423
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v2}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 2424
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2426
    :cond_60
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2427
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_70

    .line 2428
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2429
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2431
    :cond_70
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTransformSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_7b

    .line 2432
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTransformSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2433
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTransformSurfaceControl:Landroid/view/SurfaceControl;

    .line 2435
    :cond_7b
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2436
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 2439
    :cond_80
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_8d

    .line 2440
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 2441
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2442
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    .line 2444
    :cond_8d
    monitor-exit v0

    .line 2445
    return-void

    .line 2444
    :catchall_8f
    move-exception v1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_4e .. :try_end_91} :catchall_8f

    throw v1
.end method

.method public blacklist doAmbientModeChanged(ZJ)V
    .registers 5

    .line 1710
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_d

    .line 1715
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    .line 1716
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_d

    .line 1717
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->onAmbientModeChanged(ZJ)V

    .line 1720
    :cond_d
    return-void
.end method

.method greylist-max-o doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .registers 10

    .line 2196
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_33

    .line 2197
    const-string v0, "android.wallpaper.freeze"

    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.wallpaper.unfreeze"

    if-nez v0, :cond_18

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2198
    :cond_18
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateFrozenState(Z)V

    .line 2200
    :cond_23
    iget-object v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    goto :goto_34

    .line 2203
    :cond_33
    nop

    .line 2205
    :goto_34
    return-void
.end method

.method greylist-max-o doDesiredSizeChanged(II)V
    .registers 4

    .line 1723
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_13

    .line 1726
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 1727
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 1728
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 1729
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1731
    :cond_13
    return-void
.end method

.method greylist-max-o doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .registers 4

    .line 1734
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1b

    .line 1736
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1737
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1738
    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZIZ)V

    .line 1741
    :cond_1b
    return-void
.end method

.method greylist-max-o doOffsetsChanged(Z)V
    .registers 10

    .line 1809
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 1810
    return-void

    .line 1813
    :cond_5
    if-nez p1, :cond_c

    iget-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-nez p1, :cond_c

    .line 1814
    return-void

    .line 1821
    :cond_c
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1822
    :try_start_f
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 1823
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 1824
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 1825
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 1826
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 1827
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_54

    .line 1829
    iget-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz p1, :cond_4f

    .line 1830
    iget-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz p1, :cond_4a

    .line 1833
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget p1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int/2addr p1, v5

    .line 1834
    const/high16 v5, 0x3f000000    # 0.5f

    if-lez p1, :cond_34

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p1, v5

    float-to-int p1, p1

    neg-int p1, p1

    goto :goto_35

    :cond_34
    move p1, v0

    .line 1835
    :goto_35
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v6, v6, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int/2addr v6, v7

    .line 1836
    if-lez v6, :cond_43

    int-to-float v0, v6

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    float-to-int v0, v0

    neg-int v0, v0

    :cond_43
    move v6, v0

    .line 1837
    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 1838
    goto :goto_50

    .line 1839
    :cond_4a
    move-object v0, p0

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    goto :goto_50

    .line 1829
    :cond_4f
    move-object v0, p0

    .line 1844
    :goto_50
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 1845
    return-void

    .line 1827
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method greylist-max-o doVisibilityChanged(Z)V
    .registers 3

    .line 1751
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_11

    .line 1752
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 1753
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 1754
    iget-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz p1, :cond_14

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    goto :goto_14

    .line 1756
    :cond_11
    invoke-static {p1, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 1758
    :cond_14
    :goto_14
    return-void
.end method

.method protected whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1130
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mInitializing="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1131
    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1132
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mVisible="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1133
    const-string p2, " mReportedVisible="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1134
    const-string p2, " mIsScreenTurningOn="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1135
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mDisplay="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1136
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCreated="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1137
    const-string p2, " mSurfaceCreated="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1138
    const-string p2, " mReportedSurfaceCreated="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedSurfaceCreated:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1139
    const-string p2, " mIsCreating="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1140
    const-string p2, " mDrawingAllowed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1141
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mWidth="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1142
    const-string p2, " mCurWidth="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1143
    const-string p2, " mHeight="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1144
    const-string p2, " mCurHeight="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 1145
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mType="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1146
    const-string p2, " mWindowFlags="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1147
    const-string p2, " mCurWindowFlags="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 1148
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mWindowPrivateFlags="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1149
    const-string p2, " mCurWindowPrivateFlags="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 1150
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mWinFrames="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1151
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mConfiguration="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1153
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLayout="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1154
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mZoom="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(F)V

    .line 1155
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mPreviewSurfacePosition="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1157
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 1158
    if-eqz p2, :cond_137

    .line 1159
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "mPendingResizeCount="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 1161
    :cond_137
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingSeqId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 1162
    if-eqz p2, :cond_14c

    .line 1163
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "mPendingSeqId="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 1165
    :cond_14c
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1166
    :try_start_14f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "mPendingXOffset="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(F)V

    .line 1167
    const-string p4, " mPendingXOffset="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(F)V

    .line 1168
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "mPendingXOffsetStep="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1169
    iget p4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(F)V

    .line 1170
    const-string p4, " mPendingXOffsetStep="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(F)V

    .line 1171
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "mOffsetMessageEnqueued="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    iget-boolean p4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Z)V

    .line 1173
    iget-object p4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz p4, :cond_19b

    .line 1174
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mPendingMove="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1176
    :cond_19b
    monitor-exit p2

    .line 1177
    return-void

    .line 1176
    :catchall_19d
    move-exception p1

    monitor-exit p2
    :try_end_19f
    .catchall {:try_start_14f .. :try_end_19f} :catchall_19d

    throw p1
.end method

.method public whitelist getDesiredMinimumHeight()I
    .registers 2

    .line 619
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .registers 2

    .line 610
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public whitelist getDisplayContext()Landroid/content/Context;
    .registers 2

    .line 1697
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getRenderingSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 2490
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public whitelist getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .line 594
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public whitelist getWallpaperFlags()I
    .registers 2

    .line 601
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    return v0
.end method

.method public blacklist getZoom()F
    .registers 2

    .line 770
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    return v0
.end method

.method public whitelist isInAmbientMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 660
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    return v0
.end method

.method public whitelist isPreview()Z
    .registers 2

    .line 650
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public whitelist isVisible()Z
    .registers 2

    .line 628
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public whitelist notifyColorsChanged()V
    .registers 9

    .line 964
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_c

    .line 965
    const-string v0, "Ignoring notifyColorsChanged(), Engine has already been destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return-void

    .line 969
    :cond_c
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 970
    iget-wide v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_39

    .line 971
    const-string v0, "This call has been deferred. You should only call notifyColorsChanged() once every 1.0 seconds."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 975
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 977
    :cond_38
    return-void

    .line 979
    :cond_39
    iput-wide v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    .line 980
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 983
    :try_start_42
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object v0

    .line 984
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    if-eqz v2, :cond_56

    .line 985
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/service/wallpaper/IWallpaperConnection;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V

    goto :goto_5b

    .line 987
    :cond_56
    const-string v0, "Can\'t notify system because wallpaper connection was not established."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :goto_5b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 991
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_61} :catch_62

    .line 994
    goto :goto_68

    .line 992
    :catch_62
    move-exception v0

    .line 993
    const-string v2, "Can\'t notify system because wallpaper connection was lost."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    :goto_68
    return-void
.end method

.method public blacklist notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/WallpaperColors;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1024
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1025
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    .line 1026
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 1027
    if-eqz v1, :cond_31

    if-nez v2, :cond_1e

    .line 1032
    goto :goto_31

    .line 1035
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1038
    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    .line 1035
    invoke-interface {v3, v2, v1, v4}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    .line 1042
    goto :goto_31

    .line 1040
    :catch_2a
    move-exception p1

    .line 1041
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1024
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1044
    :cond_34
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1045
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    .line 1046
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    .line 1047
    return-void
.end method

.method public whitelist onAmbientModeChanged(ZJ)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 871
    return-void
.end method

.method public whitelist onApplyWallpaper(I)Landroid/app/wallpaper/WallpaperDescription;
    .registers 2

    .line 956
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .registers 2

    .line 808
    return-void
.end method

.method public whitelist onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 7

    .line 853
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onComputeColors()Landroid/app/WallpaperColors;
    .registers 2

    .line 1012
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 779
    return-void
.end method

.method public whitelist onDesiredSizeChanged(II)V
    .registers 3

    .line 887
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 788
    return-void
.end method

.method public blacklist onDimAmountChanged(F)V
    .registers 2

    .line 879
    return-void
.end method

.method public whitelist onOffsetsChanged(FFFFII)V
    .registers 7

    .line 831
    return-void
.end method

.method blacklist onScreenTurningOnChanged(Z)V
    .registers 3

    .line 1744
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_9

    .line 1745
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    .line 1746
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 1748
    :cond_9
    return-void
.end method

.method public whitelist onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 895
    return-void
.end method

.method public whitelist onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 911
    return-void
.end method

.method public whitelist onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 919
    return-void
.end method

.method public whitelist onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 903
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 819
    return-void
.end method

.method public whitelist onVisibilityChanged(Z)V
    .registers 2

    .line 797
    return-void
.end method

.method public whitelist onWallpaperFlagsChanged(I)V
    .registers 2

    .line 929
    return-void
.end method

.method public whitelist onZoomChanged(F)V
    .registers 2

    .line 940
    return-void
.end method

.method public blacklist removeLocalColorsAreas(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2161
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2162
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2177
    return-void
.end method

.method public blacklist reportEngineShown(Z)V
    .registers 6

    .line 694
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-eqz v0, :cond_7

    return-void

    .line 695
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPMS.reportEngineShown-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportEngineShown: shouldWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/16 v0, 0x27a6

    if-nez p1, :cond_4b

    .line 698
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 699
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 700
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 701
    goto :goto_66

    .line 703
    :cond_4b
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/HandlerCaller;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_66

    .line 704
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 705
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 708
    :cond_66
    :goto_66
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 709
    return-void
.end method

.method greylist-max-o reportSurfaceDestroyed()V
    .registers 6

    .line 2361
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedSurfaceCreated:Z

    if-eqz v0, :cond_28

    .line 2362
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 2363
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedSurfaceCreated:Z

    .line 2364
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2365
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    .line 2366
    if-eqz v1, :cond_23

    .line 2367
    array-length v2, v1

    :goto_17
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    .line 2368
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2367
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2373
    :cond_23
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2375
    :cond_28
    return-void
.end method

.method greylist-max-o reportVisibility()V
    .registers 6

    .line 1761
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_9

    .line 1763
    return-void

    .line 1765
    :cond_9
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_8b

    .line 1766
    nop

    .line 1767
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_1b

    :cond_15
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getCommittedState()I

    move-result v0

    :goto_1b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1768
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    if-nez v0, :cond_2c

    move v0, v2

    goto :goto_2d

    :cond_2c
    move v0, v1

    .line 1770
    :goto_2d
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v3, :cond_35

    .line 1771
    move v3, v1

    goto :goto_3d

    .line 1772
    :cond_35
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v3

    .line 1774
    :goto_3d
    iget-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v4, :cond_46

    if-nez v0, :cond_45

    if-eqz v3, :cond_46

    :cond_45
    goto :goto_47

    :cond_46
    move v2, v1

    .line 1786
    :goto_47
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eq v0, v2, :cond_8b

    .line 1787
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVisibilityChanged("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WallpaperService"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    if-eqz v2, :cond_7a

    .line 1793
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1795
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisSeqId:I

    invoke-virtual {p0, v1, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZIZ)V

    .line 1798
    :cond_7a
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1799
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_88

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-eqz v0, :cond_88

    .line 1801
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    .line 1803
    :cond_88
    invoke-static {v2, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 1806
    :cond_8b
    return-void
.end method

.method blacklist scaleAndCropScreenshot()V
    .registers 10

    .line 2263
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 2264
    return-void

    .line 2266
    :cond_5
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_83

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_12

    goto :goto_83

    .line 2272
    :cond_12
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2275
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 2276
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    .line 2282
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2283
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v4, Landroid/graphics/Rect;

    div-int/lit8 v5, v0, 0x2

    div-int/lit8 v6, v1, 0x2

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v5

    iget-object v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v6

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2287
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 2294
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2295
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2296
    return-void

    .line 2267
    :cond_83
    :goto_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected screenshot size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    return-void
.end method

.method public greylist-max-o setCreated(Z)V
    .registers 2

    .line 1126
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1127
    return-void
.end method

.method public greylist setFixedSizeAllowed(Z)V
    .registers 2

    .line 761
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    .line 762
    return-void
.end method

.method public whitelist setOffsetNotificationsEnabled(Z)V
    .registers 3

    .line 736
    if-eqz p1, :cond_7

    .line 737
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 p1, p1, 0x4

    goto :goto_b

    .line 739
    :cond_7
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 p1, p1, -0x5

    :goto_b
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 741
    iget-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz p1, :cond_16

    .line 742
    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZIZ)V

    .line 744
    :cond_16
    return-void
.end method

.method public blacklist setShowForAllUsers(Z)V
    .registers 3

    .line 748
    if-eqz p1, :cond_7

    .line 749
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 p1, p1, 0x10

    goto :goto_b

    .line 751
    :cond_7
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 p1, p1, -0x11

    :goto_b
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 753
    iget-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz p1, :cond_16

    .line 754
    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZIZ)V

    .line 756
    :cond_16
    return-void
.end method

.method public whitelist setTouchEventsEnabled(Z)V
    .registers 3

    .line 719
    if-eqz p1, :cond_7

    .line 720
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 p1, p1, -0x11

    goto :goto_b

    .line 721
    :cond_7
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 p1, p1, 0x10

    :goto_b
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 722
    iget-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz p1, :cond_16

    .line 723
    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZIZ)V

    .line 725
    :cond_16
    return-void
.end method

.method public blacklist setZoom(F)V
    .registers 4

    .line 1191
    nop

    .line 1192
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1196
    :try_start_4
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    if-eqz v1, :cond_b

    .line 1197
    const/4 v1, 0x0

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1199
    :cond_b
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_17

    .line 1200
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1201
    const/4 p1, 0x1

    goto :goto_18

    .line 1199
    :cond_17
    const/4 p1, 0x0

    .line 1203
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_25

    .line 1205
    if-eqz p1, :cond_24

    iget-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez p1, :cond_24

    .line 1206
    iget p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onZoomChanged(F)V

    .line 1208
    :cond_24
    return-void

    .line 1203
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public blacklist shouldWaitForEngineShown()Z
    .registers 2

    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldZoomOutWallpaper()Z
    .registers 3

    .line 672
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmIsWearOs(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/32 v0, 0x103e6fd3

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public blacklist supportsLocalColorExtraction()Z
    .registers 2

    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method blacklist updatePage(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/wallpaper/EngineWindowPage;",
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;IIF)V"
        }
    .end annotation

    .line 1981
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    sub-long v9, v2, v4

    .line 1982
    invoke-virtual {p1}, Landroid/service/wallpaper/EngineWindowPage;->getLastUpdateTime()J

    move-result-wide v2

    sub-long v2, v9, v2

    .line 1985
    cmp-long v0, v2, v4

    if-gez v0, :cond_14

    return-void

    .line 1987
    :cond_14
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v11

    .line 1988
    invoke-virtual {v11}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 1989
    :cond_21
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 1990
    :goto_2e
    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_39

    .line 1991
    :cond_35
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1992
    :goto_39
    const/high16 v2, 0x42800000    # 64.0f

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 1993
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1994
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1995
    const-string v12, "WallpaperService"

    if-lez v0, :cond_84

    if-gtz v2, :cond_52

    goto :goto_84

    .line 2000
    :cond_52
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    .line 2001
    const-string v4, "WallpaperService#pixelCopy"

    invoke-static {v4, v3}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 2002
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2004
    nop

    .line 2007
    :try_start_64
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v2, v3

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;J)V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v11, v8, v0, v1}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_7c} :catch_7d

    .line 2035
    goto :goto_83

    .line 2030
    :catch_7d
    move-exception v0

    .line 2034
    const-string v0, "Cancelling processLocalColors: exception caught during PixelCopy"

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :goto_83
    return-void

    .line 1996
    :cond_84
    :goto_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong width and height values of bitmap "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    return-void
.end method

.method blacklist updateSurface(ZIZ)V
    .registers 51

    .line 1227
    move-object/from16 v1, p0

    const-string v0, ", "

    iget-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v3, "WallpaperService"

    if-eqz v2, :cond_10

    .line 1228
    const-string v0, "Ignoring updateSurface due to destroyed"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    return-void

    .line 1232
    :cond_10
    nop

    .line 1233
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v2

    .line 1234
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v2, :cond_1e

    move v7, v6

    const/4 v2, -0x1

    goto :goto_1f

    .line 1235
    :cond_1e
    move v7, v5

    .line 1236
    :goto_1f
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v8}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v8

    .line 1237
    if-gtz v8, :cond_29

    const/4 v8, -0x1

    goto :goto_2a

    .line 1238
    :cond_29
    move v7, v5

    .line 1240
    :goto_2a
    iget-boolean v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1241
    iget-boolean v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1242
    iget v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v12}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v12

    if-eq v11, v12, :cond_3a

    move v11, v5

    goto :goto_3b

    :cond_3a
    move v11, v6

    .line 1243
    :goto_3b
    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    if-ne v12, v2, :cond_46

    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    if-eq v12, v8, :cond_44

    goto :goto_46

    :cond_44
    move v12, v6

    goto :goto_47

    :cond_46
    :goto_46
    move v12, v5

    .line 1244
    :goto_47
    iget-boolean v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1245
    xor-int/2addr v13, v5

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v15}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v15

    if-eq v14, v15, :cond_56

    move v14, v5

    goto :goto_57

    :cond_56
    move v14, v6

    .line 1246
    :goto_57
    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v15, v5, :cond_66

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v5, v15, :cond_64

    goto :goto_66

    :cond_64
    move v5, v6

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v5, 0x1

    .line 1248
    :goto_67
    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v15}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmAlwaysSeqId(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v15

    if-eqz v15, :cond_77

    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSeqId:I

    move/from16 v4, p2

    if-le v4, v15, :cond_79

    const/4 v15, 0x1

    goto :goto_7a

    :cond_77
    move/from16 v4, p2

    :cond_79
    move v15, v6

    .line 1249
    :goto_7a
    if-nez p3, :cond_82

    if-eqz v15, :cond_7f

    goto :goto_82

    :cond_7f
    move/from16 v18, v6

    goto :goto_84

    :cond_82
    :goto_82
    const/16 v18, 0x1

    .line 1250
    :goto_84
    if-nez p1, :cond_9a

    if-eqz v9, :cond_9a

    if-eqz v10, :cond_9a

    if-nez v11, :cond_9a

    if-nez v12, :cond_9a

    if-nez v14, :cond_9a

    if-nez v5, :cond_9a

    if-nez v18, :cond_9a

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v5, v5, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v5, :cond_68f

    .line 1258
    :cond_9a
    :try_start_9a
    iput v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 1259
    iput v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 1260
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v5

    iput v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 1261
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v5

    iput v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 1263
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1264
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1266
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v14, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1268
    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 1269
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit16 v14, v14, 0x200

    const/high16 v19, 0x10000

    or-int v14, v14, v19

    or-int/lit16 v14, v14, 0x100

    or-int/lit8 v14, v14, 0x8

    iput v14, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1275
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v5}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 1276
    new-instance v14, Landroid/graphics/Rect;

    iget-object v6, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v14, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1277
    const/4 v6, -0x1

    if-ne v2, v6, :cond_f9

    if-ne v8, v6, :cond_f9

    .line 1279
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1280
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1281
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x4001

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v2

    goto :goto_12e

    .line 1283
    :cond_f9
    nop

    .line 1284
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    int-to-float v6, v2

    div-float/2addr v4, v6

    .line 1285
    move/from16 v17, v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move/from16 v19, v2

    int-to-float v2, v8

    move/from16 v20, v2

    div-float v2, v19, v20

    .line 1283
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1286
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    mul-float/2addr v6, v2

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v6, v6, v19

    float-to-int v6, v6

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1287
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    mul-float v2, v2, v20

    add-float v2, v2, v19

    float-to-int v2, v2

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1288
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1291
    :goto_12e
    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 1292
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1294
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 1295
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1297
    iget-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-nez v2, :cond_1f5

    .line 1299
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1300
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x800033

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1301
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1302
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x103031d

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1305
    new-instance v32, Landroid/view/InputChannel;

    invoke-direct/range {v32 .. v32}, Landroid/view/InputChannel;-><init>()V

    .line 1307
    new-instance v2, Landroid/view/WindowRelayoutResult;

    new-instance v4, Landroid/window/ClientWindowFrames;

    invoke-direct {v4}, Landroid/window/ClientWindowFrames;-><init>()V

    new-instance v6, Landroid/util/MergedConfiguration;

    invoke-direct {v6}, Landroid/util/MergedConfiguration;-><init>()V

    move/from16 v34, v7

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    move/from16 v35, v8

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v2, v4, v6, v7, v8}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 1310
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1311
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v30

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v31

    .line 1310
    const/16 v29, 0x0

    move-object/from16 v33, v2

    move-object/from16 v26, v4

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    invoke-interface/range {v26 .. v33}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I

    move-result v2

    move-object/from16 v4, v32

    move-object/from16 v6, v33

    if-gez v2, :cond_1b9

    .line 1313
    const-string v0, "Failed to add window while updating wallpaper surface."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-void

    .line 1316
    :cond_1b9
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v2}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmAlwaysSeqId(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v2

    if-eqz v2, :cond_1d9

    .line 1317
    iget v2, v6, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    .line 1318
    if-nez v15, :cond_1cc

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSeqId:I

    if-le v2, v6, :cond_1ca

    goto :goto_1cc

    :cond_1ca
    const/4 v6, 0x0

    goto :goto_1cd

    :cond_1cc
    :goto_1cc
    const/4 v6, 0x1

    .line 1319
    :goto_1cd
    if-nez v18, :cond_1d4

    if-eqz v6, :cond_1d2

    goto :goto_1d4

    :cond_1d2
    const/4 v7, 0x0

    goto :goto_1d5

    :cond_1d4
    :goto_1d4
    const/4 v7, 0x1

    :goto_1d5
    move v15, v6

    move/from16 v18, v7

    goto :goto_1db

    .line 1316
    :cond_1d9
    move/from16 v2, p2

    .line 1321
    :goto_1db
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldZoomOutWallpaper()Z

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/view/IWindowSession;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 1322
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1324
    new-instance v6, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 1325
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v1, v4, v7}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    goto :goto_1fb

    .line 1297
    :cond_1f5
    move/from16 v34, v7

    move/from16 v35, v8

    move/from16 v2, p2

    .line 1328
    :goto_1fb
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1329
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    .line 1331
    if-nez v34, :cond_213

    .line 1332
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v6, v6, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_21b

    .line 1334
    :cond_213
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1336
    :goto_21b
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move-object/from16 v36, v4

    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 1337
    move/from16 v40, v4

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v4}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmAlwaysSeqId(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v4

    if-eqz v4, :cond_234

    move/from16 v44, v2

    goto :goto_236

    :cond_234
    const/16 v44, 0x0

    :goto_236
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    move-object/from16 v45, v4

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1336
    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v46, v4

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move/from16 v39, v8

    invoke-interface/range {v36 .. v46}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;Landroid/view/SurfaceControl;)I

    move-result v4

    .line 1339
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v6}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1340
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1341
    invoke-virtual {v6, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b1

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry updateSurface because bounds changed from relayout: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1345
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    .line 1346
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmAlwaysSeqId(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v0

    const/16 v3, 0x272e

    if-eqz v0, :cond_2a0

    .line 1347
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_2b0

    .line 1350
    :cond_2a0
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1351
    if-eqz v18, :cond_2a8

    const/4 v5, 0x1

    goto :goto_2a9

    :cond_2a8
    const/4 v5, 0x0

    .line 1350
    :goto_2a9
    invoke-virtual {v1, v3, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1353
    :goto_2b0
    return-void

    .line 1355
    :cond_2b1
    if-eqz v15, :cond_2b5

    .line 1357
    iput v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSeqId:I

    .line 1359
    :cond_2b5
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move/from16 p1, v4

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    move-object/from16 v23, v4

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    const/16 v24, 0x0

    move-object/from16 v25, v4

    move-object/from16 v19, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v20, v14

    invoke-static/range {v19 .. v25}, Landroid/view/WindowLayout;->computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V

    .line 1362
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_387

    .line 1363
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1364
    invoke-virtual {v4}, Landroid/view/Display;->getInstallOrientation()I

    move-result v4

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    add-int/2addr v4, v6

    rem-int/lit8 v4, v4, 0x4

    .line 1363
    invoke-static {v4}, Landroid/view/SurfaceControl;->rotationToBufferTransform(I)I

    move-result v4

    .line 1365
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v4}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1366
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v6, :cond_36b

    .line 1367
    iget-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mEnableTransformSurfaceControlCommand:Z
    :try_end_2fa
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_2fa} :catch_68e

    const-string v7, "Wallpaper#relayout"

    if-eqz v6, :cond_31e

    .line 1368
    :try_start_2fe
    new-instance v6, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v8, "Wallpaper Transform wrapper"

    .line 1369
    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1370
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1371
    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1372
    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1373
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTransformSurfaceControl:Landroid/view/SurfaceControl;

    .line 1375
    :cond_31e
    new-instance v6, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v8, "Wallpaper BBQ wrapper"

    .line 1376
    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1377
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1378
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1379
    iget-boolean v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mEnableTransformSurfaceControlCommand:Z

    if-eqz v8, :cond_339

    .line 1380
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTransformSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_33b

    :cond_339
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1379
    :goto_33b
    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1381
    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1382
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1383
    new-instance v6, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1385
    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v7}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e017b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1391
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v8, v7}, Landroid/view/SurfaceControl$Transaction;->setDefaultFrameRateCompatibility(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    .line 1392
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1393
    iget-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mEnableTransformSurfaceControlCommand:Z

    if-eqz v6, :cond_36b

    .line 1395
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->sendTransformSurfaceControl()V

    .line 1400
    :cond_36b
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v4}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1401
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    invoke-direct {v1, v4, v6, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->getOrCreateBLASTSurface(III)Landroid/view/Surface;

    move-result-object v4

    .line 1406
    if-eqz v4, :cond_387

    .line 1407
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v4}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 1410
    :cond_387
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v4, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39e

    .line 1411
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 1417
    :cond_39e
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1418
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v6, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1420
    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v7}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v7

    .line 1421
    new-instance v8, Landroid/graphics/Rect;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v14, v14, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v8, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1422
    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v14}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1427
    iget-object v14, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v38

    .line 1428
    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 1430
    invoke-virtual {v5}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v40

    move/from16 p2, v4

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v41, v4

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v42, v4

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1432
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v45

    .line 1428
    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v46, 0x0

    move/from16 v44, v4

    move-object/from16 v37, v8

    move-object/from16 v36, v14

    invoke-virtual/range {v36 .. v46}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v4

    .line 1434
    if-nez v34, :cond_427

    .line 1435
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v5, v5, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    .line 1436
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v14

    add-int v8, p2, v8

    .line 1437
    iget v14, v5, Landroid/graphics/Rect;->top:I

    move/from16 p2, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v6

    add-int v6, p2, v14

    .line 1438
    iget v14, v5, Landroid/graphics/Rect;->left:I

    neg-int v14, v14

    move/from16 p2, v6

    iget v6, v5, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    move-object/from16 p3, v7

    iget v7, v5, Landroid/graphics/Rect;->right:I

    neg-int v7, v7

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    neg-int v5, v5

    invoke-virtual {v4, v14, v6, v7, v5}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object v4

    .line 1440
    move/from16 v5, p2

    goto :goto_42d

    .line 1441
    :cond_427
    move-object/from16 p3, v7

    .line 1442
    move/from16 v8, v17

    move/from16 v5, v35

    .line 1445
    :goto_42d
    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    if-eq v6, v8, :cond_435

    .line 1446
    nop

    .line 1447
    iput v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    const/4 v12, 0x1

    .line 1449
    :cond_435
    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    if-eq v6, v5, :cond_43d

    .line 1450
    nop

    .line 1451
    iput v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    const/4 v12, 0x1

    .line 1458
    :cond_43d
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1459
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1460
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v14

    if-eqz v14, :cond_458

    .line 1461
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v14

    goto :goto_45a

    :cond_458
    move-object/from16 v14, p3

    .line 1462
    :goto_45a
    move/from16 v17, v9

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_466

    const/4 v9, 0x1

    goto :goto_467

    :cond_466
    const/4 v9, 0x0

    :goto_467
    or-int/2addr v9, v13

    .line 1463
    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v13, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_472

    const/4 v13, 0x1

    goto :goto_473

    :cond_472
    const/4 v13, 0x0

    :goto_473
    or-int/2addr v9, v13

    .line 1464
    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v13, v14}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_47e

    const/4 v13, 0x1

    goto :goto_47f

    :cond_47e
    const/4 v13, 0x0

    :goto_47f
    or-int/2addr v9, v13

    .line 1466
    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v13, v8, v5}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1467
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1469
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    const/4 v8, 0x0

    if-nez v5, :cond_4a4

    .line 1470
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 1472
    if-eqz v15, :cond_4a3

    .line 1475
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1, v8, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_4a3
    .catch Landroid/os/RemoteException; {:try_start_2fe .. :try_end_4a3} :catch_68e

    .line 1477
    :cond_4a3
    return-void

    .line 1480
    :cond_4a4
    nop

    .line 1483
    :try_start_4a5
    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v13}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V
    :try_end_4aa
    .catchall {:try_start_4a5 .. :try_end_4aa} :catchall_656

    .line 1485
    const-string v13, "): "

    if-nez v10, :cond_502

    .line 1486
    const/4 v5, 0x1

    :try_start_4af
    iput-boolean v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1487
    nop

    .line 1488
    iput-boolean v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedSurfaceCreated:Z

    .line 1489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSurfaceCreated("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const-string v5, "WPMS.Engine.onSurfaceCreated"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1491
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1492
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1493
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v5

    .line 1494
    if-eqz v5, :cond_500

    .line 1495
    array-length v8, v5

    move-object/from16 v19, v5

    const/4 v5, 0x0

    :goto_4ee
    if-ge v5, v8, :cond_500

    move/from16 v20, v5

    aget-object v5, v19, v20

    .line 1496
    move/from16 v21, v8

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v5, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1495
    add-int/lit8 v5, v20, 0x1

    move/from16 v8, v21

    goto :goto_4ee

    .line 1501
    :cond_500
    const/4 v5, 0x1

    goto :goto_503

    .line 1485
    :cond_502
    const/4 v5, 0x0

    .line 1501
    :goto_503
    if-eqz v17, :cond_50e

    const/16 v16, 0x1

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_50c

    goto :goto_50e

    :cond_50c
    const/4 v8, 0x0

    goto :goto_50f

    :cond_50e
    :goto_50e
    const/4 v8, 0x1

    :goto_50f
    or-int v18, v18, v8

    .line 1504
    if-nez v15, :cond_51b

    if-eqz v17, :cond_51b

    if-eqz v10, :cond_51b

    if-nez v11, :cond_51b

    if-eqz v12, :cond_595

    .line 1513
    :cond_51b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSurfaceChanged("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    nop

    .line 1518
    const-string v0, "WPMS.Engine.onSurfaceChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1519
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    iget v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v1, v0, v5, v8, v10}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1521
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1522
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1523
    if-eqz v0, :cond_594

    .line 1524
    array-length v5, v0

    const/4 v8, 0x0

    :goto_578
    if-ge v8, v5, :cond_594

    aget-object v10, v0, v8

    .line 1525
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 p1, v0

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move/from16 v17, v5

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move/from16 v19, v8

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-interface {v10, v11, v0, v5, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1524
    add-int/lit8 v8, v19, 0x1

    move-object/from16 v0, p1

    move/from16 v5, v17

    goto :goto_578

    .line 1531
    :cond_594
    const/4 v5, 0x1

    :cond_595
    if-eqz v9, :cond_5ae

    .line 1532
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1533
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1534
    iput-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 1538
    const-string v0, "WPMS.Engine.onApplyWindowInsets"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v1, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    .line 1540
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1543
    :cond_5ae
    if-nez v18, :cond_5b2

    if-eqz v12, :cond_5fc

    .line 1544
    :cond_5b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSurfaceRedrawNeeded("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const-string v0, "WPMS.Engine.onSurfaceRedrawNeeded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1546
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1547
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1548
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1549
    if-eqz v0, :cond_5fc

    .line 1550
    array-length v3, v0

    const/4 v4, 0x0

    :goto_5ea
    if-ge v4, v3, :cond_5fc

    aget-object v6, v0, v4

    .line 1551
    instance-of v7, v6, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v7, :cond_5f9

    .line 1552
    check-cast v6, Landroid/view/SurfaceHolder$Callback2;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1550
    :cond_5f9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5ea

    .line 1559
    :cond_5fc
    if-eqz v5, :cond_61e

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v0, :cond_61e

    .line 1560
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    if-eqz v0, :cond_61e

    .line 1566
    const-string v0, "WPMS.Engine.onVisibilityChanged-true"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1567
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1568
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1569
    const-string v0, "WPMS.Engine.onVisibilityChanged-false"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1570
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1571
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_61e
    .catchall {:try_start_4af .. :try_end_61e} :catchall_656

    .line 1575
    :cond_61e
    const/4 v4, 0x0

    :try_start_61f
    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1576
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1577
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmAlwaysSeqId(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_63a

    .line 1578
    if-eqz v15, :cond_64a

    .line 1579
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1581
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    goto :goto_64a

    .line 1584
    :cond_63a
    if-eqz v18, :cond_64a

    .line 1585
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v3, 0x7fffffff

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1587
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 1590
    :cond_64a
    :goto_64a
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1591
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1592
    nop

    .line 1594
    goto :goto_68f

    .line 1575
    :catchall_656
    move-exception v0

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1576
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1577
    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v3}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmAlwaysSeqId(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v3

    if-eqz v3, :cond_673

    .line 1578
    if-eqz v15, :cond_683

    .line 1579
    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1581
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    goto :goto_683

    .line 1584
    :cond_673
    if-eqz v18, :cond_683

    .line 1585
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1587
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 1590
    :cond_683
    :goto_683
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1591
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1592
    throw v0
    :try_end_68e
    .catch Landroid/os/RemoteException; {:try_start_61f .. :try_end_68e} :catch_68e

    .line 1593
    :catch_68e
    move-exception v0

    .line 1599
    :cond_68f
    :goto_68f
    return-void
.end method
