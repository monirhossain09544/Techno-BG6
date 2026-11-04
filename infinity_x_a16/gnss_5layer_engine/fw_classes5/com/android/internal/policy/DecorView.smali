.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$ColorViewState;,
        Lcom/android/internal/policy/DecorView$ColorViewAttributes;,
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;,
        Lcom/android/internal/policy/DecorView$AppJankStatsCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_MEASURE:Z = false

.field public static final blacklist DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x14

.field public static final blacklist DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x5

.field public static final blacklist NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final blacklist SCRIM_ALPHA:I = -0x34000000

.field private static final blacklist SCRIM_LIGHT:I = -0x19000001

.field public static final blacklist STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist SWEEP_OPEN_MENU:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DecorView"


# instance fields
.field private blacklist mActionModeViewInternalPaddingBottom:I

.field private blacklist mActionModeViewInternalPaddingLeft:I

.field private blacklist mActionModeViewInternalPaddingRight:I

.field private blacklist mActionModeViewInternalPaddingTop:I

.field private blacklist mAllowUpdateElevation:Z

.field private blacklist mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

.field private blacklist mApplyFloatingHorizontalInsets:Z

.field private blacklist mApplyFloatingVerticalInsets:Z

.field private blacklist mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private final blacklist mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private blacklist mBackgroundBlurRadius:I

.field private final blacklist mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private blacklist mBackgroundInsets:Landroid/graphics/Insets;

.field private final blacklist mBackgroundPadding:Landroid/graphics/Rect;

.field private final blacklist mBarEnterExitDuration:I

.field private blacklist mChanging:Z

.field blacklist mContentRoot:Landroid/view/ViewGroup;

.field private blacklist mCrossWindowBlurEnabled:Z

.field private blacklist mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mDefaultOpacity:I

.field private blacklist mDownY:I

.field private blacklist mDrawLegacyNavigationBarBackground:Z

.field private blacklist mDrawLegacyNavigationBarBackgroundHandled:Z

.field private final blacklist mDrawingBounds:Landroid/graphics/Rect;

.field private blacklist mElevationAdjustedForStack:Z

.field private blacklist mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final blacklist mFeatureId:I

.field private blacklist mFloatingActionMode:Landroid/view/ActionMode;

.field private blacklist mFloatingActionModeOriginatingView:Landroid/view/View;

.field private final blacklist mFloatingInsets:Landroid/graphics/Rect;

.field private blacklist mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field private blacklist mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final blacklist mForceWindowDrawsBarBackgrounds:Z

.field private final blacklist mFrameOffsets:Landroid/graphics/Rect;

.field private final blacklist mFramePadding:Landroid/graphics/Rect;

.field private final blacklist mHideInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mIsInPictureInPictureMode:Z

.field private blacklist mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private blacklist mLastBackgroundInsets:Landroid/graphics/Insets;

.field private greylist mLastBottomInset:I

.field private blacklist mLastForceConsumingOpaqueCaptionBar:Z

.field private blacklist mLastForceConsumingTypes:I

.field private blacklist mLastHasBottomStableInset:Z

.field private blacklist mLastHasLeftStableInset:Z

.field private blacklist mLastHasRightStableInset:Z

.field private blacklist mLastHasTopStableInset:Z

.field private blacklist mLastInsets:Landroid/view/WindowInsets;

.field private greylist mLastLeftInset:I

.field private blacklist mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private greylist mLastRightInset:I

.field private blacklist mLastSuppressScrimTypes:I

.field private blacklist mLastTopInset:I

.field private blacklist mLastWindowFlags:I

.field private final blacklist mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

.field blacklist mLogTag:Ljava/lang/String;

.field private blacklist mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final blacklist mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mOriginalBackgroundBlurRadius:I

.field private blacklist mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mPendingInsetsController:Landroid/view/PendingInsetsController;

.field private blacklist mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

.field blacklist mPrimaryActionMode:Landroid/view/ActionMode;

.field private blacklist mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private blacklist mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private blacklist mRootScrollY:I

.field private final blacklist mSemiTransparentBarColor:I

.field private final blacklist mShowInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private final blacklist mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mWatchingForMenu:Z

.field private final blacklist mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

