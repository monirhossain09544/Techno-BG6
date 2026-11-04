.class public Landroid/media/tv/TvView;
.super Landroid/view/ViewGroup;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvView$TvInputCallback;,
        Landroid/media/tv/TvView$MySessionCallback;,
        Landroid/media/tv/TvView$TimeShiftPositionCallback;,
        Landroid/media/tv/TvView$OnUnhandledInputEventListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o NULL_TV_VIEW:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/TvView;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvView"

.field private static final greylist-max-o ZORDER_MEDIA:I = 0x0

.field private static final greylist-max-o ZORDER_MEDIA_OVERLAY:I = 0x1

.field private static final greylist-max-o ZORDER_ON_TOP:I = 0x2

.field private static greylist-max-o sMainTvView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/TvView;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sMainTvViewLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mAttrs:Landroid/util/AttributeSet;

.field private greylist-max-o mCallback:Landroid/media/tv/TvView$TvInputCallback;

.field private greylist-max-o mCaptionEnabled:Ljava/lang/Boolean;

.field private final greylist-max-o mDefStyleAttr:I

.field private final greylist-max-o mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final blacklist mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

.field private greylist-max-o mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

.field private greylist-max-o mOverlayViewCreated:Z

.field private greylist-max-o mOverlayViewFrame:Landroid/graphics/Rect;

.field private final blacklist mParser:Landroid/content/res/XmlResourceParser;

.field private final greylist-max-o mPendingAppPrivateCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mSession:Landroid/media/tv/TvInputManager$Session;

.field private greylist-max-o mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

.field private greylist-max-o mStreamVolume:Ljava/lang/Float;

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private greylist-max-o mSurfaceChanged:Z

.field private greylist-max-o mSurfaceFormat:I

.field private greylist-max-o mSurfaceHeight:I

.field private final greylist-max-o mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private greylist-max-o mSurfaceView:Landroid/view/SurfaceView;

.field private greylist-max-o mSurfaceViewBottom:I

.field private greylist-max-o mSurfaceViewLeft:I

.field private greylist-max-o mSurfaceViewRight:I

.field private greylist-max-o mSurfaceViewTop:I

.field private greylist-max-o mSurfaceWidth:I

.field private greylist-max-o mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

.field private blacklist mTvAppAttributionSource:Landroid/content/AttributionSource;

.field private final greylist-max-o mTvInputManager:Landroid/media/tv/TvInputManager;

.field private greylist-max-o mUseRequestedSurfaceLayout:Z

