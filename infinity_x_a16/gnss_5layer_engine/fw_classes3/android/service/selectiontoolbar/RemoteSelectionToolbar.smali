.class public final Landroid/service/selectiontoolbar/RemoteSelectionToolbar;
.super Ljava/lang/Object;
.source "RemoteSelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;,
        Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;,
        Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;
    }
.end annotation


# static fields
.field private static final blacklist MAX_OVERFLOW_SIZE:I = 0x4

.field private static final blacklist MIN_OVERFLOW_SIZE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteSelectionToolbar"

.field private static final blacklist TOOLBAR_STATE_DISMISSED:I = 0x3

.field private static final blacklist TOOLBAR_STATE_HIDDEN:I = 0x2

.field private static final blacklist TOOLBAR_STATE_SHOWN:I = 0x1


# instance fields
.field private final blacklist mArrow:Landroid/graphics/drawable/Drawable;

.field private final blacklist mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

.field private final blacklist mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private final blacklist mContentContainer:Landroid/view/ViewGroup;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDismissAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mFgHandler:Landroid/os/Handler;

.field private final blacklist mHideAnimation:Landroid/animation/AnimatorSet;

.field private blacklist mHostInputToken:Landroid/os/IBinder;

.field private final blacklist mIconTextSpacing:I

.field private blacklist mIsOverflowOpen:Z

.field private final blacklist mLineHeight:I

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mMainPanel:Landroid/view/ViewGroup;

.field private blacklist mMainPanelSize:Landroid/util/Size;

.field private final blacklist mMarginHorizontal:I

.field private final blacklist mMarginVertical:I

.field private final blacklist mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnPasteActionCallback:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$OnPasteActionCallback;

.field private final blacklist mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private blacklist mOpenOverflowUpwards:Z

.field private final blacklist mOverflow:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final blacklist mOverflowButton:Landroid/widget/ImageButton;

.field private final blacklist mOverflowButtonSize:Landroid/util/Size;

.field private final blacklist mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

.field private blacklist mOverflowPanelSize:Landroid/util/Size;

.field private final blacklist mOverflowPanelViewHelper:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

.field private blacklist mPopupHeight:I

.field private blacklist mPopupWidth:I

.field private final blacklist mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

.field private final blacklist mPreviousContentRect:Landroid/graphics/Rect;

.field private final blacklist mRelativeCoordsForToolbar:Landroid/graphics/Point;

.field private blacklist mSequenceNumber:I

.field private final blacklist mShowAnimation:Landroid/animation/AnimatorSet;

.field private blacklist mState:I

.field private blacklist mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private final blacklist mTempContentRect:Landroid/graphics/Rect;

.field private final blacklist mTempContentRectForRoot:Landroid/graphics/Rect;