.field private greylist mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mWindowResizeCallbacksAdded:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$T1oWPG-yAGRzhCXXNpR4r2ULU4I(Lcom/android/internal/policy/DecorView;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->lambda$setBackgroundBlurRadius$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Z8KGxEYs87tmUmx9r045xREWzEU(Lcom/android/internal/policy/DecorView;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeAnim(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFloatingActionMode(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindow(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeAnim(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFloatingActionMode(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupFloatingActionModeViews(Lcom/android/internal/policy/DecorView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mendOnGoingFadeAnimation(Lcom/android/internal/policy/DecorView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 146
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 151
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v7

    const/4 v8, 0x0

    const/high16 v1, 0x4000000

    const/16 v2, 0x30

    const/4 v3, 0x3

    const/4 v4, 0x5

    const-string v5, "android:status:background"

    const v6, 0x102002f

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView-IA;)V

    sput-object v0, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 153
    new-instance v1, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 158
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v8

    const/4 v9, 0x0

    const/high16 v2, 0x8000000

    const/16 v3, 0x50

    const/4 v5, 0x3

    const-string v6, "android:navigation:background"

    const v7, 0x1020030

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView-IA;)V

    sput-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 162
    new-instance v0, Lcom/android/internal/policy/DecorView$1;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .registers 8

    .line 301
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 183
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 188
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 190
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 192
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 194
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 219
    new-instance v1, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 221
    new-instance v1, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v2, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 230
    new-instance v1, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v1}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 232
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 233
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 235
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 237
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastInsets:Landroid/view/WindowInsets;

    .line 240
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 241
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 243
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 244
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 245
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 246
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingOpaqueCaptionBar:Z

    .line 247
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    .line 249
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 258
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 272
    const-string v2, "DecorView"

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 273
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 274
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 275
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 277
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    .line 278
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 279
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    .line 283
    new-instance v2, Landroid/view/PendingInsetsController;

    invoke-direct {v2}, Landroid/view/PendingInsetsController;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    .line 285
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    .line 286
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    .line 288
    new-instance v2, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 302
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 303
    const p2, 0x10c000e

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 305
    const p2, 0x10c000f

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e01ac

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x11101be

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_cf

    iget p2, p4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-eq p2, v2, :cond_cf

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt p2, v2, :cond_cf

    const/4 v0, 0x1

    goto :goto_d0

    :cond_cf
    nop

    :goto_d0
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10603dc

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    .line 317
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 319
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 321
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    nop

    .line 324
    invoke-static {p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->isEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_f9

    .line 325
    new-instance v1, Lcom/android/internal/policy/WearGestureInterceptionDetector;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;-><init>(Landroid/content/Context;Lcom/android/internal/policy/DecorView;)V

    goto :goto_fa

    .line 326
    :cond_f9
    nop

    :goto_fa
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    .line 327
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static blacklist calculateBarColor(IIIIIIZZ)I
    .registers 8

    .line 1449
    and-int/2addr p1, p0

    if-eqz p1, :cond_4

    .line 1450
    return p2

    .line 1451
    :cond_4
    const/high16 p1, -0x80000000

    and-int/2addr p0, p1

    if-nez p0, :cond_c

    .line 1452
    const/high16 p0, -0x1000000

    return p0

    .line 1453
    :cond_c
    const/4 p0, 0x0

    if-eqz p6, :cond_2a

    .line 1454
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 1455
    if-nez p1, :cond_20

    .line 1456
    and-int p1, p4, p5

    if-eqz p1, :cond_1a

    const/4 p0, 0x1

    .line 1457
    :cond_1a
    if-eqz p0, :cond_1f

    const p2, -0x19000001

    :cond_1f
    return p2

    .line 1458
    :cond_20
    if-eqz p7, :cond_2d

    .line 1459
    const p0, 0xffffff

    and-int/2addr p0, p3

    const/high16 p1, -0x34000000    # -3.3554432E7f

    or-int/2addr p0, p1

    return p0

    .line 1461
    :cond_2a
    if-eqz p7, :cond_2d

    .line 1462
    return p0

    .line 1461
    :cond_2d
    nop

    .line 1464
    return p3
.end method

.method private blacklist calculateNavigationBarColor(I)I
    .registers 11

    .line 1438
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    .line 1442
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v8, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    .line 1438
    const/high16 v2, 0x8000000

    const/16 v6, 0x10

    move v5, p1

    invoke-static/range {v1 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZ)I

    move-result p1

    return p1
.end method

.method private blacklist calculateStatusBarColor(I)I
    .registers 11

    .line 1429
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    .line 1433
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move v7, v0

    .line 1429
    const/high16 v2, 0x4000000

    const/16 v6, 0x8

    const/4 v8, 0x0

    move v5, p1

    invoke-static/range {v1 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZ)I

    move-result p1

    return p1
.end method

.method private blacklist cleanupFloatingActionModeViews()V
    .registers 4

    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 952
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 953
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 955
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 956
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_21

    .line 957
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 958
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 959
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 961
    :cond_21
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 963
    :cond_23
    return-void
.end method

.method private blacklist cleanupPrimaryActionMode()V
    .registers 2

    .line 941
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 942
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 945
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_15

    .line 946
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 948
    :cond_15
    return-void
.end method

.method private blacklist createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .registers 4

    .line 1923
    packed-switch p1, :pswitch_data_e

    .line 1926
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 1928
    :pswitch_8
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .registers 6

    .line 2084
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2085
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2087
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    .line 2088
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 2089
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 2091
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 2092
    new-instance p1, Lcom/android/internal/policy/DecorView$6;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/policy/DecorView$6;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2100
    return-object v0
.end method

.method private blacklist createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 9

    .line 1941
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 1942
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 1949
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 1950
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1952
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1953
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1954
    const v5, 0x1010431

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1957
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_53

    .line 1958
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1959
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1960
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1962
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1963
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1964
    goto :goto_55

    .line 1965
    :cond_53
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 1968
    :goto_55
    new-instance v5, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1969
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeActionModeViewInternalPadding()V

    .line 1970
    new-instance v5, Landroid/widget/PopupWindow;

    const v6, 0x1120008

    invoke-direct {v5, v4, v2, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1972
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1974
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1975
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1977
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10102eb

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1979
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 1980
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1979
    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 1981
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1982
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1983
    new-instance v0, Lcom/android/internal/policy/DecorView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 2012
    goto :goto_bf

    .line 2013
    :cond_a7
    const v0, 0x10201e9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2014
    if-eqz v0, :cond_bf

    .line 2015
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2016
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeActionModeViewInternalPadding()V

    .line 2017
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 2021
    :cond_bf
    :goto_bf
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_db

    .line 2022
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2023
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2024
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v5, :cond_d7

    move v1, v3

    :cond_d7
    invoke-direct {v0, v2, v4, p1, v1}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 2026
    return-object v0

    .line 2028
    :cond_db
    return-object v2
.end method

.method private blacklist dipToPx(F)F
    .registers 4

    .line 2279
    nop

    .line 2280
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2279
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private blacklist drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V
    .registers 10

    .line 2216
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-eqz v0, :cond_9

    goto :goto_2b

    .line 2219
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2220
    if-nez v0, :cond_10

    .line 2221
    return-void

    .line 2223
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2225
    return-void

    .line 2217
    :cond_2b
    :goto_2b
    return-void
.end method

.method private blacklist drawableChanged()V
    .registers 7

    .line 1711
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    if-eqz v0, :cond_5

    .line 1712
    return-void

    .line 1716
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    goto :goto_11

    :cond_c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1717
    :goto_11
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    goto :goto_1d

    :cond_18
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1719
    :goto_1d
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setPadding(IIII)V

    .line 1723
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    .line 1724
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 1726
    nop

    .line 1727
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1728
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 1731
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->hasWindowShadow()Z

    move-result v1

    const/4 v3, -0x3

    if-eqz v1, :cond_53

    if-nez v2, :cond_53

    .line 1733
    goto :goto_94

    .line 1740
    :cond_53
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1741
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1742
    const/4 v4, -0x1

    if-eqz v1, :cond_93

    .line 1743
    if-nez v2, :cond_65

    .line 1744
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    goto :goto_94

    .line 1745
    :cond_65
    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_92

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_92

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_92

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v0, :cond_92

    .line 1749
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 1750
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 1753
    if-eq v0, v4, :cond_90

    if-ne v1, v4, :cond_82

    goto :goto_90

    .line 1755
    :cond_82
    if-nez v0, :cond_86

    .line 1756
    move v3, v1

    goto :goto_91

    .line 1757
    :cond_86
    if-nez v1, :cond_8a

    .line 1758
    move v3, v0

    goto :goto_91

    .line 1760
    :cond_8a
    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    move v3, v0

    goto :goto_91

    .line 1754
    :cond_90
    :goto_90
    move v3, v4

    .line 1762
    :goto_91
    goto :goto_94

    .line 1768
    :cond_92
    goto :goto_94

    .line 1742
    :cond_93
    move v3, v4

    .line 1778
    :goto_94
    iput v3, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 1779
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_9f

    .line 1780
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    .line 1782
    :cond_9f
    return-void
.end method

.method private blacklist endOnGoingFadeAnimation()V
    .registers 2

    .line 2039
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 2040
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2042
    :cond_9
    return-void
.end method

.method private blacklist getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .registers 3

    .line 1468
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_7

    .line 1469
    iget p1, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return p1

    .line 1471
    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public static blacklist getNavBarSize(III)I
    .registers 4

    .line 1082
    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_8

    move p0, p1

    goto :goto_f

    .line 1083
    :cond_8
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result p1

    if-eqz p1, :cond_f

    move p0, p2

    .line 1082
    :cond_f
    :goto_f
    return p0
.end method

.method public static blacklist getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .registers 8

    .line 1088
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    .line 1089
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    .line 1090
    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    mul-float/2addr p2, p4

    float-to-int p2, p2

    .line 1091
    invoke-static {v0, p2, v1}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result p4

    .line 1092
    invoke-static {v0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_20

    .line 1093
    sub-int p2, p0, p4

    invoke-virtual {p3, p2, v2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2f

    .line 1094
    :cond_20
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 1095
    invoke-virtual {p3, v2, v2, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2f

    .line 1097
    :cond_2a
    sub-int p2, p1, p4

    invoke-virtual {p3, v2, p2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1099
    :goto_2f
    return-void
.end method

.method private static blacklist getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .registers 3

    .line 2284
    const-string v0, ""

    if-nez p0, :cond_5

    .line 2285
    return-object v0

    .line 2287
    :cond_5
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2288
    array-length v1, p0

    if-lez v1, :cond_1c

    .line 2289
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0

    .line 2291
    :cond_1c
    return-object v0
.end method

.method private blacklist initializeActionModeViewInternalPadding()V
    .registers 2

    .line 2032
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mActionModeViewInternalPaddingLeft:I

    .line 2033
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mActionModeViewInternalPaddingTop:I

    .line 2034
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mActionModeViewInternalPaddingRight:I

    .line 2035
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mActionModeViewInternalPaddingBottom:I

    .line 2036
    return-void
.end method

.method private blacklist initializeElevation()V
    .registers 2

    .line 2233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 2234
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2235
    return-void
.end method

.method private blacklist interceptBackProgress(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 446
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 447
    return v1

    .line 449
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 451
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 452
    return v1

    .line 455
    :cond_1a
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isInterceptedMotionEvent()Z

    move-result v2

    if-nez v2, :cond_30

    .line 456
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->setMotionEventIntercepted()V

    .line 457
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 459
    return v1

    .line 461
    :cond_30
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist isFillingScreen(Landroid/content/res/Configuration;)Z
    .registers 5

    .line 2155
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    move p1, v1

    goto :goto_d

    :cond_c
    move p1, v0

    .line 2157
    :goto_d
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method public static blacklist isNavBarToLeftEdge(II)Z
    .registers 2

    .line 1078
    if-nez p0, :cond_6

    if-lez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static blacklist isNavBarToRightEdge(II)Z
    .registers 2

    .line 1074
    if-nez p0, :cond_6

    if-lez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private blacklist isOutOfBounds(II)Z
    .registers 4

    .line 524
    const/4 v0, -0x5

    if-lt p1, v0, :cond_18

    if-lt p2, v0, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_18

    .line 525
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    if-le p2, p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x1

    .line 524
    :goto_19
    return p1
.end method

.method private blacklist isOutOfInnerBounds(II)Z
    .registers 4

    .line 520
    if-ltz p1, :cond_13

    if-ltz p2, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result p1

    if-le p2, p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private synthetic blacklist lambda$new$0()Z
    .registers 2

    .line 289
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurCorners()V

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$setBackgroundBlurRadius$1(Ljava/lang/Boolean;)V
    .registers 2

    .line 1390
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    .line 1391
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 1392
    return-void
.end method

.method private static blacklist setColor(Landroid/view/View;IIZZ)V
    .registers 14

    .line 1580
    if-eqz p2, :cond_9b

    .line 1581
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1582
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, p3, :cond_40

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p4, :cond_21

    goto :goto_40

    .line 1595
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 1596
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/InsetDrawable;

    .line 1597
    invoke-virtual {p3}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1598
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_9a

    .line 1583
    :cond_40
    :goto_40
    nop

    .line 1585
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1584
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 1583
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1587
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1588
    if-eqz p3, :cond_64

    if-nez p4, :cond_64

    move v5, v0

    goto :goto_65

    :cond_64
    move v5, v2

    .line 1589
    :goto_65
    if-nez p3, :cond_69

    move v6, v0

    goto :goto_6a

    :cond_69
    move v6, v2

    .line 1590
    :goto_6a
    if-eqz p3, :cond_70

    if-eqz p4, :cond_70

    move v7, v0

    goto :goto_71

    :cond_70
    move v7, v2

    :goto_71
    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1591
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v4, v0, v2

    aput-object v3, v0, v1

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1593
    new-instance p1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1594
    nop

    .line 1600
    :goto_9a
    goto :goto_a2

    .line 1601
    :cond_9b
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1602
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1604
    :goto_a2
    return-void
.end method

.method private blacklist setHandledActionMode(Landroid/view/ActionMode;)V
    .registers 4

    .line 1933
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_a

    .line 1934
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    goto :goto_14

    .line 1935
    :cond_a
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 1936
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    .line 1938
    :cond_14
    :goto_14
    return-void
.end method

.method private blacklist setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 2104
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 2105
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 2106
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2107
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2108
    return-void
.end method

.method private blacklist setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .registers 4

    .line 2045
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 2046
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 2047
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 2048
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 2049
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1b

    .line 2050
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4e

    .line 2052
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 2053
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_56

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 2054
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/internal/policy/DecorView$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$5;-><init>(Lcom/android/internal/policy/DecorView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2066
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4e

    .line 2068
    :cond_41
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 2069
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2072
    :goto_4e
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 2074
    return-void

    :array_56
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .registers 10

    .line 837
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v0, :cond_12

    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 839
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 843
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 844
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v1, :cond_31

    .line 845
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 846
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_38

    .line 848
    :cond_31
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    .line 852
    :goto_38
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_48

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_48

    move v1, v3

    goto :goto_49

    :cond_48
    move v1, v2

    .line 853
    :goto_49
    if-eqz v1, :cond_58

    .line 854
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object p1

    goto :goto_64

    .line 856
    :cond_58
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object p2, p2, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object p1

    .line 859
    :goto_64
    if-eqz p1, :cond_6e

    .line 863
    xor-int/lit8 p2, v1, 0x1

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    .line 864
    invoke-interface {p1, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 867
    :cond_6e
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-object p1, p2, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 868
    if-eqz p1, :cond_75

    move v2, v3

    :cond_75
    return v2
.end method

.method private blacklist startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 6

    .line 895
    new-instance v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    .line 896
    nop

    .line 897
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_31

    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_31

    .line 899
    :try_start_17
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-interface {p2, v0, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p2
    :try_end_21
    .catch Ljava/lang/AbstractMethodError; {:try_start_17 .. :try_end_21} :catch_22

    .line 910
    goto :goto_32

    .line 900
    :catch_22
    move-exception p2

    .line 902
    if-nez p3, :cond_31

    .line 904
    :try_start_25
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p2
    :try_end_2f
    .catch Ljava/lang/AbstractMethodError; {:try_start_25 .. :try_end_2f} :catch_30

    .line 908
    goto :goto_32

    .line 906
    :catch_30
    move-exception p2

    .line 912
    :cond_31
    move-object p2, v1

    :goto_32
    if-eqz p2, :cond_54

    .line 913
    invoke-virtual {p2}, Landroid/view/ActionMode;->getType()I

    move-result p1

    if-nez p1, :cond_40

    .line 914
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 915
    iput-object p2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    goto :goto_52

    .line 916
    :cond_40
    invoke-virtual {p2}, Landroid/view/ActionMode;->getType()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_52

    .line 917
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_50

    .line 918
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 920
    :cond_50
    iput-object p2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 930
    :cond_52
    :goto_52
    move-object v1, p2

    goto :goto_6a

    .line 923
    :cond_54
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object p1

    .line 924
    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 925
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    move-object v1, p1

    goto :goto_6a

    .line 927
    :cond_69
    nop

    .line 930
    :goto_6a
    if-eqz v1, :cond_87

    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_87

    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_87

    .line 932
    :try_start_7c
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_85
    .catch Ljava/lang/AbstractMethodError; {:try_start_7c .. :try_end_85} :catch_86

    .line 935
    goto :goto_87

    .line 933
    :catch_86
    move-exception p1

    .line 937
    :cond_87
    :goto_87
    return-object v1
.end method

.method private blacklist updateActionModeInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 13

    .line 1619
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_a1

    .line 1620
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_a1

    .line 1622
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1623
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1624
    nop

    .line 1625
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9a

    .line 1626
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    if-nez v1, :cond_2b

    .line 1627
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 1629
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 1632
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 1633
    invoke-virtual {v3, p1, v1}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1635
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 1636
    nop

    .line 1637
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    .line 1636
    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 1641
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v1, Landroid/graphics/Insets;->left:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_52

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v1, Landroid/graphics/Insets;->right:I

    if-eq v4, v5, :cond_50

    goto :goto_52

    :cond_50
    move v4, v2

    goto :goto_5c

    .line 1643
    :cond_52
    :goto_52
    nop

    .line 1644
    iget v4, v1, Landroid/graphics/Insets;->left:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1645
    iget v4, v1, Landroid/graphics/Insets;->right:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v4, v6

    .line 1648
    :goto_5c
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mActionModeViewInternalPaddingLeft:I

    iget v8, v3, Landroid/graphics/Insets;->left:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/DecorView;->mActionModeViewInternalPaddingTop:I

    iget v9, v3, Landroid/graphics/Insets;->top:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/internal/policy/DecorView;->mActionModeViewInternalPaddingRight:I

    iget v10, v3, Landroid/graphics/Insets;->right:I

    add-int/2addr v9, v10

    iget v1, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v9, v1

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mActionModeViewInternalPaddingBottom:I

    invoke-virtual {v5, v7, v8, v9, v1}, Lcom/android/internal/widget/ActionBarContextView;->setPadding(IIII)V

    .line 1655
    iget v1, v3, Landroid/graphics/Insets;->top:I

    if-lez v1, :cond_7e

    move v1, v6

    goto :goto_7f

    :cond_7e
    move v1, v2

    .line 1661
    :goto_7f
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_8a

    goto :goto_8b

    :cond_8a
    move v6, v2

    .line 1663
    :goto_8b
    if-eqz v6, :cond_99

    if-eqz v1, :cond_99

    .line 1664
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p1, v2, v1, v2, v2}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    move v2, v4

    goto :goto_9a

    .line 1667
    :cond_99
    move v2, v4

    :cond_9a
    :goto_9a
    if-eqz v2, :cond_a1

    .line 1668
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1672
    :cond_a1
    return-object p1
.end method

.method private blacklist updateBackgroundBlurCorners()V
    .registers 5

    .line 1357
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v0, :cond_5

    return-void

    .line 1359
    :cond_5
    nop

    .line 1362
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    .line 1363
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    .line 1364
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 1365
    iget v2, v0, Landroid/graphics/Outline;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    invoke-virtual {v0}, Landroid/graphics/Outline;->getRadius()F

    move-result v0

    move v1, v0

    .line 1367
    :cond_23
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(F)V

    .line 1368
    return-void
.end method

.method private blacklist updateBackgroundBlurRadius()V
    .registers 3

    .line 1371
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1373
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1374
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    .line 1375
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    if-lez v0, :cond_2e

    .line 1376
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 1377
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1380
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v0, :cond_39

    .line 1381
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 1383
    :cond_39
    return-void
.end method

.method private blacklist updateBackgroundDrawable()V
    .registers 12

    .line 1316
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_8

    .line 1317
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 1320
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_1f

    .line 1323
    return-void

    .line 1326
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1327
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_39

    .line 1328
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v6, v0

    goto :goto_3a

    .line 1327
    :cond_39
    move-object v6, v0

    .line 1332
    :goto_3a
    if-eqz v6, :cond_5e

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1333
    new-instance v4, Lcom/android/internal/policy/DecorView$2;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v7, v0, Landroid/graphics/Insets;->left:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v8, v0, Landroid/graphics/Insets;->top:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v9, v0, Landroid/graphics/Insets;->right:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v10, v0, Landroid/graphics/Insets;->bottom:I

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;IIII)V

    move-object v6, v4

    goto :goto_5f

    .line 1332
    :cond_5e
    move-object v5, p0

    .line 1349
    :goto_5f
    invoke-super {p0, v6}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1351
    iget-object v0, v5, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iput-object v0, v5, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    .line 1352
    iget-object v0, v5, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iput-object v0, v5, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 1353
    iget-object v0, v5, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, v5, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1354
    return-void
.end method

.method private blacklist updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZI)V
    .registers 27

    .line 1490
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v8, v8, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    .line 1491
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    and-int v10, p10, v8

    const/4 v12, 0x0

    if-nez v10, :cond_23

    iget v10, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_21

    goto :goto_23

    :cond_21
    move v8, v12

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v8, 0x1

    :goto_24
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1493
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1491
    invoke-virtual {v9, v8, v10, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 1494
    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-boolean v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1495
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1494
    invoke-virtual {v8, v9, v2, v10, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v7

    .line 1496
    if-eqz v7, :cond_48

    if-lez p4, :cond_48

    const/4 v8, 0x1

    goto :goto_49

    :cond_48
    move v8, v12

    .line 1498
    :goto_49
    nop

    .line 1499
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1501
    const/4 v10, -0x1

    if-eqz v4, :cond_51

    move v13, v10

    goto :goto_53

    :cond_51
    move/from16 v13, p4

    .line 1502
    :goto_53
    if-eqz v4, :cond_57

    move/from16 v10, p4

    .line 1503
    :cond_57
    if-eqz v4, :cond_63

    .line 1504
    iget-object v14, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    if-eqz v5, :cond_60

    iget v14, v14, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    goto :goto_67

    :cond_60
    iget v14, v14, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    goto :goto_67

    .line 1505
    :cond_63
    iget-object v14, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v14, v14, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    .line 1507
    :goto_67
    const/4 v15, 0x4

    if-nez v9, :cond_a6

    .line 1508
    if-eqz v8, :cond_a2

    .line 1509
    new-instance v9, Landroid/view/View;

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1510
    invoke-static {v9, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 1511
    iget-object v3, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v3, v3, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1512
    iget-object v3, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v3, v3, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    invoke-virtual {v9, v3}, Landroid/view/View;->setId(I)V

    .line 1513
    nop

    .line 1514
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1515
    iput v12, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 1517
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v10, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1519
    if-eqz v5, :cond_96

    .line 1520
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_98

    .line 1522
    :cond_96
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1524
    :goto_98
    invoke-virtual {v0, v9, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1525
    invoke-direct {v0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 1526
    move/from16 p9, v8

    const/4 v11, 0x1

    goto :goto_eb

    .line 1508
    :cond_a2
    move/from16 p9, v8

    move v11, v12

    goto :goto_eb

    .line 1528
    :cond_a6
    if-eqz v8, :cond_aa

    move v11, v12

    goto :goto_ab

    :cond_aa
    move v11, v15

    .line 1529
    :goto_ab
    iget v15, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    if-eq v15, v11, :cond_b1

    const/4 v15, 0x1

    goto :goto_b2

    :cond_b1
    move v15, v12

    .line 1530
    :goto_b2
    iput v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 1531
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1532
    if-eqz v5, :cond_bd

    goto :goto_be

    :cond_bd
    move v12, v6

    .line 1533
    :goto_be
    if-eqz v5, :cond_c1

    goto :goto_c2

    :cond_c1
    const/4 v6, 0x0

    .line 1534
    :goto_c2
    move/from16 p9, v8

    iget v8, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v8, v13, :cond_d8

    iget v8, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v8, v10, :cond_d8

    iget v8, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v8, v14, :cond_d8

    iget v8, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-ne v8, v12, :cond_d8

    iget v8, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v8, v6, :cond_e5

    .line 1537
    :cond_d8
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1538
    iput v10, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1539
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1540
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1541
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1542
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1544
    :cond_e5
    if-eqz p9, :cond_ea

    .line 1545
    invoke-static {v9, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 1548
    :cond_ea
    move v11, v15

    :goto_eb
    if-eqz v11, :cond_147

    .line 1549
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1550
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p8, :cond_13b

    .line 1551
    const/4 v4, 0x0

    if-eqz p9, :cond_11d

    .line 1552
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_108

    .line 1553
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    invoke-virtual {v9, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1556
    :cond_108
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v4, v0

    .line 1557
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_147

    .line 1559
    :cond_11d
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v4, v4

    .line 1560
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/DecorView$3;

    invoke-direct {v4, v0, v1}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V

    .line 1561
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_147

    .line 1570
    :cond_13b
    const/4 v5, 0x0

    invoke-virtual {v9, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1571
    if-eqz p9, :cond_143

    move v12, v5

    goto :goto_144

    :cond_143
    const/4 v12, 0x4

    :goto_144
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1574
    :cond_147
    :goto_147
    iput-boolean v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    .line 1575
    iput v2, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    .line 1576
    return-void
.end method

.method private blacklist updateColorViewTranslations()V
    .registers 5

    .line 1609
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 1610
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1611
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_11

    int-to-float v3, v0

    goto :goto_12

    :cond_11
    move v3, v2

    :goto_12
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1613
    :cond_15
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_25

    .line 1614
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_22

    int-to-float v2, v0

    :cond_22
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1616
    :cond_25
    return-void
.end method

.method private blacklist updateElevation()V
    .registers 5

    .line 2238
    nop

    .line 2239
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2240
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 2242
    if-eqz v1, :cond_16

    .line 2243
    return-void

    .line 2245
    :cond_16
    nop

    .line 2246
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2249
    const/4 v2, 0x5

    if-ne v0, v2, :cond_36

    .line 2250
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    if-eqz v0, :cond_26

    .line 2251
    move v0, v2

    goto :goto_28

    :cond_26
    const/high16 v0, 0x40a00000    # 5.0f

    .line 2256
    :goto_28
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-nez v3, :cond_2d

    .line 2257
    goto :goto_2e

    .line 2256
    :cond_2d
    move v2, v0

    .line 2260
    :goto_2e
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v0

    .line 2261
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_3a

    .line 2263
    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    const/4 v0, 0x0

    .line 2268
    :goto_3a
    if-nez v1, :cond_40

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v1, :cond_4d

    :cond_40
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_4d

    .line 2269
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    .line 2271
    :cond_4d
    return-void
.end method


# virtual methods
.method blacklist clearContentView()V
    .registers 4

    .line 2171
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    .line 2172
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2173
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1b

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1b

    .line 2174
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 2171
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2177
    :cond_1e
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    .line 475
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_1d

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 474
    :goto_1d
    return p1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    .line 357
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 358
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 359
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 361
    :goto_f
    if-eqz v1, :cond_45

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_45

    .line 364
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v4, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-lez v4, :cond_2a

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v4, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eq v4, v0, :cond_2a

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 366
    if-eqz v4, :cond_2a

    .line 367
    return v3

    .line 373
    :cond_2a
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_45

    .line 374
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {v4, v5, v0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 375
    return v3

    .line 380
    :cond_45
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_65

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_5e

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_5e

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_62

    .line 383
    :cond_5e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 384
    :goto_62
    if-eqz v0, :cond_65

    .line 385
    return v3

    .line 389
    :cond_65
    if-eqz v1, :cond_74

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_80

    .line 390
    :cond_74
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result p1

    .line 389
    :goto_80
    return p1
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 400
    if-eqz v0, :cond_24

    .line 401
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz p1, :cond_23

    .line 402
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 404
    :cond_23
    return v1

    .line 409
    :cond_24
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_3d

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3d

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_3d

    .line 411
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_41

    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 412
    :goto_41
    if-eqz v0, :cond_44

    .line 413
    return v1

    .line 420
    :cond_44
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 421
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_67

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v3, :cond_67

    .line 423
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3, v0, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 424
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v0, v4, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p1

    .line 426
    iput-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 427
    if-eqz p1, :cond_67

    .line 428
    return v1

    .line 431
    :cond_67
    return v2
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .registers 3

    .line 2313
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPointerCaptureChanged(Z)V

    .line 2314
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2315
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 2317
    :cond_1c
    return-void
.end method

.method public blacklist dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 642
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 643
    const/4 p1, 0x1

    return p1

    .line 646
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 436
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->interceptBackProgress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 437
    const/4 p1, 0x1

    return p1

    .line 439
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_21

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_21

    .line 441
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_25

    :cond_21
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 440
    :goto_25
    return p1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    .line 468
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_1d

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 467
    :goto_1d
    return p1
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 817
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 819
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 822
    :cond_c
    return-void
.end method

.method blacklist finishChanging()V
    .registers 2

    .line 970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 971
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 972
    return-void
.end method

.method public blacklist getAccessibilityViewId()I
    .registers 2

    .line 2321
    const v0, 0x7ffffffe

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1425
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getBackgroundFallback()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getJankTracker()Landroid/app/jank/JankTracker;
    .registers 2

    .line 2359
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    if-eqz v0, :cond_b

    .line 2360
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/DecorView$AppJankStatsCallback;->getAppJankTracker()Landroid/app/jank/JankTracker;

    move-result-object v0

    return-object v0

    .line 2362
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 2128
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method blacklist getStatusBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getWindowInsetsController()Landroid/view/WindowInsetsController;
    .registers 2

    .line 2326
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2327
    invoke-super {p0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0

    .line 2329
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method public whitelist isTransitionGroup()Z
    .registers 2

    .line 1070
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    .line 1039
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1040
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1041
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_59

    .line 1046
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_33

    .line 1047
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1048
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1049
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 1050
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1049
    invoke-virtual {p1, v2, v0, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1052
    :cond_33
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_59

    .line 1053
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1054
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1055
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 1056
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 1055
    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1059
    :cond_59
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetsAsRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1060
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateActionModeInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1062
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 1063
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1065
    :cond_74
    return-object p1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 1812
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1814
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1815
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1a

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_1a

    .line 1816
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 1819
    :cond_1a
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 1827
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    .line 1830
    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-nez v0, :cond_32

    .line 1833
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 1834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 1837
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 1839
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    .line 1840
    return-void
.end method

.method public blacklist onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 2

    .line 1884
    iget p1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz p1, :cond_9

    .line 1885
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 1887
    :cond_9
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 2133
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2135
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 2137
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2138
    if-eqz v0, :cond_13

    .line 2139
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2141
    :cond_13
    return-void
.end method

.method public blacklist onContentDrawn(IIII)Z
    .registers 5

    .line 2196
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 4

    .line 1844
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1846
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1847
    if-eqz v0, :cond_12

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_12

    .line 1848
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 1851
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1f

    .line 1852
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1855
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 1856
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1857
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1858
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1860
    :cond_36
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1862
    :cond_38
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    if-eqz v0, :cond_43

    .line 1863
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 1864
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 1867
    :cond_43
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    .line 1869
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1870
    if-eqz v0, :cond_5c

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5c

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_5c

    .line 1871
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 1874
    :cond_5c
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-eqz v0, :cond_69

    .line 1875
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 1876
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 1879
    :cond_69
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    invoke-virtual {v0}, Landroid/view/PendingInsetsController;->detach()V

    .line 1880
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 349
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 353
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 531
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v2, 0x1

    if-ltz v1, :cond_23

    .line 532
    if-nez v0, :cond_23

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 535
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 536
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 537
    return v2

    .line 542
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    if-eqz v1, :cond_41

    .line 544
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    invoke-virtual {v1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->isIntercepting()Z

    move-result v1

    .line 545
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    .line 546
    invoke-virtual {v3, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 547
    if-eq v1, p1, :cond_3e

    .line 548
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->updateDecorViewGestureInterception(Z)V

    .line 550
    :cond_3e
    if-eqz p1, :cond_41

    .line 551
    return v2

    .line 556
    :cond_41
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6

    .line 797
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 798
    move p2, p1

    move-object p1, p0

    iget-boolean p3, p1, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-eqz p3, :cond_10

    .line 799
    iget-object p3, p1, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    .line 801
    :cond_10
    iget-boolean p3, p1, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    if-eqz p3, :cond_1b

    .line 802
    iget-object p3, p1, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    .line 807
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 808
    const/4 p3, 0x1

    iput-boolean p3, p1, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 810
    if-eqz p2, :cond_2e

    iget-boolean p2, p1, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz p2, :cond_2e

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 813
    :cond_2e
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 19

    .line 696
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 697
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 698
    nop

    .line 699
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1f

    move v3, v5

    goto :goto_20

    :cond_1f
    move v3, v4

    .line 701
    :goto_20
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 702
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 704
    nop

    .line 705
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 706
    const/4 v8, 0x6

    const/4 v9, 0x5

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, -0x80000000

    if-ne v6, v11, :cond_80

    .line 707
    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_3a

    iget-object v12, v12, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_3c

    :cond_3a
    iget-object v12, v12, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 708
    :goto_3c
    if-eqz v12, :cond_80

    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-eqz v13, :cond_80

    .line 710
    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-ne v13, v9, :cond_4c

    .line 711
    invoke-virtual {v12, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    goto :goto_5d

    .line 712
    :cond_4c
    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-ne v13, v8, :cond_5c

    .line 713
    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v13

    iget v14, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    goto :goto_5d

    .line 715
    :cond_5c
    move v12, v4

    .line 718
    :goto_5d
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 719
    if-lez v12, :cond_6e

    .line 720
    nop

    .line 721
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 720
    invoke-static {v12, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 722
    move v13, v5

    goto :goto_83

    .line 724
    :cond_6e
    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v12

    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v12

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 727
    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    move v13, v4

    goto :goto_83

    .line 732
    :cond_80
    move/from16 v12, p1

    move v13, v4

    :goto_83
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 733
    if-ne v7, v11, :cond_e0

    .line 734
    if-eqz v3, :cond_8e

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_92

    .line 735
    :cond_8e
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 736
    :goto_92
    if-eqz v7, :cond_e0

    iget v14, v7, Landroid/util/TypedValue;->type:I

    if-eqz v14, :cond_e0

    .line 738
    iget v14, v7, Landroid/util/TypedValue;->type:I

    if-ne v14, v9, :cond_a2

    .line 739
    invoke-virtual {v7, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    goto :goto_b3

    .line 740
    :cond_a2
    iget v14, v7, Landroid/util/TypedValue;->type:I

    if-ne v14, v8, :cond_b2

    .line 741
    iget v14, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v14, v14

    iget v15, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v15, v15

    invoke-virtual {v7, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v7

    float-to-int v7, v7

    goto :goto_b3

    .line 743
    :cond_b2
    move v7, v4

    .line 746
    :goto_b3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 747
    if-lez v7, :cond_c3

    .line 748
    nop

    .line 749
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 748
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_e2

    .line 750
    :cond_c3
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-nez v7, :cond_e0

    .line 751
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v7

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v7

    invoke-static {v14, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 753
    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    goto :goto_e2

    .line 758
    :cond_e0
    move/from16 v7, p2

    :goto_e2
    invoke-super {v0, v12, v7}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 760
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v12

    .line 761
    nop

    .line 763
    invoke-static {v12, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 765
    if-nez v13, :cond_129

    if-ne v6, v11, :cond_129

    .line 766
    if-eqz v3, :cond_f9

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_fd

    :cond_f9
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 767
    :goto_fd
    nop

    .line 768
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    .line 767
    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 769
    iget v6, v3, Landroid/util/TypedValue;->type:I

    if-eqz v6, :cond_129

    .line 771
    iget v6, v3, Landroid/util/TypedValue;->type:I

    if-ne v6, v9, :cond_117

    .line 772
    invoke-virtual {v3, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_122

    .line 773
    :cond_117
    iget v2, v3, Landroid/util/TypedValue;->type:I

    if-ne v2, v8, :cond_121

    .line 774
    invoke-virtual {v3, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_122

    .line 776
    :cond_121
    move v1, v4

    .line 781
    :goto_122
    if-ge v12, v1, :cond_129

    .line 782
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 783
    move v4, v5

    .line 790
    :cond_129
    if-eqz v4, :cond_12e

    .line 791
    invoke-super {v0, v14, v7}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 793
    :cond_12e
    return-void
.end method

.method public blacklist onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3

    .line 2145
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 2147
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->updateDisplay(I)V

    .line 2148
    return-void
.end method

.method public blacklist onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .registers 2

    .line 2212
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V

    .line 2213
    return-void
.end method

.method public blacklist onRequestDraw(Z)V
    .registers 2

    .line 2201
    if-nez p1, :cond_3

    .line 2202
    return-void

    .line 2205
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2206
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 2208
    :cond_10
    return-void
.end method

.method blacklist onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .registers 4

    .line 2162
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2165
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2166
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 2167
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 2168
    return-void
.end method

.method public blacklist onRootViewScrollYChanged(I)V
    .registers 2

    .line 1912
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 1913
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 1914
    return-void
.end method

.method public blacklist onSystemBarAppearanceChanged(I)V
    .registers 4

    .line 1031
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1032
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_e

    .line 1033
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnSystemBarAppearanceChanged(I)V

    .line 1035
    :cond_e
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public blacklist onWindowDragResizeEnd()V
    .registers 3

    .line 2190
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2191
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 2192
    return-void
.end method

.method public blacklist onWindowDragResizeStart()V
    .registers 2

    .line 2181
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2183
    return-void

    .line 2185
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 2186
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 4

    .line 1786
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 1790
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_19

    .line 1792
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 1795
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1796
    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_30

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_30

    .line 1797
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 1800
    :cond_30
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_39

    .line 1801
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 1803
    :cond_39
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_42

    .line 1804
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 1807
    :cond_42
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 1808
    return-void
.end method

.method public whitelist onWindowSystemUiVisibilityChanged(I)V
    .registers 3

    .line 1026
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1027
    return-void
.end method

.method public blacklist providePendingInsetsController()Landroid/view/PendingInsetsController;
    .registers 2

    .line 1918
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method blacklist removeBackgroundBlurDrawable()V
    .registers 4

    .line 1413
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1414
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1415
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 1416
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1418
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1419
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 1420
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1421
    return-void
.end method

.method public whitelist reportAppJankStats(Landroid/app/jank/AppJankStats;)V
    .registers 3

    .line 2349
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    if-eqz v0, :cond_f

    .line 2350
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/DecorView$AppJankStatsCallback;->getAppJankTracker()Landroid/app/jank/JankTracker;

    move-result-object v0

    .line 2351
    if-eqz v0, :cond_f

    .line 2352
    invoke-virtual {v0, p1}, Landroid/app/jank/JankTracker;->mergeAppJankStats(Landroid/app/jank/AppJankStats;)V

    .line 2355
    :cond_f
    return-void
.end method

.method public blacklist requestKeyboardShortcuts(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    .line 2304
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 2305
    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 2306
    :goto_d
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 2307
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 2309
    :cond_26
    return-void
.end method

.method public whitelist sendAccessibilityEvent(I)V
    .registers 4

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 621
    return-void

    .line 627
    :cond_d
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    .line 631
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_33

    .line 634
    :cond_30
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 636
    :goto_33
    return-void
.end method

.method public blacklist setAppJankStatsCallback(Lcom/android/internal/policy/DecorView$AppJankStatsCallback;)V
    .registers 2

    .line 2343
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    .line 2344
    return-void
.end method

.method blacklist setBackgroundBlurRadius(I)V
    .registers 4

    .line 1386
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    .line 1387
    if-lez p1, :cond_4f

    .line 1388
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-nez p1, :cond_4b

    .line 1389
    new-instance p1, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1396
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_22

    .line 1397
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    goto :goto_30

    .line 1398
    :cond_22
    new-instance p1, Landroid/os/HandlerExecutor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 1399
    :goto_30
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1400
    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1402
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1403
    goto :goto_59

    .line 1404
    :cond_4b
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    goto :goto_59

    .line 1406
    :cond_4f
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-eqz p1, :cond_59

    .line 1407
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 1408
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    .line 1410
    :cond_59
    :goto_59
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1009
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    return-void
.end method

.method blacklist setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {p1}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setWillNotDraw(Z)V

    .line 332
    return-void
.end method

.method protected blacklist setFrame(IIII)Z
    .registers 8

    .line 651
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result p1

    .line 652
    if-eqz p1, :cond_65

    .line 653
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 654
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 656
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 657
    if-eqz p3, :cond_5c

    .line 658
    iget-object p4, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 659
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 660
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 661
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 662
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 663
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 664
    iget-object p3, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 665
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 666
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 667
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 668
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p4

    sub-int/2addr v0, p3

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 672
    :cond_5c
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 673
    if-eqz p3, :cond_65

    .line 674
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 691
    :cond_65
    return p1
.end method

.method public whitelist setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .registers 2

    .line 1704
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1707
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 1708
    return-void
.end method

.method public blacklist setSurfaceFormat(I)V
    .registers 3

    .line 1902
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    .line 1903
    return-void
.end method

.method public blacklist setSurfaceKeepScreenOn(Z)V
    .registers 3

    .line 1906
    const/16 v0, 0x80

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    goto :goto_f

    .line 1907
    :cond_a
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    .line 1908
    :goto_f
    return-void
.end method

.method public blacklist setSurfaceType(I)V
    .registers 3

    .line 1898
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 1899
    return-void
.end method

.method blacklist setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 3

    .line 2111
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2112
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2113
    instance-of v0, p1, Lcom/android/internal/policy/DecorContext;

    if-eqz v0, :cond_11

    .line 2114
    check-cast p1, Lcom/android/internal/policy/DecorContext;

    .line 2115
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 2117
    :cond_11
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1d

    .line 2118
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 2119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 2120
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2122
    :cond_1d
    return-void
.end method

.method public blacklist setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-nez v0, :cond_7

    .line 976
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 977
    return-void

    .line 979
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_83

    .line 980
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 981
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 982
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    if-nez v0, :cond_4f

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4f

    .line 984
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 985
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Color;->luminance()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_38

    const/4 v1, 0x1

    goto :goto_39

    :cond_38
    move v1, v2

    .line 986
    :goto_39
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v3

    .line 987
    const/16 v4, 0x200

    if-eqz v1, :cond_43

    move v1, v4

    goto :goto_44

    :cond_43
    move v1, v2

    .line 986
    :goto_44
    invoke-interface {v3, v1, v4}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 989
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 990
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 992
    :cond_4f
    if-eqz p1, :cond_57

    .line 993
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_7c

    .line 994
    :cond_57
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_67

    .line 995
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_7c

    .line 996
    :cond_67
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_77

    .line 997
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_7c

    .line 999
    :cond_77
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1001
    :goto_7c
    sget-boolean p1, Landroid/view/View;->sBrokenWindowBackground:Z

    if-nez p1, :cond_83

    .line 1002
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1005
    :cond_83
    return-void
.end method

.method public blacklist setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1013
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_19

    .line 1014
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1015
    if-eqz p1, :cond_11

    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_16

    .line 1018
    :cond_11
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1020
    :goto_16
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1022
    :cond_19
    return-void
.end method

.method blacklist shouldAnimatePrimaryActionModeView()Z
    .registers 2

    .line 2079
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 3

    .line 826
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 4

    .line 831
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 885
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 3

    .line 890
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 874
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 880
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method blacklist startChanging()V
    .registers 2

    .line 966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 967
    return-void
.end method

.method public blacklist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 511
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public blacklist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 480
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_18

    .line 481
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_18

    .line 484
    if-ne v0, v2, :cond_17

    .line 485
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 487
    :cond_17
    return v2

    .line 491
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 492
    return v2

    .line 495
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    return v2
.end method

.method public blacklist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 499
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public blacklist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 503
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public blacklist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 507
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .registers 25

    .line 1102
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 1103
    iget v1, v12, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v2

    or-int v13, v1, v2

    .line 1105
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v14

    .line 1106
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 1107
    invoke-interface {v1}, Landroid/view/WindowInsetsController;->getRequestedVisibleTypes()I

    move-result v10

    .line 1108
    if-eqz v14, :cond_28

    .line 1109
    iget-object v1, v14, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    move v15, v1

    goto :goto_2d

    .line 1110
    :cond_28
    invoke-interface {v1}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    move v15, v1

    .line 1113
    :goto_2d
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1114
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    const/16 v16, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3f

    move/from16 v1, v16

    goto :goto_40

    :cond_3f
    move v1, v3

    .line 1115
    :goto_40
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/high16 v17, -0x80000000

    if-eqz v2, :cond_4e

    if-eqz v1, :cond_4b

    goto :goto_4e

    :cond_4b
    move v14, v3

    goto/16 :goto_1dc

    .line 1116
    :cond_4e
    :goto_4e
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v1

    .line 1117
    xor-int/lit8 v1, v1, 0x1

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    iget v4, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v2, v4

    and-int v2, v2, v17

    if-eqz v2, :cond_60

    move/from16 v2, v16

    goto :goto_61

    :cond_60
    move v2, v3

    :goto_61
    or-int/2addr v1, v2

    .line 1119
    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 1121
    if-eqz v11, :cond_112

    .line 1122
    iput-object v11, v0, Lcom/android/internal/policy/DecorView;->mLastInsets:Landroid/view/WindowInsets;

    .line 1123
    invoke-virtual {v11}, Landroid/view/WindowInsets;->getForceConsumingTypes()I

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 1124
    invoke-virtual {v11}, Landroid/view/WindowInsets;->isForceConsumingOpaqueCaptionBar()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingOpaqueCaptionBar:Z

    .line 1126
    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v4, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1127
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v5

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 1126
    invoke-static {v2, v4, v5, v6}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result v2

    .line 1130
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v5

    or-int/2addr v4, v5

    .line 1131
    nop

    .line 1132
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    .line 1131
    invoke-virtual {v11, v5}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v5

    .line 1133
    if-eqz v2, :cond_a5

    .line 1134
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_ad

    .line 1135
    :cond_a5
    invoke-virtual {v11, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    .line 1136
    :goto_ad
    iget v4, v2, Landroid/graphics/Insets;->top:I

    iput v4, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 1137
    iget v4, v2, Landroid/graphics/Insets;->bottom:I

    iput v4, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 1138
    iget v4, v2, Landroid/graphics/Insets;->right:I

    iput v4, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 1139
    iget v2, v2, Landroid/graphics/Insets;->left:I

    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 1144
    iget v2, v5, Landroid/graphics/Insets;->top:I

    if-eqz v2, :cond_c4

    move/from16 v2, v16

    goto :goto_c5

    :cond_c4
    move v2, v3

    .line 1145
    :goto_c5
    iget-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    if-eq v2, v4, :cond_cc

    move/from16 v4, v16

    goto :goto_cd

    :cond_cc
    move v4, v3

    :goto_cd
    or-int/2addr v1, v4

    .line 1146
    iput-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 1148
    iget v2, v5, Landroid/graphics/Insets;->bottom:I

    if-eqz v2, :cond_d7

    move/from16 v2, v16

    goto :goto_d8

    :cond_d7
    move v2, v3

    .line 1149
    :goto_d8
    iget-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    if-eq v2, v4, :cond_df

    move/from16 v4, v16

    goto :goto_e0

    :cond_df
    move v4, v3

    :goto_e0
    or-int/2addr v1, v4

    .line 1150
    iput-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 1152
    iget v2, v5, Landroid/graphics/Insets;->right:I

    if-eqz v2, :cond_ea

    move/from16 v2, v16

    goto :goto_eb

    :cond_ea
    move v2, v3

    .line 1153
    :goto_eb
    iget-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    if-eq v2, v4, :cond_f2

    move/from16 v4, v16

    goto :goto_f3

    :cond_f2
    move v4, v3

    :goto_f3
    or-int/2addr v1, v4

    .line 1154
    iput-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 1156
    iget v2, v5, Landroid/graphics/Insets;->left:I

    if-eqz v2, :cond_fd

    move/from16 v2, v16

    goto :goto_fe

    :cond_fd
    move v2, v3

    .line 1157
    :goto_fe
    iget-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    if-eq v2, v4, :cond_105

    move/from16 v4, v16

    goto :goto_106

    :cond_105
    move v4, v3

    :goto_106
    or-int/2addr v1, v4

    .line 1158
    iput-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 1160
    invoke-virtual {v11}, Landroid/view/WindowInsets;->getSuppressScrimTypes()I

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    move/from16 v18, v1

    goto :goto_114

    .line 1121
    :cond_112
    move/from16 v18, v1

    .line 1163
    :goto_114
    iget v1, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v19

    .line 1164
    iget v1, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v6

    .line 1165
    iget v1, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v4

    .line 1166
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v0, v15}, Lcom/android/internal/policy/DecorView;->calculateNavigationBarColor(I)I

    move-result v2

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    if-nez v19, :cond_141

    if-eqz v6, :cond_13d

    goto :goto_141

    :cond_13d
    move v7, v3

    move v3, v5

    move v5, v7

    goto :goto_145

    :cond_141
    :goto_141
    move v7, v3

    move v3, v5

    move/from16 v5, v16

    :goto_145
    if-eqz p2, :cond_14c

    if-nez v18, :cond_14c

    move/from16 v8, v16

    goto :goto_14d

    :cond_14c
    move v8, v7

    :goto_14d
    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    move/from16 v20, v7

    const/4 v7, 0x0

    move-object/from16 v21, v14

    move/from16 v14, v20

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZI)V

    .line 1171
    iget-boolean v1, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1172
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    or-int/2addr v2, v10

    .line 1174
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_176

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1175
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v2, v2, v17

    if-nez v2, :cond_176

    if-lez v4, :cond_176

    move/from16 v3, v16

    goto :goto_177

    :cond_176
    move v3, v14

    :goto_177
    iput-boolean v3, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1177
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eq v1, v2, :cond_18c

    .line 1178
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1179
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onDrawLegacyNavigationBarBackgroundChanged(Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    .line 1181
    if-eqz v21, :cond_18c

    .line 1182
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 1185
    :cond_18c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->forceInvertColor()Z

    move-result v1

    if-eqz v1, :cond_1a0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_1a0

    .line 1187
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setUsageHint(I)V

    .line 1191
    :cond_1a0
    if-eqz v19, :cond_1ab

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v1, :cond_1ab

    move/from16 v3, v16

    goto :goto_1ac

    :cond_1ab
    move v3, v14

    .line 1193
    :goto_1ac
    if-eqz v6, :cond_1b7

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v1, :cond_1b7

    move/from16 v6, v16

    goto :goto_1b8

    :cond_1b7
    move v6, v14

    .line 1195
    :goto_1b8
    if-eqz v3, :cond_1be

    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move v7, v3

    goto :goto_1c5

    .line 1196
    :cond_1be
    if-eqz v6, :cond_1c4

    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move v7, v3

    goto :goto_1c5

    :cond_1c4
    move v7, v14

    .line 1197
    :goto_1c5
    invoke-direct {v0, v15}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor(I)I

    move-result v2

    .line 1198
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-eqz p2, :cond_1d4

    if-nez v18, :cond_1d4

    move/from16 v8, v16

    goto :goto_1d5

    :cond_1d4
    move v8, v14

    :goto_1d5
    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZI)V

    .line 1204
    :goto_1dc
    nop

    .line 1215
    and-int/lit8 v1, v13, 0x2

    if-nez v1, :cond_1eb

    .line 1216
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    and-int/2addr v1, v10

    if-nez v1, :cond_1e9

    goto :goto_1eb

    :cond_1e9
    move v3, v14

    goto :goto_1ed

    :cond_1eb
    :goto_1eb
    move/from16 v3, v16

    .line 1217
    :goto_1ed
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 1219
    and-int/lit16 v2, v13, 0x200

    if-nez v2, :cond_1fc

    if-eqz v1, :cond_1fc

    if-nez v3, :cond_1fc

    move/from16 v2, v16

    goto :goto_1fd

    :cond_1fc
    move v2, v14

    .line 1223
    :goto_1fd
    iget-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-nez v4, :cond_205

    iget-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-eqz v4, :cond_20d

    :cond_205
    iget v4, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v4, v4, v17

    if-nez v4, :cond_20d

    if-nez v2, :cond_218

    :cond_20d
    iget v4, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 1227
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_21b

    if-eqz v3, :cond_21b

    :cond_218
    move/from16 v4, v16

    goto :goto_21c

    :cond_21b
    move v4, v14

    .line 1229
    :goto_21c
    iget v5, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v5, v5, v17

    if-eqz v5, :cond_224

    if-nez v2, :cond_226

    :cond_224
    if-eqz v4, :cond_229

    :cond_226
    move/from16 v2, v16

    goto :goto_22a

    :cond_229
    move v2, v14

    .line 1232
    :goto_22a
    if-eqz v2, :cond_232

    .line 1233
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v2, v14

    goto :goto_233

    .line 1232
    :cond_232
    move v2, v14

    .line 1240
    :goto_233
    and-int/lit8 v5, v13, 0x4

    if-nez v5, :cond_240

    iget v5, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_23e

    goto :goto_240

    :cond_23e
    move v5, v14

    goto :goto_242

    :cond_240
    :goto_240
    move/from16 v5, v16

    .line 1242
    :goto_242
    if-nez v5, :cond_24e

    .line 1243
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    and-int/2addr v6, v10

    if-nez v6, :cond_24c

    goto :goto_24e

    :cond_24c
    move v6, v14

    goto :goto_250

    :cond_24e
    :goto_24e
    move/from16 v6, v16

    .line 1244
    :goto_250
    and-int/lit16 v7, v13, 0x400

    if-nez v7, :cond_26b

    if-eqz v1, :cond_26b

    iget v1, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_26b

    iget v1, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x10000

    and-int/2addr v1, v7

    if-nez v1, :cond_26b

    iget-boolean v1, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v1, :cond_26b

    iget v1, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-nez v1, :cond_276

    :cond_26b
    iget v1, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 1250
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v7

    and-int/2addr v1, v7

    if-eqz v1, :cond_27b

    if-eqz v6, :cond_27b

    .line 1252
    :cond_276
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    or-int/2addr v2, v1

    .line 1256
    :cond_27b
    if-nez v5, :cond_287

    .line 1257
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v1

    and-int/2addr v1, v10

    if-nez v1, :cond_285

    goto :goto_287

    :cond_285
    move v1, v14

    goto :goto_289

    :cond_287
    :goto_287
    move/from16 v1, v16

    .line 1258
    :goto_289
    sget-object v5, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION:Landroid/window/DesktopModeFlags;

    .line 1259
    invoke-virtual {v5}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v5

    if-eqz v5, :cond_29f

    iget v5, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 1260
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_29f

    if-eqz v1, :cond_29f

    move/from16 v1, v16

    goto :goto_2a0

    :cond_29f
    move v1, v14

    .line 1263
    :goto_2a0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->customizableWindowHeaders()Z

    move-result v5

    if-eqz v5, :cond_2ad

    and-int/lit16 v5, v15, 0x80

    if-nez v5, :cond_2ad

    move/from16 v5, v16

    goto :goto_2ae

    :cond_2ad
    move v5, v14

    .line 1265
    :goto_2ae
    sget-object v6, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION_ALWAYS:Landroid/window/DesktopModeFlags;

    .line 1266
    invoke-virtual {v6}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v6

    if-eqz v6, :cond_2bd

    iget-boolean v6, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingOpaqueCaptionBar:Z

    if-eqz v6, :cond_2bd

    if-eqz v5, :cond_2bd

    goto :goto_2bf

    :cond_2bd
    move/from16 v16, v14

    .line 1270
    :goto_2bf
    if-nez v1, :cond_2c3

    if-eqz v16, :cond_2c8

    .line 1271
    :cond_2c3
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v1

    or-int/2addr v2, v1

    .line 1274
    :cond_2c8
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mLastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_2d3

    .line 1275
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_2d5

    :cond_2d3
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1277
    :goto_2d5
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v2, :cond_32c

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 1278
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_32c

    .line 1279
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1280
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v1, Landroid/graphics/Insets;->top:I

    if-ne v5, v6, :cond_303

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v1, Landroid/graphics/Insets;->right:I

    if-ne v5, v6, :cond_303

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v1, Landroid/graphics/Insets;->bottom:I

    if-ne v5, v6, :cond_303

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v1, Landroid/graphics/Insets;->left:I

    if-eq v5, v6, :cond_31d

    .line 1283
    :cond_303
    iget v5, v1, Landroid/graphics/Insets;->top:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1284
    iget v5, v1, Landroid/graphics/Insets;->right:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1285
    iget v5, v1, Landroid/graphics/Insets;->bottom:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1286
    iget v5, v1, Landroid/graphics/Insets;->left:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1287
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    if-nez v11, :cond_31d

    .line 1292
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    .line 1295
    :cond_31d
    if-eqz v11, :cond_32c

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v2, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32c

    .line 1296
    invoke-virtual {v11, v1}, Landroid/view/WindowInsets;->inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;

    move-result-object v1

    goto :goto_32d

    .line 1300
    :cond_32c
    move-object v1, v11

    :goto_32d
    if-eqz v4, :cond_342

    if-nez v3, :cond_342

    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-nez v2, :cond_342

    .line 1301
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    invoke-static {v2, v14, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    goto :goto_346

    .line 1303
    :cond_342
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v2, v0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 1305
    :goto_346
    invoke-direct {v0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1307
    return-object v1
.end method

.method blacklist updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 2296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 2297
    return-void
.end method

.method public blacklist updatePictureInPictureOutlineProvider(Z)V
    .registers 4

    .line 1681
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    if-ne v0, p1, :cond_5

    .line 1682
    return-void

    .line 1685
    :cond_5
    if-eqz p1, :cond_1b

    .line 1686
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1687
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 1688
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1691
    sget-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1693
    :cond_1a
    goto :goto_28

    .line 1695
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_28

    .line 1696
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1699
    :cond_28
    :goto_28
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    .line 1700
    return-void
.end method

.method public blacklist willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .registers 2

    .line 1894
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .registers 2

    .line 1890
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method