.field private greylist-max-o mWindowZOrder:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptionEnabled(Landroid/media/tv/TvView;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvView;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamVolume(Landroid/media/tv/TvView;)Ljava/lang/Float;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurface(Landroid/media/tv/TvView;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceChanged(Landroid/media/tv/TvView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvView;->mSurfaceChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceFormat(Landroid/media/tv/TvView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/TvView;->mSurfaceFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceHeight(Landroid/media/tv/TvView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/TvView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceWidth(Landroid/media/tv/TvView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/TvView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeShiftPositionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverlayViewCreated(Landroid/media/tv/TvView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverlayViewFrame(Landroid/media/tv/TvView;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSessionCallback(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceChanged(Landroid/media/tv/TvView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvView;->mSurfaceChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceFormat(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceFormat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceHeight(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewBottom:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewLeft:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewRight(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewRight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewTop(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewTop:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceWidth(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/TvView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckChangeHdmiCecActiveSourcePermission(Landroid/media/tv/TvView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvView;->checkChangeHdmiCecActiveSourcePermission()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSessionOverlayView(Landroid/media/tv/TvView;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/TvView;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/TvView;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mensurePositionTracking(Landroid/media/tv/TvView;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvView;->ensurePositionTracking()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrelayoutSessionOverlayView(Landroid/media/tv/TvView;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvView;->relayoutSessionOverlayView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSessionSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsMainTvView()Ljava/lang/ref/WeakReference;
    .registers 1

    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsMainTvViewLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    .line 94
    sget-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4

    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 186
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    .line 127
    new-instance v0, Landroid/media/tv/TvView$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvView$1;-><init>(Landroid/media/tv/TvView;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 155
    new-instance v0, Landroid/media/tv/TvView$2;

    invoke-direct {v0, p0}, Landroid/media/tv/TvView$2;-><init>(Landroid/media/tv/TvView;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    .line 187
    invoke-static {p2}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v0

    .line 188
    const-string v1, "TvView"

    if-eqz v0, :cond_3f

    .line 189
    const-string p2, "Build local AttributeSet"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvView;->mParser:Landroid/content/res/XmlResourceParser;

    .line 191
    iget-object p1, p0, Landroid/media/tv/TvView;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    goto :goto_49

    .line 193
    :cond_3f
    const-string p1, "Use passed in AttributeSet"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/tv/TvView;->mParser:Landroid/content/res/XmlResourceParser;

    .line 195
    iput-object p2, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    .line 197
    :goto_49
    iput p3, p0, Landroid/media/tv/TvView;->mDefStyleAttr:I

    .line 198
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetSurfaceView()V

    .line 199
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "tv_input"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/TvInputManager;

    iput-object p1, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 200
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "media_quality"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/quality/MediaQualityManager;

    iput-object p1, p0, Landroid/media/tv/TvView;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    .line 202
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvView;->mTvAppAttributionSource:Landroid/content/AttributionSource;

    .line 203
    return-void
.end method

.method private greylist-max-o checkChangeHdmiCecActiveSourcePermission()Z
    .registers 3

    .line 1079
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o createSessionOverlayView()V
    .registers 3

    .line 1038
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/media/tv/TvView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-nez v0, :cond_24

    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-eqz v0, :cond_13

    goto :goto_24

    .line 1042
    :cond_13
    invoke-direct {p0}, Landroid/media/tv/TvView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    .line 1043
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Landroid/media/tv/TvInputManager$Session;->createOverlayView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    .line 1045
    return-void

    .line 1040
    :cond_24
    :goto_24
    return-void
.end method

.method private greylist-max-o dispatchSurfaceChanged(III)V
    .registers 5

    .line 1031
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_5

    .line 1032
    return-void

    .line 1034
    :cond_5
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/TvInputManager$Session;->dispatchSurfaceChanged(III)V

    .line 1035
    return-void
.end method

.method private greylist-max-o ensurePositionTracking()V
    .registers 3

    .line 757
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_5

    .line 758
    return-void

    .line 760
    :cond_5
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v1, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->timeShiftEnablePositionTracking(Z)V

    .line 761
    return-void
.end method

.method private greylist-max-o getViewFrameOnScreen()Landroid/graphics/Rect;
    .registers 4

    .line 1070
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1071
    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1072
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1073
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1074
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1075
    return-object v0
.end method

.method private greylist-max-o relayoutSessionOverlayView()V
    .registers 3

    .line 1057
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/media/tv/TvView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-eqz v0, :cond_28

    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-eqz v0, :cond_13

    goto :goto_28

    .line 1061
    :cond_13
    invoke-direct {p0}, Landroid/media/tv/TvView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    .line 1062
    iget-object v1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1063
    return-void

    .line 1065
    :cond_20
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputManager$Session;->relayoutOverlayView(Landroid/graphics/Rect;)V

    .line 1066
    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    .line 1067
    return-void

    .line 1059
    :cond_28
    :goto_28
    return-void
.end method

.method private greylist-max-o removeSessionOverlayView()V
    .registers 2

    .line 1048
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-nez v0, :cond_9

    goto :goto_15

    .line 1051
    :cond_9
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->removeOverlayView()V

    .line 1052
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    .line 1054
    return-void

    .line 1049
    :cond_15
    :goto_15
    return-void
.end method

.method private greylist-max-o resetInternal()V
    .registers 4

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    .line 438
    iget-object v1, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    monitor-enter v1

    .line 439
    :try_start_6
    iget-object v2, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 440
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    .line 441
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_23

    .line 442
    invoke-direct {p0, v0}, Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V

    .line 443
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    .line 444
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    .line 445
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 446
    iput-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    .line 447
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetSurfaceView()V

    .line 449
    :cond_23
    return-void

    .line 440
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private greylist-max-o resetSurfaceView()V
    .registers 5

    .line 1001
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_14

    .line 1002
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1003
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->removeView(Landroid/view/View;)V

    .line 1005
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    .line 1006
    new-instance v0, Landroid/media/tv/TvView$3;

    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    iget v3, p0, Landroid/media/tv/TvView;->mDefStyleAttr:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/media/tv/TvView$3;-><init>(Landroid/media/tv/TvView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 1013
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    .line 1014
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1015
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-ne v0, v1, :cond_41

    .line 1016
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    goto :goto_4b

    .line 1017
    :cond_41
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4b

    .line 1018
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 1020
    :cond_4b
    :goto_4b
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->addView(Landroid/view/View;)V

    .line 1021
    return-void
.end method

.method private greylist-max-o setSessionSurface(Landroid/view/Surface;)V
    .registers 3

    .line 1024
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_5

    .line 1025
    return-void

    .line 1027
    :cond_5
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setSurface(Landroid/view/Surface;)V

    .line 1028
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 982
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 984
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 986
    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 987
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 890
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 891
    return v1

    .line 894
    :cond_8
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 895
    return v2

    .line 897
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p1

    .line 898
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v3, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v4, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p1, v3, v4}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result p1

    .line 900
    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 845
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 846
    return v1

    .line 849
    :cond_8
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 850
    return v2

    .line 852
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object p1

    .line 853
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v3, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v4, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p1, v3, v4}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result p1

    .line 855
    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 860
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 861
    return v1

    .line 864
    :cond_8
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 865
    return v2

    .line 867
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p1

    .line 868
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v3, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v4, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p1, v3, v4}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result p1

    .line 870
    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 875
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 876
    return v1

    .line 879
    :cond_8
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 880
    return v2

    .line 882
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p1

    .line 883
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v3, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v4, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p1, v3, v4}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result p1

    .line 885
    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public whitelist dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .registers 3

    .line 799
    iget-object v0, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    if-eqz v0, :cond_e

    .line 800
    iget-object v0, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    invoke-interface {v0, p1}, Landroid/media/tv/TvView$OnUnhandledInputEventListener;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 801
    const/4 p1, 0x1

    return p1

    .line 804
    :cond_e
    invoke-virtual {p0, p1}, Landroid/media/tv/TvView;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchWindowFocusChanged(Z)V
    .registers 3

    .line 905
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchWindowFocusChanged(Z)V

    .line 908
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    if-eqz p1, :cond_1f

    :try_start_8
    sget-object p1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1f

    iget-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz p1, :cond_1f

    .line 910
    invoke-direct {p0}, Landroid/media/tv/TvView;->checkChangeHdmiCecActiveSourcePermission()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 911
    iget-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    .line 913
    :cond_1f
    monitor-exit v0

    .line 914
    return-void

    .line 913
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 973
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 975
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 977
    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 978
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 12

    .line 955
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    .line 956
    if-eqz p1, :cond_2b

    .line 957
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getWidth()I

    move-result v0

    .line 958
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getHeight()I

    move-result v2

    .line 959
    if-lez v0, :cond_29

    if-lez v2, :cond_29

    .line 960
    new-array v1, v1, [I

    .line 961
    invoke-virtual {p0, v1}, Landroid/media/tv/TvView;->getLocationInWindow([I)V

    .line 962
    const/4 v3, 0x0

    aget v5, v1, v3

    .line 963
    const/4 v3, 0x1

    aget v6, v1, v3

    .line 964
    add-int v7, v5, v0

    add-int v8, v6, v2

    sget-object v9, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_2e

    .line 959
    :cond_29
    move-object v4, p1

    goto :goto_2e

    .line 956
    :cond_2b
    move-object v4, p1

    goto :goto_2e

    .line 955
    :cond_2d
    move-object v4, p1

    .line 968
    :goto_2e
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public whitelist getAudioPresentations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_a

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 522
    :cond_a
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->getAudioPresentations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputSession()Landroid/media/tv/TvInputManager$Session;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method public whitelist getSelectedTrack(I)Ljava/lang/String;
    .registers 3

    .line 566
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_6

    .line 567
    const/4 p1, 0x0

    return-object p1

    .line 569
    :cond_6
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->getSelectedTrack(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getTracks(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_6

    .line 551
    const/4 p1, 0x0

    return-object p1

    .line 553
    :cond_6
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->getTracks(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 4

    .line 740
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 741
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->notifyTvMessage(ILandroid/os/Bundle;)V

    .line 743
    :cond_9
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 1

    .line 918
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 919
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    .line 920
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 924
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    .line 925
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 926
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6

    .line 934
    iget-boolean p1, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    if-eqz p1, :cond_12

    .line 935
    iget-object p1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    iget p2, p0, Landroid/media/tv/TvView;->mSurfaceViewLeft:I

    iget p3, p0, Landroid/media/tv/TvView;->mSurfaceViewTop:I

    iget p4, p0, Landroid/media/tv/TvView;->mSurfaceViewRight:I

    iget p5, p0, Landroid/media/tv/TvView;->mSurfaceViewBottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_1a

    .line 938
    :cond_12
    iget-object p1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 940
    :goto_1a
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 6

    .line 944
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceView;->measure(II)V

    .line 945
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v0

    .line 946
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v1

    .line 947
    iget-object v2, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredState()I

    move-result v2

    .line 948
    invoke-static {v0, p1, v2}, Landroid/media/tv/TvView;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    .line 949
    invoke-static {v1, p2, v0}, Landroid/media/tv/TvView;->resolveSizeAndState(III)I

    move-result p2

    .line 948
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvView;->setMeasuredDimension(II)V

    .line 951
    return-void
.end method

.method public whitelist onUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .registers 2

    .line 816
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 991
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 992
    iget-object p1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 993
    if-nez p2, :cond_e

    .line 994
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    goto :goto_11

    .line 996
    :cond_e
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    .line 998
    :goto_11
    return-void
.end method

.method public whitelist overrideTvAppAttributionSource(Landroid/content/AttributionSource;)V
    .registers 2

    .line 343
    if-eqz p1, :cond_4

    .line 344
    iput-object p1, p0, Landroid/media/tv/TvView;->mTvAppAttributionSource:Landroid/content/AttributionSource;

    .line 346
    :cond_4
    return-void
.end method

.method public greylist requestUnblockContent(Landroid/media/tv/TvContentRating;)V
    .registers 2

    .line 461
    invoke-virtual {p0, p1}, Landroid/media/tv/TvView;->unblockContent(Landroid/media/tv/TvContentRating;)V

    .line 462
    return-void
.end method

.method public whitelist reset()V
    .registers 3

    .line 428
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_f

    .line 430
    sget-object v1, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 432
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    .line 433
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    .line 434
    return-void

    .line 432
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist resumePlayback()V
    .registers 2

    .line 708
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 709
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->resumePlayback()V

    .line 711
    :cond_9
    return-void
.end method

.method public whitelist selectAudioPresentation(II)V
    .registers 4

    .line 504
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 505
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->selectAudioPresentation(II)V

    .line 507
    :cond_9
    return-void
.end method

.method public whitelist selectTrack(ILjava/lang/String;)V
    .registers 4

    .line 536
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 537
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->selectTrack(ILjava/lang/String;)V

    .line 539
    :cond_9
    return-void
.end method

.method public whitelist sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 773
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 776
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_10

    .line 777
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3c

    .line 779
    :cond_10
    const-string v0, "TvView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAppPrivateCommand - session not yet created (action \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" pending)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    monitor-enter v0

    .line 783
    :try_start_32
    iget-object v1, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 784
    monitor-exit v0

    .line 786
    :goto_3c
    return-void

    .line 784
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_3d

    throw p1

    .line 774
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "action cannot be null or an empty string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setCallback(Landroid/media/tv/TvView$TvInputCallback;)V
    .registers 2

    .line 212
    iput-object p1, p0, Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;

    .line 213
    return-void
.end method

.method public whitelist setCaptionEnabled(Z)V
    .registers 3

    .line 490
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;

    .line 491
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_f

    .line 492
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setCaptionEnabled(Z)V

    .line 494
    :cond_f
    return-void
.end method

.method public blacklist setHandler(Landroid/os/Handler;)V
    .registers 2

    .line 223
    iput-object p1, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    .line 224
    return-void
.end method

.method public whitelist setInteractiveAppNotificationEnabled(Z)V
    .registers 3

    .line 587
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 588
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setInteractiveAppNotificationEnabled(Z)V

    .line 590
    :cond_9
    return-void
.end method

.method public whitelist setMain()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 249
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 251
    invoke-virtual {p0}, Landroid/media/tv/TvView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_19

    .line 252
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    .line 254
    :cond_19
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist setOnUnhandledInputEventListener(Landroid/media/tv/TvView$OnUnhandledInputEventListener;)V
    .registers 2

    .line 825
    iput-object p1, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    .line 826
    return-void
.end method

.method public whitelist setStreamVolume(F)V
    .registers 3

    .line 324
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;

    .line 325
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_b

    .line 327
    return-void

    .line 329
    :cond_b
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setStreamVolume(F)V

    .line 330
    return-void
.end method

.method public whitelist setTimeShiftPositionCallback(Landroid/media/tv/TvView$TimeShiftPositionCallback;)V
    .registers 2

    .line 752
    iput-object p1, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    .line 753
    invoke-direct {p0}, Landroid/media/tv/TvView;->ensurePositionTracking()V

    .line 754
    return-void
.end method

.method public whitelist setTvMessageEnabled(IZ)V
    .registers 4

    .line 838
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 839
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->setTvMessageEnabled(IZ)V

    .line 841
    :cond_9
    return-void
.end method

.method public whitelist setVideoFrozen(Z)V
    .registers 3

    .line 727
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 728
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setVideoFrozen(Z)V

    .line 730
    :cond_9
    return-void
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .registers 4

    .line 271
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 272
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 273
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    goto :goto_f

    .line 275
    :cond_a
    iput v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 276
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    .line 278
    :goto_f
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1d

    .line 281
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 282
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 284
    :cond_1d
    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .registers 4

    .line 300
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 301
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 302
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    goto :goto_f

    .line 304
    :cond_a
    iput v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 305
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    .line 307
    :goto_f
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1d

    .line 308
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 309
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 311
    :cond_1d
    return-void
.end method

.method public whitelist stopPlayback(I)V
    .registers 3

    .line 691
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 692
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->stopPlayback(I)V

    .line 694
    :cond_9
    return-void
.end method

.method public whitelist timeShiftPause()V
    .registers 2

    .line 628
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 629
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftPause()V

    .line 631
    :cond_9
    return-void
.end method

.method public whitelist timeShiftPlay(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    .line 600
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 603
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_9
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    .line 605
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 607
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_50

    .line 608
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v0, v0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 609
    iget-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz p1, :cond_31

    .line 610
    iget-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {p1, p2}, Landroid/media/tv/TvInputManager$Session;->timeShiftPlay(Landroid/net/Uri;)V

    goto :goto_4f

    .line 612
    :cond_31
    iget-object p1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p2, p1, Landroid/media/tv/TvView$MySessionCallback;->mRecordedProgramUri:Landroid/net/Uri;

    goto :goto_4f

    .line 615
    :cond_36
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    .line 616
    new-instance v0, Landroid/media/tv/TvView$MySessionCallback;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvView$MySessionCallback;-><init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    .line 617
    iget-object p2, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz p2, :cond_4f

    .line 618
    iget-object p2, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v0, p0, Landroid/media/tv/TvView;->mTvAppAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v2, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/content/AttributionSource;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 622
    :cond_4f
    :goto_4f
    return-void

    .line 607
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1

    .line 601
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputId cannot be null or an empty string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist timeShiftResume()V
    .registers 2

    .line 637
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 638
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftResume()V

    .line 640
    :cond_9
    return-void
.end method

.method public whitelist timeShiftSeekTo(J)V
    .registers 4

    .line 650
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 651
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->timeShiftSeekTo(J)V

    .line 653
    :cond_9
    return-void
.end method

.method public whitelist timeShiftSetMode(I)V
    .registers 3

    .line 675
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 676
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->timeShiftSetMode(I)V

    .line 678
    :cond_9
    return-void
.end method

.method public whitelist timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 3

    .line 661
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 662
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 664
    :cond_9
    return-void
.end method

.method public whitelist tune(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvView;->tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 356
    return-void
.end method

.method public whitelist tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 373
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_9
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    .line 375
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 377
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_87

    .line 378
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v0, v0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 379
    iget-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz p1, :cond_31

    .line 380
    iget-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {p1, p2, p3}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_86

    .line 386
    :cond_31
    iget-object p1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p2, p1, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 387
    iget-object p1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p3, p1, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    goto :goto_86

    .line 390
    :cond_3a
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    .line 398
    new-instance v0, Landroid/media/tv/TvView$MySessionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvView$MySessionCallback;-><init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    .line 399
    iget-object p2, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p2, :cond_77

    iget-object p2, p0, Landroid/media/tv/TvView;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    if-eqz p2, :cond_77

    .line 400
    nop

    .line 401
    iget-object p2, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {p2, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object p2

    .line 402
    if-eqz p2, :cond_60

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_60

    .line 403
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object p2

    goto :goto_61

    .line 408
    :cond_60
    move-object p2, p1

    :goto_61
    iget-object p3, p0, Landroid/media/tv/TvView;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    invoke-virtual {p3, p2}, Landroid/media/quality/MediaQualityManager;->getPictureProfileForTvInput(Ljava/lang/String;)J

    move-result-wide p2

    .line 409
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_77

    .line 410
    new-instance v0, Landroid/media/quality/PictureProfileHandle;

    invoke-direct {v0, p2, p3}, Landroid/media/quality/PictureProfileHandle;-><init>(J)V

    .line 411
    iget-object p2, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->sendPictureProfileHandle(Landroid/media/quality/PictureProfileHandle;)V

    .line 414
    :cond_77
    iget-object p2, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz p2, :cond_86

    .line 415
    iget-object p2, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object p3, p0, Landroid/media/tv/TvView;->mTvAppAttributionSource:Landroid/content/AttributionSource;

    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v1, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/content/AttributionSource;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 419
    :cond_86
    :goto_86
    return-void

    .line 377
    :catchall_87
    move-exception p1

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p1

    .line 371
    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputId cannot be null or an empty string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unblockContent(Landroid/media/tv/TvContentRating;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 476
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 477
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->unblockContent(Landroid/media/tv/TvContentRating;)V

    .line 479
    :cond_9
    return-void
.end method