.field private final blacklist mTempCoords:[I

.field private final blacklist mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final blacklist mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final blacklist mTransferTouchListener:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;

.field private blacklist mTransitionDurationScale:I

.field private final blacklist mUid:I

.field private final blacklist mViewPortOnScreen:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$W5tDv1_gF6Sw9lBwrKyiRAuDpWg(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hx-tvLVVJD5rvaxxLOdLNucBUWY(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->lambda$createOverflowPanel$3(Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tp0xv07S0PHeN0-FEx0WLpaGGEo(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/widget/ImageButton;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->lambda$createOverflowButton$2(Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vP8258C4bn5puNx5Q3FS6qDC498(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainPanel(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainPanelSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenOverflowUpwards(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowButton(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowButtonSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanel(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanelSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanelViewHelper(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelViewHelper:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControlViewHost(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/SurfaceControlViewHost;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceControlViewHost(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/view/SurfaceControlViewHost;)V
    .registers 2

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfacePackage(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 2

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misInRtlMode(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRtlMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misOverflowAnimating(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isOverflowAnimating()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpositionContentYCoordinatesIfOpeningOverflowUpwards(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->positionContentYCoordinatesIfOpeningOverflowUpwards()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPanelsStatesAtRestingPosition(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setPanelsStatesAtRestingPosition()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFloatingToolbarRootContentRect(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateFloatingToolbarRootContentRect()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateMenuItemButton(Landroid/content/Context;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)Landroid/view/View;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetHeight(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetWidth(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateMenuItemButton(Landroid/view/View;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/Context;Landroid/view/selectiontoolbar/ShowInfo;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$OnPasteActionCallback;)V
    .registers 8

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    .line 146
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$1;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$1;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    .line 155
    const/4 v0, 0x3

    iput v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mState:I

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRect:Landroid/graphics/Rect;

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRectForRoot:Landroid/graphics/Rect;

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempCoords:[I

    .line 179
    iput p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mUid:I

    .line 180
    invoke-static {p2, p3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->wrapContext(Landroid/content/Context;Landroid/view/selectiontoolbar/ShowInfo;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    .line 181
    iput-object p4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    .line 182
    iput-object p5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTransferTouchListener:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;

    .line 183
    iput-object p6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOnPasteActionCallback:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$OnPasteActionCallback;

    .line 184
    iget-object p1, p3, Landroid/view/selectiontoolbar/ShowInfo;->hostInputToken:Landroid/os/IBinder;

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHostInputToken:Landroid/os/IBinder;

    .line 185
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    .line 186
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 187
    const p2, 0x105019f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    .line 188
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 189
    const p2, 0x10501ac

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    .line 190
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 191
    const p2, 0x105019e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    .line 192
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 193
    const p2, 0x10501a0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIconTextSpacing:I

    .line 194
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFgHandler:Landroid/os/Handler;

    .line 197
    new-instance p1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar-IA;)V

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 198
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    const p3, 0x10c000d

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 200
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    const p3, 0x10c000e

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 202
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    const p3, 0x10c000f

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 206
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const p4, 0x1080383

    invoke-virtual {p1, p4, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mArrow:Landroid/graphics/drawable/Drawable;

    .line 208
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mArrow:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 209
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const p5, 0x1080381

    invoke-virtual {p1, p5, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflow:Landroid/graphics/drawable/Drawable;

    .line 211
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 212
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const p5, 0x1080382

    invoke-virtual {p1, p5, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 214
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 215
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const p5, 0x1080384

    invoke-virtual {p1, p5, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 217
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 220
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createOverflowButton()Landroid/widget/ImageButton;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    .line 221
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    .line 222
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createMainPanel()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    .line 223
    new-instance p1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

    iget-object p4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    iget p5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIconTextSpacing:I

    invoke-direct {p1, p4, p5}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelViewHelper:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

    .line 224
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createOverflowPanel()Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 227
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 228
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, p3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 229
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object p4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 230
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, p3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 231
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object p3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 232
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    new-instance p3, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$2;

    invoke-direct {p3, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$2;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 239
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 240
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    new-instance p3, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$3;

    invoke-direct {p3, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$3;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    const/16 p4, 0x96

    invoke-static {p1, p4, p3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissAnimation:Landroid/animation/AnimatorSet;

    .line 253
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHideAnimation:Landroid/animation/AnimatorSet;

    .line 257
    new-instance p1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda2;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 271
    return-void
.end method

.method private blacklist calculateOverflowHeight(I)I
    .registers 4

    .line 1002
    nop

    .line 1005
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 1006
    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getCount()I

    move-result v0

    .line 1004
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1002
    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1007
    nop

    .line 1008
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_26

    .line 1011
    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_27

    .line 1008
    :cond_26
    const/4 v0, 0x0

    .line 1013
    :goto_27
    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    mul-int/2addr p1, v1

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    .line 1014
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    .line 1013
    return p1
.end method

.method private blacklist cancelDismissAndHideAnimations()V
    .registers 2

    .line 495
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 496
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 497
    return-void
.end method

.method private blacklist cancelOverflowAnimations()V
    .registers 2

    .line 500
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 501
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 502
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 503
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 504
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 505
    return-void
.end method

.method private blacklist clearPanels()V
    .registers 3

    .line 970
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    .line 972
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 973
    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    .line 974
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 975
    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 976
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 977
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 978
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 979
    return-void
.end method

.method private blacklist closeOverflow()V
    .registers 8

    .line 585
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 586
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 587
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    .line 588
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v6, v5, v0

    .line 589
    new-instance v1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$7;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$7;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;IIFF)V

    .line 610
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 611
    iget-object v3, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    .line 612
    iget-object v5, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget-object v6, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 613
    new-instance v6, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$8;

    invoke-direct {v6, p0, v0, v3, v5}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$8;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;IIF)V

    .line 624
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    .line 626
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRtlMode()Z

    move-result v3

    if-eqz v3, :cond_58

    int-to-float v3, v4

    sub-float v3, v0, v3

    iget-object v5, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    goto :goto_62

    .line 627
    :cond_58
    int-to-float v3, v4

    add-float/2addr v3, v0

    iget-object v5, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 628
    :goto_62
    new-instance v5, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$9;

    invoke-direct {v5, p0, v0, v3, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$9;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;FFI)V

    .line 640
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 641
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 642
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 643
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v6, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 644
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 645
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 646
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 647
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 648
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 649
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 650
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    .line 652
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 653
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 654
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 655
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 657
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 658
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 659
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 660
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 662
    return-void
.end method

.method private static blacklist createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 3

    .line 1380
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 1381
    const v0, 0x1090080

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1382
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1384
    const-string v0, "floating_toolbar"

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1385
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 1386
    return-object p0
.end method

.method private static blacklist createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 5

    .line 1395
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1396
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_22

    .line 1397
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1396
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1398
    return-object v0

    nop

    :array_22
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static blacklist createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .registers 7

    .line 1410
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1411
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2a

    .line 1412
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1411
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1413
    int-to-long p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1414
    if-eqz p2, :cond_29

    .line 1415
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1417
    :cond_29
    return-object v0

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist createMainPanel()Landroid/view/ViewGroup;
    .registers 3

    .line 1048
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/content/Context;)V

    return-object v0
.end method

.method private static blacklist createMenuItemButton(Landroid/content/Context;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)Landroid/view/View;
    .registers 6

    .line 1338
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 1339
    const v0, 0x1090081

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 1340
    if-eqz p1, :cond_11

    .line 1341
    invoke-static {p0, p1, p2, p3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateMenuItemButton(Landroid/view/View;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)V

    .line 1343
    :cond_11
    return-object p0
.end method

.method private blacklist createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    .line 1126
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    return-object v0
.end method

.method private blacklist createOverflowButton()Landroid/widget/ImageButton;
    .registers 4

    .line 1070
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1071
    const v1, 0x1090083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1072
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1073
    new-instance v1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda1;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    return-object v0
.end method

.method private blacklist createOverflowPanel()Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;
    .registers 5

    .line 1094
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    .line 1095
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1098
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setDividerHeight(I)V

    .line 1100
    new-instance v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$11;

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$11;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/content/Context;I)V

    .line 1108
    invoke-virtual {v0, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1109
    new-instance v1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda3;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;)V

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1114
    return-object v0
.end method

.method private blacklist createWidgetInfo()Landroid/view/selectiontoolbar/WidgetInfo;
    .registers 7

    .line 288
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 291
    new-instance v0, Landroid/view/selectiontoolbar/WidgetInfo;

    invoke-direct {v0}, Landroid/view/selectiontoolbar/WidgetInfo;-><init>()V

    .line 292
    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSequenceNumber:I

    iput v1, v0, Landroid/view/selectiontoolbar/WidgetInfo;->sequenceNumber:I

    .line 293
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRect:Landroid/graphics/Rect;

    iput-object v1, v0, Landroid/view/selectiontoolbar/WidgetInfo;->contentRect:Landroid/graphics/Rect;

    .line 294
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v1

    iput-object v1, v0, Landroid/view/selectiontoolbar/WidgetInfo;->surfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 295
    return-object v0
.end method

.method private static blacklist debugLog(Ljava/lang/String;)V
    .registers 3

    .line 1431
    const/4 v0, 0x3

    const-string v1, "RemoteSelectionToolbar"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1432
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_c
    return-void
.end method

.method private blacklist getAdjustedToolbarWidth(I)I
    .registers 5

    .line 810
    nop

    .line 811
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 812
    const v2, 0x105019f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 813
    if-gtz p1, :cond_26

    .line 814
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 815
    const v1, 0x10501aa

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 817
    :cond_26
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private blacklist getAnimationDuration()I
    .registers 3

    .line 1023
    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTransitionDurationScale:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_9

    .line 1025
    const/16 v0, 0xc8

    return v0

    .line 1026
    :cond_9
    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTransitionDurationScale:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_10

    .line 1028
    return v1

    .line 1035
    :cond_10
    const/high16 v0, 0x437a0000    # 250.0f

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private blacklist getOverflowWidth()I
    .registers 6

    .line 990
    nop

    .line 991
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 992
    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v1, v0, :cond_28

    .line 993
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 994
    iget-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelViewHelper:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

    .line 995
    invoke-virtual {v4, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->calculateWidth(Landroid/view/selectiontoolbar/ToolbarMenuItem;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 992
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 997
    :cond_28
    return v2
.end method

.method private blacklist getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 7

    .line 299
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_35

    .line 300
    new-instance v0, Landroid/service/selectiontoolbar/FloatingToolbarRoot;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHostInputToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTransferTouchListener:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;

    invoke-direct {v0, v1, v2, v3}, Landroid/service/selectiontoolbar/FloatingToolbarRoot;-><init>(Landroid/content/Context;Landroid/os/IBinder;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;)V

    .line 302
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/FloatingToolbarRoot;->addView(Landroid/view/View;)V

    .line 303
    new-instance v1, Landroid/view/SurfaceControlViewHost;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/window/InputTransferToken;

    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHostInputToken:Landroid/os/IBinder;

    invoke-direct {v4, v5}, Landroid/window/InputTransferToken;-><init>(Landroid/os/IBinder;)V

    const-string v5, "RemoteSelectionToolbar"

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    .line 305
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    iget v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    .line 307
    :cond_35
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_41

    .line 308
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 310
    :cond_41
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object v0
.end method

.method private blacklist hasOverflow()Z
    .registers 2

    .line 828
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isInRtlMode()Z
    .registers 3

    .line 822
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    .line 823
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 822
    :goto_1f
    return v1
.end method

.method private blacklist isOverflowAnimating()Z
    .registers 5

    .line 1118
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 1119
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 1120
    :goto_15
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 1121
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v2

    .line 1122
    :goto_28
    if-nez v0, :cond_2e

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :cond_2e
    :goto_2e
    return v1
.end method

.method private synthetic blacklist lambda$createOverflowButton$2(Landroid/widget/ImageButton;Landroid/view/View;)V
    .registers 6

    .line 1074
    invoke-virtual {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 1075
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->preparePopupContent()V

    .line 1076
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createWidgetInfo()Landroid/view/selectiontoolbar/WidgetInfo;

    move-result-object p2

    .line 1077
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    .line 1078
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    invoke-virtual {v0, p2}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 1080
    :cond_1b
    iget-boolean p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    if-eqz p2, :cond_2d

    .line 1081
    iget-object p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1083
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->closeOverflow()V

    goto :goto_3a

    .line 1085
    :cond_2d
    iget-object p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1087
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->openOverflow()V

    .line 1089
    :goto_3a
    return-void
.end method

.method private synthetic blacklist lambda$createOverflowPanel$3(Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    .line 1110
    nop

    .line 1111
    invoke-virtual {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 1112
    iget-object p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    iget p1, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemIndex:I

    invoke-virtual {p2, p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onMenuItemClicked(I)V

    .line 1113
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/View;)V
    .registers 4

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 262
    instance-of v0, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    if-eqz v0, :cond_26

    check-cast p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 263
    iget v0, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    const v1, 0x1020022

    if-eq v0, v1, :cond_18

    iget v0, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    const v1, 0x1020031

    if-ne v0, v1, :cond_1f

    .line 265
    :cond_18
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOnPasteActionCallback:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$OnPasteActionCallback;

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mUid:I

    invoke-interface {v0, v1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$OnPasteActionCallback;->onPasteAction(I)V

    .line 267
    :cond_1f
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    iget p1, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemIndex:I

    invoke-virtual {v0, p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onMenuItemClicked(I)V

    .line 269
    :cond_26
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/view/View;)V
    .registers 4

    .line 260
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFgHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda0;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method private blacklist layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;"
        }
    .end annotation

    .line 839
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 842
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const v6, 0x1020041

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 843
    iget v7, v4, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    if-eq v7, v6, :cond_2c

    iget v6, v4, Landroid/view/selectiontoolbar/ToolbarMenuItem;->priority:I

    if-ne v6, v5, :cond_2c

    .line 845
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 847
    :cond_2c
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    :goto_2f
    goto :goto_10

    .line 850
    :cond_30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 852
    iget-object v2, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 853
    iget-object v2, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 855
    nop

    .line 856
    const/4 v2, 0x1

    move/from16 v7, p2

    move v4, v2

    .line 857
    :goto_43
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_fc

    .line 858
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 862
    if-nez v4, :cond_57

    iget v9, v8, Landroid/view/selectiontoolbar/ToolbarMenuItem;->priority:I

    if-ne v9, v5, :cond_57

    .line 863
    goto/16 :goto_fc

    .line 865
    :cond_57
    if-eqz v4, :cond_5f

    iget v9, v8, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    if-ne v9, v6, :cond_5f

    move v9, v2

    goto :goto_60

    :cond_5f
    move v9, v3

    .line 866
    :goto_60
    iget-object v10, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    iget v11, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIconTextSpacing:I

    invoke-static {v10, v8, v11, v9}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)Landroid/view/View;

    move-result-object v10

    .line 868
    if-nez v9, :cond_76

    instance-of v9, v10, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_76

    .line 869
    move-object v9, v10

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v11, 0x11

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 872
    :cond_76
    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    if-eqz v4, :cond_91

    .line 873
    nop

    .line 874
    invoke-virtual {v10}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    int-to-double v13, v4

    mul-double/2addr v13, v11

    double-to-int v4, v13

    .line 875
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    .line 876
    invoke-virtual {v10}, Landroid/view/View;->getPaddingEnd()I

    move-result v13

    .line 877
    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    .line 873
    invoke-virtual {v10, v4, v9, v13, v14}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 880
    :cond_91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_99

    move v4, v2

    goto :goto_9a

    :cond_99
    move v4, v3

    .line 881
    :goto_9a
    if-eqz v4, :cond_b3

    .line 882
    nop

    .line 883
    invoke-virtual {v10}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    .line 884
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    .line 885
    invoke-virtual {v10}, Landroid/view/View;->getPaddingEnd()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v11

    double-to-int v11, v14

    .line 886
    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    .line 882
    invoke-virtual {v10, v9, v13, v11, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 888
    :cond_b3
    invoke-virtual {v10, v3, v3}, Landroid/view/View;->measure(II)V

    .line 889
    nop

    .line 890
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 889
    move/from16 v11, p2

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 892
    iget-object v12, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    .line 893
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    sub-int v12, v7, v12

    if-gt v9, v12, :cond_cd

    move v12, v2

    goto :goto_ce

    :cond_cd
    move v12, v3

    .line 894
    :goto_ce
    if-eqz v4, :cond_d4

    if-gt v9, v7, :cond_d4

    move v4, v2

    goto :goto_d5

    :cond_d4
    move v4, v3

    .line 896
    :goto_d5
    if-nez v12, :cond_d9

    if-eqz v4, :cond_fc

    .line 897
    :cond_d9
    invoke-virtual {v10, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 898
    iget-object v4, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    iget-object v4, v8, Landroid/view/selectiontoolbar/ToolbarMenuItem;->tooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v4}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v4, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 902
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 903
    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 904
    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    sub-int/2addr v7, v9

    .line 906
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 910
    nop

    .line 911
    move v4, v3

    goto/16 :goto_43

    .line 912
    :cond_fc
    :goto_fc
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10d

    .line 914
    iget-object v2, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v3, v4, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 916
    :cond_10d
    iget-object v2, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    .line 918
    return-object v1
.end method

.method private blacklist layoutMenuItems(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;I)V"
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->cancelOverflowAnimations()V

    .line 317
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->clearPanels()V

    .line 319
    invoke-direct {p0, p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAdjustedToolbarWidth(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 320
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_17

    .line 322
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->layoutOverflowPanelItems(Ljava/util/List;)V

    .line 324
    :cond_17
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updatePopupSize()V

    .line 325
    return-void
.end method

.method private blacklist layoutOverflowPanelItems(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 923
    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 924
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 925
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 926
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    .line 927
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 926
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 929
    :cond_1e
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {p1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 930
    iget-boolean p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    if-eqz p1, :cond_2e

    .line 931
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    goto :goto_3a

    .line 933
    :cond_2e
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    .line 935
    :goto_3a
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getOverflowWidth()I

    move-result p1

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 936
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->calculateOverflowHeight(I)I

    move-result v0

    .line 937
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    .line 938
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {p1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 939
    return-void
.end method

.method private blacklist maybeComputeTransitionDurationScale()V
    .registers 5

    .line 1039
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_3f

    .line 1040
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1041
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1042
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    .line 1043
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTransitionDurationScale:I

    .line 1045
    :cond_3f
    return-void
.end method

.method private static blacklist measure(Landroid/view/View;)Landroid/util/Size;
    .registers 3

    .line 1154
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1155
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1156
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private blacklist openOverflow()V
    .registers 10

    .line 508
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 509
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 510
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 511
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    .line 512
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    .line 513
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    .line 514
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v6, v5, v1

    .line 515
    new-instance v1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;IIFF)V

    .line 536
    new-instance v5, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;

    invoke-direct {v5, p0, v0, v7, v8}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;IIF)V

    .line 548
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    .line 550
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRtlMode()Z

    move-result v6

    if-eqz v6, :cond_4f

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v6, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    goto :goto_5a

    .line 551
    :cond_4f
    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v6, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 552
    :goto_5a
    new-instance v6, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;

    invoke-direct {v6, p0, v0, v3, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;FFI)V

    .line 564
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 565
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 566
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 567
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 568
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 569
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v6, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 570
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 571
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 572
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 573
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 574
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    .line 576
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 577
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 578
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 579
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 581
    iget-object v0, v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAlpha(F)V

    .line 582
    return-void
.end method

.method private blacklist positionContentYCoordinatesIfOpeningOverflowUpwards()V
    .registers 4

    .line 982
    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_3d

    .line 983
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 984
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    .line 985
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    .line 987
    :cond_3d
    return-void
.end method

.method private blacklist preparePopupContent()V
    .registers 3

    .line 945
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 948
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 949
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 951
    :cond_12
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 952
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 953
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 955
    :cond_26
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setPanelsStatesAtRestingPosition()V

    .line 960
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRtlMode()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 961
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 962
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 964
    :cond_3c
    return-void
.end method

.method private blacklist refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .registers 12

    .line 413
    nop

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    sub-int/2addr v1, v3

    .line 413
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 419
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    .line 421
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 424
    iget v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    mul-int/2addr v4, v2

    .line 425
    iget v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    add-int/2addr v5, v4

    .line 427
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v6

    if-nez v6, :cond_53

    .line 428
    if-lt v1, v5, :cond_36

    .line 430
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v5

    goto/16 :goto_b9

    .line 431
    :cond_36
    if-lt v3, v5, :cond_3c

    .line 433
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b9

    .line 434
    :cond_3c
    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    if-lt v3, v1, :cond_47

    .line 436
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    sub-int/2addr p1, v1

    goto/16 :goto_b9

    .line 439
    :cond_47
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_b9

    .line 445
    :cond_53
    nop

    .line 446
    invoke-direct {p0, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->calculateOverflowHeight(I)I

    move-result v2

    add-int/2addr v2, v4

    .line 447
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 450
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    .line 454
    const/4 v8, 0x1

    if-lt v1, v2, :cond_78

    .line 457
    sub-int/2addr v1, v4

    invoke-direct {p0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateOverflowHeight(I)V

    .line 458
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    sub-int/2addr p1, v1

    .line 459
    iput-boolean v8, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    goto :goto_b9

    .line 460
    :cond_78
    const/4 v9, 0x0

    if-lt v1, v5, :cond_87

    if-lt v6, v2, :cond_87

    .line 465
    sub-int/2addr v6, v4

    invoke-direct {p0, v6}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateOverflowHeight(I)V

    .line 466
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v5

    .line 467
    iput-boolean v9, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    goto :goto_b9

    .line 468
    :cond_87
    if-lt v3, v2, :cond_92

    .line 471
    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateOverflowHeight(I)V

    .line 472
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 473
    iput-boolean v9, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    goto :goto_b9

    .line 474
    :cond_92
    if-lt v3, v5, :cond_a9

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 475
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, v2, :cond_a9

    .line 479
    sub-int/2addr v7, v4

    invoke-direct {p0, v7}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateOverflowHeight(I)V

    .line 480
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v5

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    sub-int/2addr p1, v1

    .line 482
    iput-boolean v8, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    goto :goto_b9

    .line 486
    :cond_a9
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateOverflowHeight(I)V

    .line 487
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 488
    iput-boolean v9, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    .line 491
    :goto_b9
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Point;->set(II)V

    .line 492
    return-void
.end method

.method private static blacklist setHeight(Landroid/view/View;I)V
    .registers 3

    .line 1179
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1180
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0, v0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;II)V

    .line 1181
    return-void
.end method

.method private blacklist setPanelsStatesAtRestingPosition()V
    .registers 7

    .line 669
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 670
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->awakenScrollBars()Z

    .line 672
    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_e8

    .line 674
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    .line 675
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 676
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 677
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 678
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAlpha(F)V

    .line 679
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setVisibility(I)V

    .line 680
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 681
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    const v3, 0x1040467

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 685
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRtlMode()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 686
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 687
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 688
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    .line 689
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 688
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 690
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setX(F)V

    goto :goto_94

    .line 692
    :cond_6e
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    .line 693
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 692
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 694
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 695
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    .line 696
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setX(F)V

    .line 700
    :goto_94
    iget-boolean v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_c8

    .line 701
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 702
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    .line 703
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 702
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 704
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    .line 705
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 704
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setY(F)V

    .line 706
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v0, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    goto :goto_e6

    .line 709
    :cond_c8
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 710
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 711
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 712
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    .line 714
    :goto_e6
    goto/16 :goto_1e0

    .line 716
    :cond_e8
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    .line 717
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 718
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 719
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 720
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v2, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAlpha(F)V

    .line 721
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v2, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setVisibility(I)V

    .line 722
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    const v3, 0x1040468

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 726
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v1

    if-eqz v1, :cond_1c6

    .line 728
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRtlMode()Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 729
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 730
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 731
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    .line 732
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setX(F)V

    goto :goto_173

    .line 734
    :cond_13c
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    .line 735
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 734
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 736
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 737
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    .line 738
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 737
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 739
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 740
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 739
    invoke-virtual {v1, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setX(F)V

    .line 744
    :goto_173
    iget-boolean v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_1a7

    .line 745
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    .line 746
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 747
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 745
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 748
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 749
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 750
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 751
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 750
    invoke-virtual {v1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    goto :goto_1e0

    .line 754
    :cond_1a7
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 755
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 756
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 757
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    goto :goto_1e0

    .line 761
    :cond_1c6
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 762
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 763
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 764
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 767
    :goto_1e0
    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;II)V
    .registers 5

    .line 1160
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1161
    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1162
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1163
    if-nez v0, :cond_12

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1164
    :cond_12
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1165
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1166
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;Landroid/util/Size;)V
    .registers 3

    .line 1170
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p0, v0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;II)V

    .line 1171
    return-void
.end method

.method private static blacklist setWidth(Landroid/view/View;I)V
    .registers 3

    .line 1174
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1175
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, p1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;II)V

    .line 1176
    return-void
.end method

.method private blacklist show(Landroid/graphics/Rect;)V
    .registers 3

    .line 351
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->cancelDismissAndHideAnimations()V

    .line 354
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->cancelOverflowAnimations()V

    .line 355
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 356
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->preparePopupContent()V

    .line 357
    const/4 p1, 0x1

    iput p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mState:I

    .line 358
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createWidgetInfo()Landroid/view/selectiontoolbar/WidgetInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onShown(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 360
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 361
    return-void
.end method

.method private static blacklist transformMenuItems(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;"
        }
    .end annotation

    .line 1294
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1295
    const/4 v1, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 1296
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 1298
    iget v3, v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    sparse-switch v3, :sswitch_data_70

    .line 1326
    goto :goto_69

    .line 1313
    :sswitch_1c
    new-instance v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    invoke-direct {v3}, Landroid/view/selectiontoolbar/ToolbarMenuItem;-><init>()V

    .line 1315
    iget v4, v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;->groupId:I

    iput v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->groupId:I

    .line 1316
    iget v4, v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;->priority:I

    iput v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->priority:I

    .line 1317
    iget v2, v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemIndex:I

    iput v2, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemIndex:I

    .line 1319
    const v2, 0x1020031

    iput v2, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    .line 1320
    const v2, 0x1040019

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->title:Ljava/lang/CharSequence;

    .line 1321
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->contentDescription:Ljava/lang/CharSequence;

    .line 1324
    move-object v2, v3

    goto :goto_69

    .line 1300
    :sswitch_43
    new-instance v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    invoke-direct {v3}, Landroid/view/selectiontoolbar/ToolbarMenuItem;-><init>()V

    .line 1302
    iget v4, v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;->groupId:I

    iput v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->groupId:I

    .line 1303
    iget v4, v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;->priority:I

    iput v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->priority:I

    .line 1304
    iget v2, v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemIndex:I

    iput v2, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemIndex:I

    .line 1306
    const v2, 0x1020022

    iput v2, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    .line 1307
    const v2, 0x104000b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->title:Ljava/lang/CharSequence;

    .line 1308
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;->contentDescription:Ljava/lang/CharSequence;

    .line 1310
    move-object v2, v3

    .line 1298
    :goto_69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1330
    :cond_6f
    return-object v0

    :sswitch_data_70
    .sparse-switch
        0x1020022 -> :sswitch_43
        0x1020031 -> :sswitch_1c
    .end sparse-switch
.end method

.method private blacklist updateCoordinates(Landroid/graphics/Rect;)V
    .registers 5

    .line 397
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    .line 400
    return-void

    .line 402
    :cond_a
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->cancelOverflowAnimations()V

    .line 403
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 404
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->preparePopupContent()V

    .line 405
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createWidgetInfo()Landroid/view/selectiontoolbar/WidgetInfo;

    move-result-object p1

    .line 406
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    .line 407
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    invoke-virtual {v0, p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 408
    return-void
.end method

.method private blacklist updateFloatingToolbarRootContentRect()V
    .registers 7

    .line 274
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_5

    .line 275
    return-void

    .line 277
    :cond_5
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/service/selectiontoolbar/FloatingToolbarRoot;

    .line 278
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempCoords:[I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 279
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempCoords:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 280
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempCoords:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 281
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRectForRoot:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    .line 282
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    .line 283
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 281
    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRectForRoot:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/FloatingToolbarRoot;->setContentRect(Landroid/graphics/Rect;)V

    .line 285
    return-void
.end method

.method private static blacklist updateMenuItemButton(Landroid/view/View;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)V
    .registers 9

    .line 1351
    const v0, 0x1020335

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1353
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1354
    iget-object v1, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    .line 1355
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24

    .line 1357
    :cond_1c
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1358
    iget-object v1, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    :goto_24
    const v1, 0x1020333

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1362
    iget-object v4, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_48

    if-nez p3, :cond_34

    goto :goto_48

    .line 1366
    :cond_34
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1367
    iget-object p3, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->icon:Landroid/graphics/drawable/Icon;

    .line 1368
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 1367
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1369
    invoke-virtual {v0, p2, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_4e

    .line 1363
    :cond_48
    :goto_48
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1364
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 1371
    :goto_4e
    iget-object p2, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->contentDescription:Ljava/lang/CharSequence;

    .line 1372
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5c

    .line 1373
    iget-object p1, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5f

    .line 1375
    :cond_5c
    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1377
    :goto_5f
    return-void
.end method

.method private blacklist updateOverflowHeight(I)V
    .registers 4

    .line 770
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 771
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    .line 772
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    div-int/2addr p1, v0

    .line 773
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->calculateOverflowHeight(I)I

    move-result p1

    .line 774
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_29

    .line 775
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    .line 777
    :cond_29
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 778
    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    if-eqz v0, :cond_60

    .line 779
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 780
    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_67

    .line 781
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    .line 782
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 783
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setY(F)V

    .line 784
    goto :goto_67

    .line 786
    :cond_60
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-static {p1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 788
    :cond_67
    :goto_67
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updatePopupSize()V

    .line 790
    :cond_6a
    return-void
.end method

.method private blacklist updatePopupSize()V
    .registers 5

    .line 793
    nop

    .line 794
    nop

    .line 795
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 796
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 797
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_20

    .line 795
    :cond_1f
    move v0, v1

    .line 799
    :goto_20
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_38

    .line 800
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 801
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 804
    :cond_38
    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    .line 805
    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    .line 806
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->maybeComputeTransitionDurationScale()V

    .line 807
    return-void
.end method

.method private static blacklist wrapContext(Landroid/content/Context;Landroid/view/selectiontoolbar/ShowInfo;)Landroid/content/Context;
    .registers 4

    .line 1424
    iget-boolean v0, p1, Landroid/view/selectiontoolbar/ShowInfo;->isLightTheme:Z

    if-eqz v0, :cond_8

    const v0, 0x103012b

    goto :goto_b

    .line 1425
    :cond_8
    const v0, 0x1030128

    .line 1426
    :goto_b
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p0, p1, Landroid/view/selectiontoolbar/ShowInfo;->configuration:Landroid/content/res/Configuration;

    .line 1427
    invoke-virtual {v1, p0}, Landroid/view/ContextThemeWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .line 1426
    return-object p0
.end method


# virtual methods
.method public blacklist dismiss(I)V
    .registers 4

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismiss for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->debugLog(Ljava/lang/String;)V

    .line 368
    iget p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1c

    .line 369
    return-void

    .line 371
    :cond_1c
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 372
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 373
    iput v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mState:I

    .line 374
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 1440
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dismissed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v3

    :goto_12
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1441
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hidden: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    goto :goto_24

    :cond_23
    move v2, v3

    :goto_24
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1442
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "popup width: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1443
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "popup height: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1444
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "relative coords: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1445
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "main panel size: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1446
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v0

    .line 1447
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "has overflow: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1448
    if-eqz v0, :cond_8b

    .line 1449
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "overflow open: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1450
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "overflow size: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1452
    :cond_8b
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_9a

    .line 1453
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/service/selectiontoolbar/FloatingToolbarRoot;

    .line 1454
    invoke-virtual {v0, p1, p2}, Landroid/service/selectiontoolbar/FloatingToolbarRoot;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1456
    :cond_9a
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItems:Ljava/util/List;

    if-eqz v0, :cond_e0

    .line 1457
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1458
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "number menu items: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1459
    nop

    :goto_b1
    if-ge v3, v0, :cond_e0

    .line 1460
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1459
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    .line 1464
    :cond_e0
    return-void
.end method

.method public blacklist hide(I)V
    .registers 4

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->debugLog(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 382
    return-void

    .line 384
    :cond_1d
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 385
    const/4 p1, 0x2

    iput p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mState:I

    .line 386
    return-void
.end method

.method public blacklist isHidden()Z
    .registers 3

    .line 393
    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isShowing()Z
    .registers 3

    .line 389
    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist show(Landroid/view/selectiontoolbar/ShowInfo;)V
    .registers 4

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->debugLog(Ljava/lang/String;)V

    .line 333
    iget v0, p1, Landroid/view/selectiontoolbar/ShowInfo;->sequenceNumber:I

    iput v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSequenceNumber:I

    .line 334
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/view/selectiontoolbar/ShowInfo;->menuItems:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->transformMenuItems(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItems:Ljava/util/List;

    .line 335
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/selectiontoolbar/ShowInfo;->viewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show(): layoutRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Landroid/view/selectiontoolbar/ShowInfo;->layoutRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->debugLog(Ljava/lang/String;)V

    .line 338
    iget-boolean v0, p1, Landroid/view/selectiontoolbar/ShowInfo;->layoutRequired:Z

    if-eqz v0, :cond_50

    .line 339
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItems:Ljava/util/List;

    iget v1, p1, Landroid/view/selectiontoolbar/ShowInfo;->suggestedWidth:I

    invoke-direct {p0, v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->layoutMenuItems(Ljava/util/List;I)V

    .line 341
    :cond_50
    iget-object p1, p1, Landroid/view/selectiontoolbar/ShowInfo;->contentRect:Landroid/graphics/Rect;

    .line 342
    invoke-virtual {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 343
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->show(Landroid/graphics/Rect;)V

    goto :goto_67

    .line 344
    :cond_5c
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 345
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateCoordinates(Landroid/graphics/Rect;)V

    .line 347
    :cond_67
    :goto_67
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 348
    return-void
.end method
