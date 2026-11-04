.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final blacklist CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field private static final blacklist DISABLE_OPT_OUT_EDGE_TO_EDGE:J = 0x1685bfe5L

.field private static final blacklist ENFORCE_EDGE_TO_EDGE:J = 0x1273cab3L

.field private static final blacklist ENFORCE_EDGE_TO_EDGE_SDK_VERSION:I

.field static final blacklist FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final blacklist FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final blacklist FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final blacklist FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final blacklist OVERRIDE_LAYOUT_IN_DISPLAY_CUTOUT_MODE:J = 0x13d44965L

.field private static final blacklist PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final blacklist TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final blacklist USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final blacklist VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static final blacklist sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

.field static final blacklist sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private blacklist mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private blacklist mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field private blacklist mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private blacklist mAllowFloatingWindowsFillScreen:Ljava/lang/Boolean;

.field private blacklist mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private blacklist mAlwaysReadCloseOnTouchAttr:Z

.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mAudioMode:I

.field private blacklist mBackgroundBlurRadius:I

.field blacklist mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mBackgroundFadeDurationMillis:J

.field blacklist mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mCircularProgressBar:Landroid/widget/ProgressBar;

.field private blacklist mClipToOutline:Z

.field private blacklist mClosingActionMenu:Z

.field blacklist mContentParent:Landroid/view/ViewGroup;

.field private blacklist mContentParentExplicitlySet:Z

.field private blacklist mContentScene:Landroid/transition/Scene;

.field blacklist mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final blacklist mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

.field blacklist mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

.field private blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field blacklist mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field blacklist mDecorFitsSystemWindows:Z

.field private blacklist mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field blacklist mEdgeToEdgeEnforced:Z

.field private blacklist mElevation:F

.field blacklist mEnsureNavigationBarContrastWhenTransparent:Z

.field blacklist mEnsureStatusBarContrastWhenTransparent:Z

.field private blacklist mEnterTransition:Landroid/transition/Transition;

.field private blacklist mExitTransition:Landroid/transition/Transition;

.field blacklist mFixedHeightMajor:Landroid/util/TypedValue;

.field blacklist mFixedHeightMinor:Landroid/util/TypedValue;

.field blacklist mFixedWidthMajor:Landroid/util/TypedValue;

.field blacklist mFixedWidthMinor:Landroid/util/TypedValue;

.field private blacklist mForceDecorInstall:Z

.field private blacklist mForcedNavigationBarColor:Z

.field private blacklist mForcedStatusBarColor:Z

.field private blacklist mFrameResource:I

.field private blacklist mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field blacklist mIconRes:I

.field private blacklist mInvalidatePanelMenuFeatures:I

.field private blacklist mInvalidatePanelMenuPosted:Z

.field private final blacklist mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field blacklist mIsFloating:Z

.field private blacklist mIsStartingWindow:Z

.field private blacklist mIsTranslucent:Z

.field private blacklist mKeyguardManager:Landroid/app/KeyguardManager;

.field private blacklist mLayoutInflater:Landroid/view/LayoutInflater;

.field private blacklist mLeftIconView:Landroid/widget/ImageView;

.field private blacklist mLoadElevation:Z

.field blacklist mLogoRes:I

.field private blacklist mMediaController:Landroid/media/session/MediaController;

.field private blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field final blacklist mMinWidthMajor:Landroid/util/TypedValue;

.field final blacklist mMinWidthMinor:Landroid/util/TypedValue;

.field blacklist mNavigationBarColor:I

.field blacklist mNavigationBarColorSpecified:Z

.field blacklist mNavigationBarDividerColor:I

.field private blacklist mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

.field blacklist mPanelChordingKey:I

.field private blacklist mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private blacklist mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field blacklist mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private final blacklist mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

.field private blacklist mReenterTransition:Landroid/transition/Transition;

.field public final blacklist mRenderShadowsInCompositor:Z

.field blacklist mResourcesSetFlags:I

.field private blacklist mReturnTransition:Landroid/transition/Transition;

.field private blacklist mRightIconView:Landroid/widget/ImageView;

.field private blacklist mSharedElementEnterTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementExitTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementReenterTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementReturnTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field blacklist mStatusBarColor:I

.field private blacklist mSupportsPictureInPicture:Z

.field blacklist mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field blacklist mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private blacklist mTextColor:I

.field private blacklist mTheme:I

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleColor:I

.field private blacklist mTitleView:Landroid/widget/TextView;

.field private blacklist mTransitionManager:Landroid/transition/TransitionManager;

.field private blacklist mUiOptions:I

.field private blacklist mUseDecorContext:Z

.field private blacklist mVolumeControlStreamType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Zy7od7X3RmhLcuebHQM7azM371g(Lcom/android/internal/policy/PhoneWindow;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->lambda$setMediaController$1(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInvalidatePanelMenuPosted(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcallOnPanelClosed(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissContextMenu(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 158
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    .line 208
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 213
    nop

    .line 214
    const-string v0, "persist.wm.debug.default_e2e_since_sdk"

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/policy/PhoneWindow;->ENFORCE_EDGE_TO_EDGE_SDK_VERSION:I

    .line 401
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 7

    .line 405
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 220
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 222
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 223
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 241
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 306
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 307
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 309
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    .line 311
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 317
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 319
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 320
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 321
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 322
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 323
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    .line 324
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 325
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 330
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 333
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 335
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 341
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 342
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    .line 349
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 353
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 367
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 368
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 369
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 370
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 371
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 372
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 373
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 374
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 377
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 383
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 385
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 390
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 406
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "render_shadows_in_compositor"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_82

    move v0, v2

    :cond_82
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 409
    new-instance v0, Landroid/window/ProxyOnBackInvokedDispatcher;

    invoke-direct {v0, p1}, Landroid/window/ProxyOnBackInvokedDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowFloatingWindowsFillScreen:Ljava/lang/Boolean;

    .line 412
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .registers 7

    .line 419
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 423
    const/4 v1, 0x0

    if-eqz p2, :cond_49

    .line 424
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/DecorView;

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 425
    invoke-virtual {p2}, Landroid/view/Window;->getElevation()F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 426
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 427
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 428
    invoke-virtual {p2}, Landroid/view/Window;->decorFitsSystemWindows()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 429
    invoke-virtual {p2}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->setSystemBarAppearance(I)V

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object p2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 434
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    .line 435
    if-eqz p2, :cond_49

    .line 437
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->clear()V

    .line 438
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->clearSystemVibrator()V

    .line 439
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    .line 444
    :cond_49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "force_resizable_activities"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_57

    move p2, v0

    goto :goto_58

    :cond_57
    move p2, v1

    .line 446
    :goto_58
    if-nez p2, :cond_68

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.software.picture_in_picture"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_67

    goto :goto_68

    :cond_67
    move v0, v1

    :cond_68
    :goto_68
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    .line 448
    iput-object p3, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 449
    return-void
.end method

.method private blacklist applyDecorFitsSystemWindows()V
    .registers 3

    .line 4165
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 4166
    if-eqz v0, :cond_11

    .line 4167
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    if-eqz v1, :cond_d

    .line 4168
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    goto :goto_e

    .line 4169
    :cond_d
    const/4 v1, 0x0

    .line 4167
    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setOnContentApplyWindowInsetsListener(Landroid/view/Window$OnContentApplyWindowInsetsListener;)V

    .line 4171
    :cond_11
    return-void
.end method

.method private blacklist callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 6

    .line 3295
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3296
    if-nez v0, :cond_7

    .line 3297
    return-void

    .line 3300
    :cond_7
    if-nez p3, :cond_1a

    .line 3302
    if-nez p2, :cond_16

    .line 3303
    if-ltz p1, :cond_16

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_16

    .line 3304
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    aget-object p2, p2, p1

    .line 3308
    :cond_16
    if-eqz p2, :cond_1a

    .line 3310
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3315
    :cond_1a
    if-eqz p2, :cond_21

    iget-boolean p2, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez p2, :cond_21

    .line 3316
    return-void

    .line 3318
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_2a

    .line 3319
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 3321
    :cond_2a
    return-void
.end method

.method private static blacklist clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .registers 2

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 918
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 919
    return-void
.end method

.method private declared-synchronized blacklist closeContextMenu()V
    .registers 2

    monitor-enter p0

    .line 1314
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_d

    .line 1315
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1316
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1318
    :cond_d
    monitor-exit p0

    return-void

    .line 1313
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private declared-synchronized blacklist dismissContextMenu()V
    .registers 3

    monitor-enter p0

    .line 1325
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1327
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v1, :cond_f

    .line 1328
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 1329
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1331
    :cond_f
    monitor-exit p0

    return-void

    .line 1324
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private blacklist getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 3

    .line 3246
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 3247
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object p1

    .line 3249
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 3250
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3252
    :cond_10
    const p1, 0x10204a9

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3253
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_25

    .line 3254
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3256
    :cond_25
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method private blacklist getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .registers 6

    .line 3078
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 3079
    if-nez p2, :cond_d

    .line 3080
    const/4 p1, 0x0

    return-object p1

    .line 3082
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "The feature has not been requested"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3086
    :cond_15
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    if-eqz p2, :cond_1c

    array-length v0, p2

    if-gt v0, p1, :cond_2a

    .line 3087
    :cond_1c
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 3088
    if-eqz p2, :cond_27

    .line 3089
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3091
    :cond_27
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-object p2, v0

    .line 3094
    :cond_2a
    aget-object v0, p2, p1

    .line 3095
    if-nez v0, :cond_35

    .line 3096
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    aput-object v0, p2, p1

    .line 3098
    :cond_35
    return-object v0
.end method

.method private blacklist getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 3

    .line 3260
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 3261
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object p1

    .line 3263
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 3264
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3266
    :cond_10
    const p1, 0x10204ab

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3267
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_25

    .line 3268
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3270
    :cond_25
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method private blacklist getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 2120
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_12

    .line 2121
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2124
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private blacklist getLeftIconView()Landroid/widget/ImageView;
    .registers 2

    .line 3228
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 3229
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0

    .line 3231
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 3232
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3234
    :cond_e
    const v0, 0x10203b9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private blacklist getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .registers 3

    .line 2135
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_12

    .line 2136
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 2139
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method private blacklist getOptionsPanelGravity()I
    .registers 4

    .line 1548
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    .line 1549
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1548
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity(I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 1550
    :catch_f
    move-exception v0

    .line 1551
    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    const/16 v0, 0x51

    return v0
.end method

.method private blacklist getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 7

    .line 3125
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 3126
    if-nez p2, :cond_d

    .line 3127
    const/4 p1, 0x0

    return-object p1

    .line 3129
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "The feature has not been requested"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3133
    :cond_15
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz p2, :cond_1c

    array-length v0, p2

    if-gt v0, p1, :cond_2a

    .line 3134
    :cond_1c
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3135
    if-eqz p2, :cond_27

    .line 3136
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3138
    :cond_27
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-object p2, v0

    .line 3141
    :cond_2a
    aget-object v0, p2, p1

    .line 3142
    if-nez v0, :cond_39

    .line 3143
    if-eqz p3, :cond_31

    .line 3144
    goto :goto_36

    .line 3145
    :cond_31
    new-instance p3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-direct {p3, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    :goto_36
    aput-object p3, p2, p1

    move-object v0, p3

    .line 3147
    :cond_39
    return-object v0
.end method

.method private blacklist getRightIconView()Landroid/widget/ImageView;
    .registers 2

    .line 3274
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 3275
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0

    .line 3277
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 3278
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3280
    :cond_e
    const v0, 0x10204e4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private blacklist getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .registers 5

    .line 3051
    if-eq p1, p2, :cond_3

    .line 3052
    return-object p1

    .line 3054
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 3055
    nop

    .line 3056
    if-eq p1, v0, :cond_2d

    const/high16 p3, 0x10f0000

    if-eq p1, p3, :cond_2d

    .line 3057
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p2

    .line 3058
    invoke-virtual {p2, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p2

    .line 3059
    instance-of p1, p2, Landroid/transition/TransitionSet;

    if-eqz p1, :cond_2d

    move-object p1, p2

    check-cast p1, Landroid/transition/TransitionSet;

    .line 3060
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result p1

    if-nez p1, :cond_2d

    .line 3061
    const/4 p2, 0x0

    .line 3064
    :cond_2d
    return-object p2
.end method

.method private blacklist getViewRootImpl()Landroid/view/ViewRootImpl;
    .registers 3

    .line 1981
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1982
    if-eqz v0, :cond_7

    .line 1983
    return-object v0

    .line 1985
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "view not added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getViewRootImplOrNull()Landroid/view/ViewRootImpl;
    .registers 2

    .line 1989
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-nez v0, :cond_6

    .line 1990
    const/4 v0, 0x0

    return-object v0

    .line 1992
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 7

    .line 1903
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1904
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1905
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1906
    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x4

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    .line 1908
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    .line 1909
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1910
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1912
    :cond_27
    and-int/lit8 p2, v0, 0x4

    if-eqz p2, :cond_39

    if-eqz p1, :cond_39

    .line 1913
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p2

    if-nez p2, :cond_39

    .line 1914
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1915
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1917
    :cond_39
    return-void
.end method

.method private blacklist installDecor()V
    .registers 9

    .line 2915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 2916
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    if-nez v1, :cond_2b

    .line 2917
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 2918
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/high16 v3, 0x40000

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->setDescendantFocusability(I)V

    .line 2919
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->setIsRootNamespace(Z)V

    .line 2920
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v1, :cond_30

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    if-eqz v1, :cond_30

    .line 2921
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_30

    .line 2924
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 2926
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_21d

    .line 2927
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 2930
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->makeFrameworkOptionalFitsSystemWindows()V

    .line 2932
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const v3, 0x10202cc

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DecorContentParent;

    .line 2935
    const/16 v3, 0xd

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_fb

    .line 2936
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2937
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 2938
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_6d

    .line 2939
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v6}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 2942
    :cond_6d
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 2943
    move v6, v0

    :goto_72
    if-ge v6, v3, :cond_81

    .line 2944
    shl-int v7, v2, v6

    and-int/2addr v7, v1

    if-eqz v7, :cond_7e

    .line 2945
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7, v6}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 2943
    :cond_7e
    add-int/lit8 v6, v6, 0x1

    goto :goto_72

    .line 2949
    :cond_81
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v6, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    invoke-interface {v1, v6}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 2951
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v1, v2

    if-nez v1, :cond_c3

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2952
    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v1

    if-nez v1, :cond_9a

    goto :goto_c3

    .line 2954
    :cond_9a
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v1, v2

    if-nez v1, :cond_ca

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-nez v1, :cond_ca

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2955
    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v1

    if-nez v1, :cond_ca

    .line 2956
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2957
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2956
    invoke-interface {v1, v6}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2958
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_ca

    .line 2953
    :cond_c3
    :goto_c3
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v6, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    invoke-interface {v1, v6}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 2960
    :cond_ca
    :goto_ca
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_dc

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2961
    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v1

    if-nez v1, :cond_e3

    .line 2962
    :cond_dc
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v6, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    invoke-interface {v1, v6}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 2970
    :cond_e3
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 2971
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_fa

    if-eqz v1, :cond_f3

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_fa

    :cond_f3
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-nez v1, :cond_fa

    .line 2972
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 2974
    :cond_fa
    goto :goto_131

    .line 2975
    :cond_fb
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 2976
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_131

    .line 2977
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_12a

    .line 2978
    const v1, 0x10205ab

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2979
    if-eqz v1, :cond_11f

    .line 2980
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_124

    .line 2982
    :cond_11f
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2984
    :goto_124
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2985
    goto :goto_131

    .line 2986
    :cond_12a
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2991
    :cond_131
    :goto_131
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_144

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_144

    .line 2992
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V

    .line 2997
    :cond_144
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_21d

    .line 2998
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    if-nez v1, :cond_172

    .line 2999
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3002
    if-eqz v0, :cond_16b

    .line 3003
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    .line 3004
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v3}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 3006
    goto :goto_172

    .line 3007
    :cond_16b
    new-instance v0, Landroid/transition/TransitionManager;

    invoke-direct {v0}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 3011
    :cond_172
    :goto_172
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v5, v1}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3013
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v3, 0x27

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3015
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    const/16 v1, 0x1c

    invoke-direct {p0, v0, v5, v1}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3017
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v3, 0x28

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3019
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    const/16 v1, 0x1d

    invoke-direct {p0, v0, v5, v1}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3021
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v3, 0x29

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3024
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v5, v1}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3026
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v3, 0x2a

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3029
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_1de

    .line 3030
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3033
    :cond_1de
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_1f2

    .line 3034
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3037
    :cond_1f2
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gez v0, :cond_209

    .line 3038
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x24

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3042
    :cond_209
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_21d

    .line 3043
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3048
    :cond_21d
    return-void
.end method

.method private blacklist isActivePhoneCallOngoing()Z
    .registers 3

    .line 2115
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static blacklist isEdgeToEdgeEnforced(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z
    .registers 5

    .line 461
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->isOptingOutEdgeToEdgeEnforcement(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z

    move-result p2

    if-nez p2, :cond_21

    iget p2, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v0, Lcom/android/internal/policy/PhoneWindow;->ENFORCE_EDGE_TO_EDGE_SDK_VERSION:I

    if-ge p2, v0, :cond_1f

    const-wide/32 v0, 0x1273cab3

    if-eqz p1, :cond_18

    .line 465
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_1f

    :cond_18
    nop

    .line 467
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    .line 461
    :goto_22
    return p0
.end method

.method private blacklist isNotInstantAppAndKeyguardRestricted()Z
    .registers 2

    .line 2256
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2257
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2256
    :goto_1b
    return v0
.end method

.method public static blacklist isOptOutEdgeToEdgeEnabled(Landroid/content/pm/ApplicationInfo;Z)Z
    .registers 4

    .line 475
    const-wide/32 v0, 0x1685bfe5

    if-eqz p1, :cond_a

    .line 477
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p0

    goto :goto_e

    .line 479
    :cond_a
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    move-result p0

    .line 480
    :goto_e
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist isOptingOutEdgeToEdgeEnforcement(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z
    .registers 3

    .line 493
    invoke-static {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->isOptOutEdgeToEdgeEnabled(Landroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_10

    const/16 p0, 0x3f

    invoke-virtual {p2, p0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p1, 0x1

    :cond_10
    return p1
.end method

.method private blacklist isTvUserSetupComplete()Z
    .registers 6

    .line 3328
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 3330
    :goto_15
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tv_user_setup_complete"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_26

    move v2, v1

    :cond_26
    and-int/2addr v0, v2

    .line 3332
    return v0
.end method

.method private synthetic blacklist lambda$setMediaController$1(I)V
    .registers 2

    .line 3394
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/util/Pair;
    .registers 3

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    and-int/lit16 p0, p0, 0x600

    if-eqz p0, :cond_10

    .line 161
    new-instance p0, Landroid/util/Pair;

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 163
    :cond_10
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    .line 164
    new-instance v0, Landroid/util/Pair;

    .line 165
    invoke-virtual {p1, p0}, Landroid/view/WindowInsets;->inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    return-object v0
.end method

.method private blacklist launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .registers 6

    .line 3342
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 3343
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isTvUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_18

    .line 3345
    return v1

    .line 3348
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3349
    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_68

    .line 3352
    :cond_25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 3353
    nop

    .line 3354
    if-eqz v1, :cond_36

    .line 3355
    new-instance v2, Landroid/view/SearchEvent;

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    goto :goto_37

    .line 3354
    :cond_36
    const/4 v2, 0x0

    .line 3358
    :goto_37
    :try_start_37
    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v1
    :try_end_3b
    .catch Ljava/lang/AbstractMethodError; {:try_start_37 .. :try_end_3b} :catch_3c

    .line 3363
    goto :goto_69

    .line 3359
    :catch_3c
    move-exception v1

    .line 3360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/view/Window$Callback;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not implement method onSearchRequested(SearchEvent); fa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhoneWindow"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3362
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v1

    goto :goto_69

    .line 3350
    :cond_68
    :goto_68
    nop

    .line 3365
    :goto_69
    if-nez v1, :cond_ab

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x4

    if-ne v0, v2, :cond_ab

    .line 3368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3369
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3370
    const-string v1, "android.intent.extra.TIME"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3371
    const-string p1, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3372
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "search"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    .line 3373
    invoke-virtual {p1, v0}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    .line 3374
    return v1

    .line 3376
    :cond_ab
    return v1
.end method

.method private blacklist loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 3069
    nop

    .line 3070
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 3069
    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return-object p1

    .line 3071
    :catch_13
    move-exception v1

    .line 3072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PhoneWindow"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    return-object v0
.end method

.method private blacklist openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 20

    .line 936
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_145

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_145

    .line 942
    :cond_10
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3e

    .line 943
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 944
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 945
    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2b

    move v5, v4

    goto :goto_2c

    :cond_2b
    move v5, v3

    .line 947
    :goto_2c
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v2, v6, :cond_38

    move v2, v4

    goto :goto_39

    :cond_38
    move v2, v3

    .line 950
    :goto_39
    if-eqz v5, :cond_3e

    if-eqz v2, :cond_3e

    .line 951
    return-void

    .line 955
    :cond_3e
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 956
    if-eqz v2, :cond_52

    iget v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 958
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 959
    return-void

    .line 962
    :cond_52
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 963
    if-nez v2, :cond_59

    .line 964
    return-void

    .line 968
    :cond_59
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 969
    return-void

    .line 972
    :cond_60
    nop

    .line 973
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-eqz v5, :cond_8b

    iget-boolean v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v5, :cond_6c

    goto :goto_8b

    .line 1019
    :cond_6c
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v5

    if-nez v5, :cond_75

    .line 1020
    move v9, v7

    goto/16 :goto_109

    .line 1021
    :cond_75
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v5, :cond_88

    .line 1024
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1025
    if-eqz v5, :cond_88

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v7, :cond_88

    .line 1026
    move v9, v7

    goto/16 :goto_109

    .line 1030
    :cond_88
    move v9, v6

    goto/16 :goto_109

    .line 974
    :cond_8b
    :goto_8b
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v5, :cond_9a

    .line 976
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v5

    if-eqz v5, :cond_99

    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v5, :cond_ab

    .line 977
    :cond_99
    return-void

    .line 978
    :cond_9a
    iget-boolean v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v5, :cond_ab

    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_ab

    .line 980
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->removeAllViews()V

    .line 984
    :cond_ab
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v5

    if-eqz v5, :cond_144

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v5

    if-nez v5, :cond_b9

    goto/16 :goto_144

    .line 988
    :cond_b9
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 989
    if-nez v5, :cond_c6

    .line 990
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 994
    :cond_c6
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v8, v7, :cond_cd

    .line 997
    iget v6, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 998
    goto :goto_d4

    .line 1001
    :cond_cd
    iget v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    .line 1003
    :goto_d4
    iget-object v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1006
    iget-object v6, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 1007
    if-eqz v6, :cond_f4

    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_f4

    .line 1008
    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1010
    :cond_f4
    iget-object v6, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget-object v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v6, v8, v5}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_108

    .line 1017
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1019
    :cond_108
    move v9, v7

    .line 1030
    :goto_109
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v5

    if-nez v5, :cond_110

    .line 1033
    return-void

    .line 1036
    :cond_110
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1038
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    iget v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    iget v12, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget v15, v3, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    const/4 v10, -0x2

    const/16 v13, 0x3eb

    const/high16 v14, 0x820000

    invoke-direct/range {v8 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1045
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v3, :cond_134

    .line 1046
    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1047
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    goto :goto_138

    .line 1049
    :cond_134
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1052
    :goto_138
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1054
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v2, v0, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1057
    return-void

    .line 985
    :cond_144
    :goto_144
    return-void

    .line 937
    :cond_145
    :goto_145
    return-void
.end method

.method private blacklist reopenMenu(Z)V
    .registers 7

    .line 1415
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1416
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1417
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1418
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1419
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_4e

    if-nez p1, :cond_35

    goto :goto_4e

    .line 1439
    :cond_35
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1440
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    .line 1441
    if-eqz p1, :cond_8e

    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_8e

    .line 1442
    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_8e

    .line 1420
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_8e

    .line 1422
    iget-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz p1, :cond_6b

    iget p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_6b

    .line 1424
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1425
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1428
    :cond_6b
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    .line 1432
    if-eqz p1, :cond_8d

    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_8d

    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v1, :cond_8d

    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1433
    invoke-interface {v0, v2, v1, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 1434
    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1435
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1437
    :cond_8d
    nop

    .line 1445
    :cond_8e
    :goto_8e
    return-void

    .line 1448
    :cond_8f
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1450
    if-nez v0, :cond_96

    .line 1451
    return-void

    .line 1455
    :cond_96
    if-eqz p1, :cond_a0

    iget-boolean p1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez p1, :cond_9e

    move p1, v1

    goto :goto_a2

    :cond_9e
    move p1, v2

    goto :goto_a2

    :cond_a0
    iget-boolean p1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1457
    :goto_a2
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1458
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1461
    iput-boolean p1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1463
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1464
    return-void
.end method

.method private blacklist restorePanelState(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2397
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_23

    .line 2398
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2399
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2400
    if-nez v2, :cond_14

    .line 2402
    goto :goto_20

    .line 2405
    :cond_14
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2406
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 2397
    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2413
    :cond_23
    return-void
.end method

.method private blacklist savePanelState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2377
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2378
    if-nez v0, :cond_5

    .line 2379
    return-void

    .line 2382
    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_1a

    .line 2383
    aget-object v2, v0, v1

    if-eqz v2, :cond_17

    .line 2384
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2382
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2387
    :cond_1a
    return-void
.end method

.method public static blacklist sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 3999
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 4001
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 4003
    goto :goto_f

    .line 4002
    :catch_e
    move-exception p0

    .line 4005
    :cond_f
    :goto_f
    return-void
.end method

.method private blacklist showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 7

    .line 1890
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1891
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_15

    if-eqz p2, :cond_15

    .line 1892
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_15

    .line 1893
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1896
    :cond_15
    and-int/lit8 p2, v0, 0x4

    if-eqz p2, :cond_26

    if-eqz p1, :cond_26

    .line 1897
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_26

    .line 1898
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1900
    :cond_26
    return-void
.end method

.method private blacklist transitionTo(Landroid/transition/Scene;)V
    .registers 3

    .line 654
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_8

    .line 655
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    goto :goto_d

    .line 657
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    .line 659
    :goto_d
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    .line 660
    return-void
.end method

.method private blacklist updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .registers 7

    .line 3171
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 3172
    return-void

    .line 3175
    :cond_5
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 3177
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_11

    if-nez p3, :cond_11

    .line 3178
    return-void

    .line 3181
    :cond_11
    nop

    .line 3182
    if-eqz p2, :cond_1f

    .line 3183
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3184
    if-nez v1, :cond_1a

    .line 3185
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 3186
    :cond_1a
    if-nez v1, :cond_20

    .line 3187
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    goto :goto_20

    .line 3182
    :cond_1f
    const/4 v1, 0x0

    .line 3189
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_3d

    .line 3190
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_54

    .line 3191
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    move-result p2

    if-nez p2, :cond_35

    if-eqz p3, :cond_54

    .line 3192
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_54

    .line 3195
    :cond_3d
    if-eqz p2, :cond_54

    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne p3, v1, :cond_49

    iget p3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq p3, v0, :cond_54

    .line 3198
    :cond_49
    iput-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 3199
    iget p3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    iput p3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3200
    iget p2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    .line 3202
    :cond_54
    :goto_54
    return-void
.end method

.method private blacklist updateInt(IIZ)V
    .registers 6

    .line 3208
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 3209
    return-void

    .line 3212
    :cond_5
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 3214
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_11

    if-nez p3, :cond_11

    .line 3215
    return-void

    .line 3218
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result p3

    and-int/2addr p3, v0

    if-nez p3, :cond_26

    .line 3219
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_29

    .line 3220
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_29

    .line 3223
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onIntChanged(II)V

    .line 3225
    :cond_29
    :goto_29
    return-void
.end method

.method private blacklist updateProgressBars(I)V
    .registers 12

    .line 1813
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v1

    .line 1814
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1816
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v3

    .line 1817
    const/4 v4, -0x1

    const-string v5, "Circular progress bar not located in current window decor"

    const/16 v6, 0x2710

    const/4 v7, 0x0

    const-string v8, "Horizontal progress bar not located in current window decor"

    const-string v9, "PhoneWindow"

    if-ne p1, v4, :cond_46

    .line 1818
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_36

    .line 1819
    if-eqz v2, :cond_33

    .line 1820
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 1821
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_2e

    if-ge p1, v6, :cond_2c

    goto :goto_2e

    .line 1822
    :cond_2c
    const/4 p1, 0x4

    goto :goto_2f

    :cond_2e
    :goto_2e
    move p1, v7

    .line 1823
    :goto_2f
    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1824
    goto :goto_36

    .line 1825
    :cond_33
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_36
    :goto_36
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_ae

    .line 1829
    if-eqz v1, :cond_41

    .line 1830
    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_ae

    .line 1832
    :cond_41
    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 1835
    :cond_46
    const/4 v4, -0x2

    if-ne p1, v4, :cond_66

    .line 1836
    and-int/lit8 p1, v3, 0x4

    const/16 v0, 0x8

    if-eqz p1, :cond_58

    .line 1837
    if-eqz v2, :cond_55

    .line 1838
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_58

    .line 1840
    :cond_55
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_58
    :goto_58
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_ae

    .line 1844
    if-eqz v1, :cond_62

    .line 1845
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_ae

    .line 1847
    :cond_62
    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 1850
    :cond_66
    const/4 v3, -0x3

    if-ne p1, v3, :cond_73

    .line 1851
    if-eqz v2, :cond_6f

    .line 1852
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_ae

    .line 1854
    :cond_6f
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 1856
    :cond_73
    const/4 v0, -0x4

    if-ne p1, v0, :cond_80

    .line 1857
    if-eqz v2, :cond_7c

    .line 1858
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_ae

    .line 1860
    :cond_7c
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 1862
    :cond_80
    if-ltz p1, :cond_99

    if-gt p1, v6, :cond_99

    .line 1866
    if-eqz v2, :cond_8c

    .line 1867
    add-int/lit8 v0, p1, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_8f

    .line 1869
    :cond_8c
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :goto_8f
    if-ge p1, v6, :cond_95

    .line 1873
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_ae

    .line 1875
    :cond_95
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_ae

    .line 1877
    :cond_99
    const/16 v0, 0x4e20

    if-gt v0, p1, :cond_ae

    const/16 v3, 0x7530

    if-gt p1, v3, :cond_ae

    .line 1878
    if-eqz v2, :cond_a8

    .line 1879
    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_ab

    .line 1881
    :cond_a8
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :goto_ab
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 1887
    :cond_ae
    :goto_ae
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    .line 627
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 629
    :cond_7
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 631
    const-string v0, "PhoneWindow"

    const-string v1, "addContentView does not support content transitions"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 635
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    .line 636
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_38

    .line 637
    if-eqz p1, :cond_2f

    .line 638
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 640
    :cond_2f
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz p1, :cond_38

    .line 641
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->notifyContentChanged()V

    .line 644
    :cond_38
    return-void
.end method

.method public blacklist alwaysReadCloseOnTouchAttr()V
    .registers 2

    .line 2911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 2912
    return-void
.end method

.method blacklist checkCloseActionMenu(Landroid/view/Menu;)V
    .registers 4

    .line 1127
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v0, :cond_5

    .line 1128
    return-void

    .line 1131
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1132
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1133
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1134
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1135
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1137
    :cond_1e
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1138
    return-void
.end method

.method public blacklist clearContentView()V
    .registers 2

    .line 648
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->clearContentView()V

    .line 651
    :cond_9
    return-void
.end method

.method public final whitelist closeAllPanels()V
    .registers 6

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1293
    if-nez v0, :cond_7

    .line 1294
    return-void

    .line 1297
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1298
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    array-length v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    .line 1299
    :goto_f
    nop

    :goto_10
    if-ge v1, v2, :cond_1d

    .line 1300
    aget-object v3, v0, v1

    .line 1301
    if-eqz v3, :cond_1a

    .line 1302
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1299
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1306
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    .line 1307
    return-void
.end method

.method public final whitelist closePanel(I)V
    .registers 3

    .line 1061
    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1062
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1063
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1064
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    goto :goto_31

    .line 1065
    :cond_22
    const/4 v0, 0x6

    if-ne p1, v0, :cond_29

    .line 1066
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    goto :goto_31

    .line 1068
    :cond_29
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1070
    :goto_31
    return-void
.end method

.method public final blacklist closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .registers 6

    .line 1085
    if-eqz p2, :cond_18

    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1086
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1087
    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 1088
    return-void

    .line 1091
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1092
    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_3c

    .line 1093
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_35

    .line 1094
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 1096
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v0, :cond_35

    .line 1097
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 1101
    :cond_35
    if-eqz p2, :cond_3c

    .line 1102
    iget p2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, p2, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 1106
    :cond_3c
    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1107
    iput-boolean p2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1108
    iput-boolean p2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1111
    iput-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1113
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v0, :cond_4e

    .line 1116
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1117
    iput-boolean p2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1120
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-ne v0, p1, :cond_56

    .line 1121
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1122
    iput p2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1124
    :cond_56
    return-void
.end method

.method public blacklist decorFitsSystemWindows()Z
    .registers 2

    .line 4161
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    return v0
.end method

.method protected blacklist dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 3239
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 3240
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_e

    .line 3241
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3243
    :cond_e
    return-void
.end method

.method blacklist doInvalidatePanelMenu(I)V
    .registers 6

    .line 1168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1169
    if-nez v1, :cond_8

    .line 1170
    return-void

    .line 1172
    :cond_8
    nop

    .line 1173
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_29

    .line 1174
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1175
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1176
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1f

    .line 1177
    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1180
    :cond_1f
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1181
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 1183
    :cond_29
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 1184
    iput-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1187
    const/16 v1, 0x8

    if-eq p1, v1, :cond_34

    if-nez p1, :cond_44

    :cond_34
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz p1, :cond_44

    .line 1189
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    .line 1190
    if-eqz p1, :cond_44

    .line 1191
    iput-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1195
    :cond_44
    return-void
.end method

.method blacklist doPendingInvalidatePanelMenu()V
    .registers 3

    .line 1161
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_10

    .line 1162
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1163
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1165
    :cond_10
    return-void
.end method

.method public blacklist findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 7

    .line 1388
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1389
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    array-length v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    .line 1390
    :goto_8
    nop

    :goto_9
    if-ge v1, v2, :cond_17

    .line 1391
    aget-object v3, v0, v1

    .line 1392
    if-eqz v3, :cond_14

    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_14

    .line 1393
    return-object v3

    .line 1390
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1396
    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method protected blacklist generateDecor(I)Lcom/android/internal/policy/DecorView;
    .registers 5

    .line 2504
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    if-eqz v0, :cond_24

    .line 2505
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2506
    if-nez v0, :cond_13

    .line 2507
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_23

    .line 2509
    :cond_13
    new-instance v1, Lcom/android/internal/policy/DecorContext;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/policy/DecorContext;-><init>(Landroid/content/Context;Lcom/android/internal/policy/PhoneWindow;)V

    .line 2510
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    .line 2511
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 2514
    :cond_22
    move-object v0, v1

    :goto_23
    goto :goto_28

    .line 2515
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2517
    :goto_28
    new-instance v1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v0, p1, p0, v2}, Lcom/android/internal/policy/DecorView;-><init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-object v1
.end method

.method protected blacklist generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;
    .registers 20

    .line 2523
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2524
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2525
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2537
    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Lcom/android/internal/policy/PhoneWindow;->isEdgeToEdgeEnforced(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    .line 2538
    iget-boolean v5, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2e

    .line 2539
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v7, v7, 0x800

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2540
    iput-boolean v6, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 2541
    iput v6, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 2542
    iput v6, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 2545
    :cond_2e
    const-wide/32 v7, 0x13d44965

    invoke-static {v7, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 2546
    invoke-static {v3, v4, v1}, Lcom/android/internal/policy/PhoneWindow;->isOptingOutEdgeToEdgeEnforcement(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 2547
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x40000

    or-int/2addr v5, v7

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2550
    :cond_48
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    .line 2554
    iget-boolean v5, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/16 v7, 0x9

    if-eqz v5, :cond_65

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow;->mAllowFloatingWindowsFillScreen:Ljava/lang/Boolean;

    .line 2555
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2556
    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_65

    move v5, v4

    goto :goto_66

    :cond_65
    move v5, v6

    .line 2558
    :goto_66
    nop

    .line 2559
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v8

    not-int v8, v8

    const v9, 0x10100

    and-int/2addr v8, v9

    .line 2560
    iget-boolean v10, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v10, :cond_7e

    if-nez v5, :cond_7e

    .line 2561
    const/4 v5, -0x2

    invoke-virtual {v0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2562
    invoke-virtual {v0, v6, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    goto :goto_87

    .line 2564
    :cond_7e
    invoke-virtual {v0, v9, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2565
    invoke-virtual {v2, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 2566
    invoke-virtual {v2, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 2569
    :goto_87
    const/4 v5, 0x3

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_94

    .line 2570
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    goto :goto_9f

    .line 2571
    :cond_94
    const/16 v8, 0xf

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 2573
    invoke-virtual {v0, v9}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2576
    :cond_9f
    :goto_9f
    const/16 v8, 0x11

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 2577
    invoke-virtual {v0, v7}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2580
    :cond_aa
    const/16 v8, 0x10

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 2581
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2584
    :cond_b7
    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 2585
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v7

    not-int v7, v7

    const/16 v10, 0x400

    and-int/2addr v7, v10

    invoke-virtual {v0, v10, v7}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2588
    :cond_c8
    const/16 v7, 0x17

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 2590
    nop

    .line 2591
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v7

    not-int v7, v7

    const/high16 v10, 0x4000000

    and-int/2addr v7, v10

    .line 2590
    invoke-virtual {v0, v10, v7}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2594
    :cond_dc
    const/16 v7, 0x18

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 2596
    nop

    .line 2597
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/high16 v11, 0x8000000

    and-int/2addr v10, v11

    .line 2596
    invoke-virtual {v0, v11, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2600
    :cond_f0
    const/16 v10, 0xe

    invoke-virtual {v1, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_103

    .line 2601
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/high16 v11, 0x100000

    and-int/2addr v10, v11

    invoke-virtual {v0, v11, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2604
    :cond_103
    nop

    .line 2605
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_114

    move v10, v4

    goto :goto_115

    :cond_114
    move v10, v6

    .line 2604
    :goto_115
    const/16 v12, 0x12

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_128

    .line 2607
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/high16 v12, 0x800000

    and-int/2addr v10, v12

    invoke-virtual {v0, v12, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2610
    :cond_128
    const/16 v10, 0x13

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2611
    const/16 v10, 0x14

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2614
    const/16 v10, 0x44

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_14e

    .line 2615
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v12, :cond_149

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iput-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 2616
    :cond_149
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2619
    :cond_14e
    const/16 v10, 0x45

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_166

    .line 2620
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v12, :cond_161

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iput-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2621
    :cond_161
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2624
    :cond_166
    const/16 v10, 0x42

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_17e

    .line 2625
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v12, :cond_179

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iput-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2626
    :cond_179
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2629
    :cond_17e
    const/16 v10, 0x43

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_198

    .line 2630
    iget-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v10, :cond_191

    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    iput-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 2631
    :cond_191
    const/16 v10, 0x43

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2634
    :cond_198
    const/16 v10, 0x19

    invoke-virtual {v1, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_1a5

    .line 2635
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2637
    :cond_1a5
    const/16 v10, 0x2c

    invoke-virtual {v1, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_1b2

    .line 2638
    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2640
    :cond_1b2
    const/16 v10, 0x40

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_1c6

    .line 2641
    sget-boolean v12, Lcom/android/internal/policy/PhoneWindow;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v12, :cond_1c6

    .line 2642
    nop

    .line 2643
    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 2642
    invoke-virtual {v0, v12}, Lcom/android/internal/policy/PhoneWindow;->setFrameRatePowerSavingsBalanced(Z)V

    .line 2648
    :cond_1c6
    const/4 v12, 0x5

    invoke-virtual {v1, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    .line 2650
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 2651
    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2652
    const/16 v14, 0x15

    if-ge v13, v14, :cond_1dd

    move v14, v4

    goto :goto_1de

    :cond_1dd
    move v14, v6

    .line 2653
    :goto_1de
    const/16 v15, 0x1d

    if-ge v13, v15, :cond_1e4

    move v13, v4

    goto :goto_1e5

    :cond_1e4
    move v13, v6

    .line 2655
    :goto_1e5
    iget-boolean v15, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    if-nez v15, :cond_1fa

    iget-boolean v15, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-nez v15, :cond_1fa

    .line 2656
    const/16 v15, 0x22

    move/from16 v16, v3

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v15, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    goto :goto_1fc

    .line 2655
    :cond_1fa
    move/from16 v16, v3

    .line 2658
    :goto_1fc
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v3, :cond_247

    .line 2659
    const v3, 0x10602fc

    invoke-virtual {v12, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 2660
    const v15, 0x10602fd

    invoke-virtual {v12, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    .line 2661
    const/16 v8, 0x23

    invoke-virtual {v1, v8, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 2663
    if-eq v8, v15, :cond_218

    move v15, v4

    goto :goto_219

    :cond_218
    move v15, v6

    .line 2665
    :goto_219
    nop

    .line 2668
    if-nez v15, :cond_230

    move/from16 v17, v10

    iget-boolean v10, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-nez v10, :cond_232

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x1110211

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_232

    .line 2670
    goto :goto_233

    .line 2668
    :cond_230
    move/from16 v17, v10

    .line 2671
    :cond_232
    move v3, v8

    :goto_233
    iput v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 2673
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    or-int/2addr v3, v15

    iput-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    .line 2675
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-nez v3, :cond_249

    .line 2676
    const/16 v3, 0x31

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    goto :goto_249

    .line 2658
    :cond_247
    move/from16 v17, v10

    .line 2680
    :cond_249
    :goto_249
    if-nez v13, :cond_25b

    .line 2681
    const/16 v3, 0x33

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2683
    const/16 v3, 0x34

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2689
    :cond_25b
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v3, :cond_289

    .line 2690
    if-nez v14, :cond_275

    const/16 v3, 0x21

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_275

    .line 2693
    nop

    .line 2694
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v3

    not-int v3, v3

    const/high16 v8, -0x80000000

    and-int/2addr v3, v8

    .line 2693
    invoke-virtual {v0, v8, v3}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2696
    :cond_275
    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v3, v3, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v3, :cond_283

    .line 2697
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v8, 0x8000

    or-int/2addr v3, v8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2699
    :cond_283
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2701
    :cond_289
    const/16 v3, 0x3e

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_297

    .line 2704
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2707
    :cond_297
    const/16 v3, 0x2d

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 2708
    const/16 v8, 0x30

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 2712
    nop

    .line 2713
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v10

    and-int/lit16 v10, v10, -0x2011

    .line 2716
    if-eqz v3, :cond_2af

    const/16 v12, 0x2000

    goto :goto_2b0

    :cond_2af
    move v12, v6

    :goto_2b0
    or-int/2addr v10, v12

    .line 2717
    if-eqz v8, :cond_2b6

    const/16 v12, 0x10

    goto :goto_2b7

    :cond_2b6
    move v12, v6

    :goto_2b7
    or-int/2addr v10, v12

    .line 2712
    move-object/from16 v12, p1

    invoke-virtual {v12, v10}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 2719
    invoke-virtual {v12}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v10

    .line 2720
    if-eqz v3, :cond_2c5

    move v3, v9

    goto :goto_2c6

    :cond_2c5
    move v3, v6

    .line 2721
    :goto_2c6
    if-eqz v8, :cond_2cb

    const/16 v8, 0x10

    goto :goto_2cc

    :cond_2cb
    move v8, v6

    :goto_2cc
    or-int/2addr v3, v8

    .line 2719
    invoke-interface {v10, v3, v7}, Landroid/view/WindowInsetsController;->setSystemBarsAppearanceFromResource(II)V

    .line 2724
    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_301

    .line 2725
    const/4 v7, -0x1

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 2726
    if-ltz v7, :cond_2e4

    if-gt v7, v5, :cond_2e4

    .line 2731
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_301

    .line 2728
    :cond_2e4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown windowLayoutInDisplayCutoutMode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2729
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2734
    :cond_301
    :goto_301
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    if-nez v3, :cond_311

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v3, v11, :cond_31c

    .line 2736
    :cond_311
    const/16 v3, 0x15

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_31c

    .line 2739
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 2743
    :cond_31c
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    move-result v3

    if-nez v3, :cond_32c

    .line 2744
    const/16 v3, 0xd

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2749
    :cond_32c
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_34f

    .line 2752
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-nez v3, :cond_341

    .line 2753
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2755
    :cond_341
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    move-result v3

    if-nez v3, :cond_34f

    .line 2756
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2761
    :cond_34f
    const/16 v3, 0x36

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_36e

    .line 2762
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_365

    .line 2763
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2766
    :cond_365
    const/16 v3, 0x35

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    .line 2770
    :cond_36e
    const/16 v3, 0x37

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundBlurRadius(I)V

    .line 2774
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-nez v3, :cond_381

    .line 2775
    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2781
    :cond_381
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_3ce

    .line 2782
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3a1

    .line 2784
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-nez v2, :cond_395

    .line 2785
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 2788
    :cond_395
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3a1

    .line 2789
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2792
    :cond_3a1
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3b2

    .line 2793
    nop

    .line 2794
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2796
    :cond_3b2
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    if-eqz v2, :cond_3bf

    .line 2797
    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 2799
    :cond_3bf
    const/16 v2, 0x26

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 2800
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 2806
    :cond_3ce
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    .line 2808
    and-int/lit8 v3, v2, 0x18

    if-eqz v3, :cond_3f8

    .line 2809
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v1, :cond_3f0

    .line 2810
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2811
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x112003b

    invoke-virtual {v3, v5, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2813
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 2814
    goto :goto_3f3

    .line 2815
    :cond_3f0
    const v1, 0x109013c

    .line 2818
    :goto_3f3
    invoke-virtual {v0, v9}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_464

    .line 2820
    :cond_3f8
    and-int/lit8 v3, v2, 0x24

    if-eqz v3, :cond_404

    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_404

    .line 2824
    const v1, 0x1090138

    goto :goto_464

    .line 2826
    :cond_404
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_429

    .line 2829
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v1, :cond_422

    .line 2830
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2831
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x1120038

    invoke-virtual {v3, v5, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2833
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 2834
    goto :goto_425

    .line 2835
    :cond_422
    const v1, 0x1090137

    .line 2838
    :goto_425
    invoke-virtual {v0, v9}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto :goto_464

    .line 2839
    :cond_429
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_459

    .line 2842
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v3, :cond_447

    .line 2843
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2844
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x112003a

    invoke-virtual {v3, v5, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2846
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 2847
    goto :goto_464

    :cond_447
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_455

    .line 2848
    const/16 v3, 0x41

    const v5, 0x1090136

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_464

    .line 2852
    :cond_455
    const v1, 0x109013b

    goto :goto_464

    .line 2855
    :cond_459
    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_461

    .line 2856
    const v1, 0x109013a

    goto :goto_464

    .line 2859
    :cond_461
    const v1, 0x1090139

    .line 2863
    :goto_464
    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 2864
    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v5, v1}, Lcom/android/internal/policy/DecorView;->onResourcesLoaded(Landroid/view/LayoutInflater;I)V

    .line 2866
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2867
    if-eqz v1, :cond_4d4

    .line 2871
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_488

    .line 2872
    invoke-direct {v0, v6}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 2873
    if-eqz v2, :cond_488

    .line 2874
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2880
    :cond_488
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_4ce

    .line 2881
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2884
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-eqz v2, :cond_4a4

    .line 2885
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_4a5

    .line 2887
    :cond_4a4
    const/4 v2, 0x0

    .line 2889
    :goto_4a5
    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 2891
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 2892
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 2894
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4c1

    .line 2895
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 2898
    :cond_4c1
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    if-nez v2, :cond_4c9

    .line 2899
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 2901
    :cond_4c9
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    .line 2904
    :cond_4ce
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 2906
    return-object v1

    .line 2868
    :cond_4d4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Window couldn\'t find content container view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAllowEnterTransitionOverlap()Z
    .registers 2

    .line 3499
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist getAllowReturnTransitionOverlap()Z
    .registers 2

    .line 3509
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0
.end method

.method blacklist getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .line 2128
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    .line 2129
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 2131
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .registers 2

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .registers 2

    .line 664
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist getDecorView()Landroid/view/View;
    .registers 2

    .line 2266
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    if-eqz v0, :cond_b

    .line 2267
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 2269
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public blacklist getElevation()F
    .registers 2

    .line 1629
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 3450
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 3461
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getInsetsController()Landroid/view/WindowInsetsController;
    .registers 2

    .line 4136
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method blacklist getLocalFeaturesPrivate()I
    .registers 2

    .line 3983
    invoke-super {p0}, Landroid/view/Window;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method public whitelist getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .line 3405
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 4213
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getNavigationBarColor()I
    .registers 2

    .line 4033
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_6

    .line 4034
    const/4 v0, 0x0

    return v0

    .line 4036
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method public whitelist getNavigationBarDividerColor()I
    .registers 2

    .line 4074
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 2

    .line 4224
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    return-object v0
.end method

.method blacklist getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 4

    .line 3110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getReenterTransition()Landroid/transition/Transition;
    .registers 3

    .line 3466
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_d

    .line 3467
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3466
    :goto_d
    return-object v0
.end method

.method public whitelist getReturnTransition()Landroid/transition/Transition;
    .registers 3

    .line 3455
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_d

    .line 3456
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3455
    :goto_d
    return-object v0
.end method

.method public whitelist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .registers 2

    .line 4218
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSharedElementEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 3472
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getSharedElementExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 3483
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getSharedElementReenterTransition()Landroid/transition/Transition;
    .registers 3

    .line 3488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    .line 3489
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3488
    :goto_d
    return-object v0
.end method

.method public whitelist getSharedElementReturnTransition()Landroid/transition/Transition;
    .registers 3

    .line 3477
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    .line 3478
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3477
    :goto_d
    return-object v0
.end method

.method public whitelist getSharedElementsUseOverlay()Z
    .registers 2

    .line 3533
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public blacklist getStatusBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 4207
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getStatusBarBackgroundView()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getStatusBarColor()I
    .registers 2

    .line 4009
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public whitelist getSystemGestureExclusionRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 4147
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getRootSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransitionBackgroundFadeDuration()J
    .registers 5

    .line 3514
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    const-wide/16 v0, 0x12c

    goto :goto_d

    .line 3515
    :cond_b
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3514
    :goto_d
    return-wide v0
.end method

.method public whitelist getTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public whitelist getVolumeControlStream()I
    .registers 2

    .line 3386
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected blacklist initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 6

    .line 1580
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1581
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1582
    return v1

    .line 1585
    :cond_a
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 1586
    return v2

    .line 1589
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v0, :cond_1c

    .line 1590
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow-IA;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    .line 1593
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1594
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    goto :goto_37

    .line 1595
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .line 1597
    :goto_37
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1599
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_49

    .line 1601
    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .line 1602
    if-eqz v0, :cond_48

    .line 1603
    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 1605
    :cond_48
    return v1

    .line 1607
    :cond_49
    return v2
.end method

.method protected blacklist initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 7

    .line 1526
    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    .line 1527
    const/16 v0, 0x51

    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1528
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1529
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1531
    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1532
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_31

    .line 1533
    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1535
    :cond_31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1537
    const/4 p1, 0x1

    return p1
.end method

.method protected blacklist initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 9

    .line 1476
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1479
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_68

    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_68

    .line 1481
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1482
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1483
    const v4, 0x1010431

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1485
    nop

    .line 1486
    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    const v5, 0x1010397

    if-eqz v4, :cond_3e

    .line 1487
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1488
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1489
    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v6, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1490
    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_42

    .line 1493
    :cond_3e
    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    .line 1497
    :goto_42
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_58

    .line 1498
    if-nez v4, :cond_53

    .line 1499
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1500
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1502
    :cond_53
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1505
    :cond_58
    if-eqz v4, :cond_68

    .line 1506
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1507
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    .line 1511
    :cond_68
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1512
    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1513
    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1515
    return v2
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;)V
    .registers 3

    .line 1977
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1978
    return-void
.end method

.method public whitelist invalidatePanelMenu(I)V
    .registers 4

    .line 1152
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 1154
    iget-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_19

    .line 1155
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1156
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 1158
    :cond_19
    return-void
.end method

.method public whitelist isFloating()Z
    .registers 2

    .line 678
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public whitelist isNavigationBarContrastEnforced()Z
    .registers 2

    .line 4100
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    return v0
.end method

.method public whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 3164
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3165
    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_14

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method blacklist isShowingWallpaper()Z
    .registers 3

    .line 689
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isStatusBarContrastEnforced()Z
    .registers 2

    .line 4087
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    return v0
.end method

.method public blacklist isTranslucent()Z
    .registers 2

    .line 682
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    return v0
.end method

.method protected whitelist onActive()V
    .registers 1

    .line 2262
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 857
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez p1, :cond_46

    .line 858
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 859
    if-eqz v0, :cond_46

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_46

    .line 860
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_43

    .line 862
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 863
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_21

    .line 864
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 866
    :cond_21
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_2a

    .line 867
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 872
    :cond_2a
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 875
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 878
    iget-object p1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz p1, :cond_39

    .line 879
    iget-object p1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {p1, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 881
    :cond_39
    iget-object p1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz p1, :cond_42

    .line 882
    iget-object p1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 885
    :cond_42
    goto :goto_46

    .line 888
    :cond_43
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 892
    :cond_46
    :goto_46
    return-void
.end method

.method protected blacklist onDestroy()V
    .registers 3

    .line 2445
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-eqz v0, :cond_10

    .line 2446
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 2447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 2449
    :cond_10
    return-void
.end method

.method protected blacklist onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .registers 5

    .line 1758
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 1759
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object p1

    goto :goto_f

    .line 1760
    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_22

    .line 1761
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object p1

    .line 1766
    :goto_f
    if-eqz p2, :cond_1c

    .line 1767
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1768
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1769
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_21

    .line 1771
    :cond_1c
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1773
    :goto_21
    return-void

    .line 1763
    :cond_22
    return-void
.end method

.method protected blacklist onIntChanged(II)V
    .registers 4

    .line 1783
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    goto :goto_1b

    .line 1785
    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1e

    .line 1786
    const p1, 0x10205ab

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 1787
    if-eqz p1, :cond_1e

    .line 1788
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1e

    .line 1784
    :cond_1b
    :goto_1b
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    .line 1791
    :cond_1e
    :goto_1e
    return-void
.end method

.method protected blacklist onKeyDown(IILandroid/view/KeyEvent;)Z
    .registers 7

    .line 2053
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2057
    :goto_c
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_62

    goto :goto_61

    .line 2095
    :sswitch_12
    if-gez p1, :cond_15

    move p1, v1

    :cond_15
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    .line 2096
    return v2

    .line 2085
    :sswitch_19
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_2e

    .line 2086
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2087
    invoke-virtual {p2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p2

    .line 2086
    invoke-virtual {p1, p3, p2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 2088
    return v2

    .line 2091
    :cond_2e
    return v1

    .line 2063
    :sswitch_2f
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_47

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isActivePhoneCallOngoing()Z

    move-result p1

    if-nez p1, :cond_47

    .line 2064
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2065
    invoke-virtual {p2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p2

    .line 2064
    invoke-virtual {p1, p3, p2}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    goto :goto_50

    .line 2067
    :cond_47
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {p1, p3, p2}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2070
    :goto_50
    return v2

    .line 2100
    :sswitch_51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_58

    goto :goto_61

    .line 2101
    :cond_58
    if-gez p1, :cond_5b

    goto :goto_61

    .line 2103
    :cond_5b
    if-eqz v0, :cond_60

    .line 2104
    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2106
    :cond_60
    return v2

    .line 2111
    :goto_61
    return v1

    :sswitch_data_62
    .sparse-switch
        0x4 -> :sswitch_51
        0x18 -> :sswitch_2f
        0x19 -> :sswitch_2f
        0x4f -> :sswitch_19
        0x52 -> :sswitch_12
        0x55 -> :sswitch_19
        0x56 -> :sswitch_19
        0x57 -> :sswitch_19
        0x58 -> :sswitch_19
        0x59 -> :sswitch_19
        0x5a -> :sswitch_19
        0x5b -> :sswitch_19
        0x7e -> :sswitch_19
        0x7f -> :sswitch_19
        0x82 -> :sswitch_19
        0xa4 -> :sswitch_2f
    .end sparse-switch
.end method

.method public final blacklist onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1204
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1206
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 1208
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1210
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    .line 1211
    if-eqz p1, :cond_1c

    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_1c

    .line 1212
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1216
    :cond_1c
    return v2
.end method

.method protected blacklist onKeyUp(IILandroid/view/KeyEvent;)Z
    .registers 6

    .line 2150
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2151
    :goto_c
    if-eqz v0, :cond_11

    .line 2152
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 2157
    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_be

    goto/16 :goto_bd

    .line 2245
    :sswitch_18
    iget-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    if-eqz p1, :cond_29

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_29

    .line 2246
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$WindowControllerCallback;->enterPictureInPictureModeIfPossible()V

    .line 2248
    :cond_29
    return v1

    .line 2176
    :sswitch_2a
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    const/high16 p2, -0x80000000

    invoke-virtual {p1, p3, p2}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2178
    return v1

    .line 2231
    :sswitch_34
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isNotInstantAppAndKeyguardRestricted()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 2232
    goto/16 :goto_bd

    .line 2234
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0xf

    const/4 p2, 0x6

    if-ne p1, p2, :cond_51

    .line 2236
    goto/16 :goto_bd

    .line 2238
    :cond_51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_60

    .line 2239
    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    .line 2241
    :cond_60
    return v1

    .line 2203
    :sswitch_61
    if-gez p1, :cond_64

    move p1, v0

    :cond_64
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    .line 2205
    return v1

    .line 2193
    :sswitch_68
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_7d

    .line 2194
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2195
    invoke-virtual {p2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p2

    .line 2194
    invoke-virtual {p1, p3, p2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 2196
    return v1

    .line 2199
    :cond_7d
    return v0

    .line 2162
    :sswitch_7e
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_90

    .line 2163
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2164
    invoke-virtual {p2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p2

    .line 2163
    invoke-virtual {p1, p3, p2}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    goto :goto_99

    .line 2166
    :cond_90
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {p1, p3, p2}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2169
    :goto_99
    return v1

    .line 2209
    :sswitch_9a
    if-gez p1, :cond_9d

    goto :goto_bd

    .line 2210
    :cond_9d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p2

    if-eqz p2, :cond_bd

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    if-nez p2, :cond_bd

    .line 2211
    if-nez p1, :cond_b9

    .line 2212
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p2

    .line 2213
    if-eqz p2, :cond_b9

    iget-boolean p2, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz p2, :cond_b9

    .line 2216
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 2217
    return v1

    .line 2220
    :cond_b9
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2221
    return v1

    .line 2252
    :cond_bd
    :goto_bd
    return v0

    :sswitch_data_be
    .sparse-switch
        0x4 -> :sswitch_9a
        0x18 -> :sswitch_7e
        0x19 -> :sswitch_7e
        0x4f -> :sswitch_68
        0x52 -> :sswitch_61
        0x54 -> :sswitch_34
        0x55 -> :sswitch_68
        0x56 -> :sswitch_68
        0x57 -> :sswitch_68
        0x58 -> :sswitch_68
        0x59 -> :sswitch_68
        0x5a -> :sswitch_68
        0x5b -> :sswitch_68
        0x7e -> :sswitch_68
        0x7f -> :sswitch_68
        0x82 -> :sswitch_68
        0xa4 -> :sswitch_2a
        0xab -> :sswitch_18
    .end sparse-switch
.end method

.method public final blacklist onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .registers 6

    .line 1226
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_aa

    .line 1227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1229
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1231
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_a9

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_a9

    :cond_1b
    if-nez v1, :cond_1f

    goto/16 :goto_a9

    .line 1236
    :cond_1f
    nop

    .line 1237
    if-nez p1, :cond_5e

    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1238
    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 1239
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_5e

    .line 1240
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result p1

    if-nez p1, :cond_57

    .line 1241
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_86

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 1242
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result p1

    goto :goto_8d

    .line 1245
    :cond_57
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result p1

    goto :goto_8d

    .line 1248
    :cond_5e
    iget-boolean p1, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    const/4 v2, 0x1

    if-nez p1, :cond_88

    iget-boolean p1, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz p1, :cond_68

    goto :goto_88

    .line 1257
    :cond_68
    iget-boolean p1, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz p1, :cond_86

    .line 1258
    nop

    .line 1259
    iget-boolean p1, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz p1, :cond_78

    .line 1262
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1263
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_79

    .line 1259
    :cond_78
    move p1, v2

    .line 1266
    :goto_79
    if-eqz p1, :cond_86

    .line 1268
    const p1, 0xc351

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1271
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1273
    move p1, v2

    goto :goto_8d

    .line 1278
    :cond_86
    move p1, v0

    goto :goto_8d

    .line 1252
    :cond_88
    :goto_88
    iget-boolean p1, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1255
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1278
    :goto_8d
    if-eqz p1, :cond_aa

    .line 1279
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 1281
    if-eqz p1, :cond_a1

    .line 1282
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_aa

    .line 1284
    :cond_a1
    const-string p1, "PhoneWindow"

    const-string p2, "Couldn\'t get audio manager"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 1233
    :cond_a9
    :goto_a9
    return-void

    .line 1288
    :cond_aa
    :goto_aa
    return-void
.end method

.method public blacklist onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    .line 1400
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1401
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1402
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    .line 1403
    if-eqz p1, :cond_1d

    .line 1404
    iget p1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1407
    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 1411
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 1412
    return-void
.end method

.method public blacklist onMultiWindowModeChanged()V
    .registers 3

    .line 896
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_15

    .line 897
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 899
    :cond_15
    return-void
.end method

.method blacklist onOptionsPanelRotationChanged()V
    .registers 4

    .line 1557
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1558
    if-nez v0, :cond_8

    return-void

    .line 1560
    :cond_8
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_15

    .line 1561
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 1562
    :goto_16
    if-eqz v1, :cond_29

    .line 1563
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1564
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1565
    if-eqz v2, :cond_29

    .line 1566
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v2, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1569
    :cond_29
    return-void
.end method

.method public blacklist onPictureInPictureModeChanged(Z)V
    .registers 3

    .line 903
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    .line 904
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updatePictureInPictureOutlineProvider(Z)V

    .line 906
    :cond_9
    return-void
.end method

.method blacklist onViewRootImplSet(Landroid/view/ViewRootImpl;)V
    .registers 4

    .line 2279
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 2280
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->updateContext(Landroid/content/Context;)V

    .line 2281
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/ProxyOnBackInvokedDispatcher;->setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2282
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->applyDecorFitsSystemWindows()V

    .line 2283
    return-void
.end method

.method public final whitelist openPanel(ILandroid/view/KeyEvent;)V
    .registers 4

    .line 923
    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 924
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 925
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_22

    .line 926
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_2a

    .line 928
    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 930
    :goto_2a
    return-void
.end method

.method blacklist openPanelsAfterRestore()V
    .registers 5

    .line 2421
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2423
    if-nez v0, :cond_5

    .line 2424
    return-void

    .line 2428
    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_24

    .line 2429
    aget-object v2, v0, v1

    .line 2433
    if-eqz v2, :cond_21

    .line 2434
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2435
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_21

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_21

    .line 2436
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2437
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2428
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2441
    :cond_24
    return-void
.end method

.method public final whitelist peekDecorView()Landroid/view/View;
    .registers 2

    .line 2274
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public whitelist performContextMenuIdentifierAction(II)Z
    .registers 4

    .line 1613
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public whitelist performPanelIdentifierAction(III)Z
    .registers 8

    .line 1369
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    .line 1370
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x52

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1371
    return v3

    .line 1373
    :cond_14
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_19

    .line 1374
    return v3

    .line 1377
    :cond_19
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result p2

    .line 1380
    iget-object p3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez p3, :cond_26

    .line 1381
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1384
    :cond_26
    return p2
.end method

.method public whitelist performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .registers 6

    .line 1335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method blacklist performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 7

    .line 1340
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    if-nez p1, :cond_a

    goto :goto_30

    .line 1344
    :cond_a
    nop

    .line 1348
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v0, :cond_15

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_15
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1f

    .line 1350
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 1353
    :cond_1f
    if-eqz v1, :cond_2f

    .line 1355
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1358
    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_2f

    iget-object p3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez p3, :cond_2f

    .line 1359
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1363
    :cond_2f
    return v1

    .line 1341
    :cond_30
    :goto_30
    return v1
.end method

.method public final blacklist preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 11

    .line 750
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 751
    return v1

    .line 755
    :cond_8
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 756
    return v2

    .line 759
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eq v0, p1, :cond_1b

    .line 761
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 764
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_29

    .line 767
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 770
    :cond_29
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_36

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_34

    goto :goto_36

    :cond_34
    move v3, v1

    goto :goto_37

    :cond_36
    :goto_36
    move v3, v2

    .line 773
    :goto_37
    if-eqz v3, :cond_42

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_42

    .line 776
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 779
    :cond_42
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_f2

    .line 781
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_4f

    iget-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_8c

    .line 782
    :cond_4f
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_5e

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_5e

    .line 784
    :cond_5d
    return v1

    .line 788
    :cond_5e
    if-eqz v3, :cond_78

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_78

    .line 789
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v4, :cond_6f

    .line 790
    new-instance v4, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow-IA;)V

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    .line 792
    :cond_6f
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 799
    :cond_78
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 800
    if-eqz v0, :cond_e1

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_8a

    goto :goto_e1

    .line 812
    :cond_8a
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 819
    :cond_8c
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 823
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_9e

    .line 824
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 825
    iput-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 828
    :cond_9e
    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 829
    if-eqz v3, :cond_b7

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz p2, :cond_b7

    .line 832
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {p2, v5, v0}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 834
    :cond_b7
    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 835
    return v1

    .line 840
    :cond_bd
    if-eqz p2, :cond_c4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_c5

    :cond_c4
    const/4 p2, -0x1

    .line 839
    :goto_c5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 841
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_d1

    move p2, v2

    goto :goto_d2

    :cond_d1
    move p2, v1

    :goto_d2
    iput-boolean p2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 842
    iget-object p2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {p2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 843
    iget-object p2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_f2

    .line 802
    :cond_e1
    :goto_e1
    invoke-virtual {p1, v5}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 804
    if-eqz v3, :cond_f1

    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz p1, :cond_f1

    .line 806
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {p1, v5, p2}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 809
    :cond_f1
    return v1

    .line 847
    :cond_f2
    :goto_f2
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 848
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 849
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 851
    return v2
.end method

.method public whitelist registerScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 3

    .line 4191
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V

    .line 4192
    return-void
.end method

.method public whitelist requestFeature(I)Z
    .registers 6

    .line 505
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    if-nez v0, :cond_51

    .line 508
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    .line 509
    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v2, v0

    .line 510
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1d

    and-int/lit16 v2, v2, -0x34c2

    if-nez v2, :cond_15

    goto :goto_1d

    .line 514
    :cond_15
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "You cannot combine custom titles with other title features"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 517
    :cond_1d
    :goto_1d
    and-int/lit8 v2, v0, 0x2

    const/16 v3, 0x8

    if-eqz v2, :cond_27

    if-ne p1, v3, :cond_27

    .line 518
    const/4 p1, 0x0

    return p1

    .line 520
    :cond_27
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_30

    if-ne p1, v1, :cond_30

    .line 522
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    .line 525
    :cond_30
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4c

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_4c

    .line 527
    :cond_44
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "You cannot use indeterminate progress on a watch."

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    :cond_4c
    :goto_4c
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 506
    :cond_51
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "requestFeature() must be called before adding content"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 3

    .line 4181
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 4182
    return-void
.end method

.method public whitelist restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 6

    .line 2327
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 2328
    return-void

    .line 2331
    :cond_5
    nop

    .line 2332
    const-string v0, "android:views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2333
    if-eqz v0, :cond_13

    .line 2334
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2338
    :cond_13
    const-string v0, "android:focusedViewId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2339
    const-string v2, "PhoneWindow"

    if-eq v0, v1, :cond_46

    .line 2340
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2341
    if-eqz v1, :cond_2a

    .line 2342
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_46

    .line 2344
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previously focused view reported id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " during save, but can\'t be found during restore."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :cond_46
    :goto_46
    const-string v0, "android:Panels"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2352
    if-eqz v0, :cond_51

    .line 2353
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 2356
    :cond_51
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_6c

    .line 2357
    nop

    .line 2358
    const-string v0, "android:ActionBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    .line 2359
    if-eqz p1, :cond_67

    .line 2360
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    .line 2361
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_6c

    .line 2363
    :cond_67
    const-string p1, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    :cond_6c
    :goto_6c
    return-void
.end method

.method public whitelist saveHierarchyState()Landroid/os/Bundle;
    .registers 5

    .line 2293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2294
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_a

    .line 2295
    return-object v0

    .line 2298
    :cond_a
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2299
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2300
    const-string v2, "android:views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2303
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2304
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    .line 2305
    const-string v2, "android:focusedViewId"

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2309
    :cond_31
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2310
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 2311
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 2312
    const-string v2, "android:Panels"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2315
    :cond_44
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_57

    .line 2316
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2317
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v2, v1}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2318
    const-string v2, "android:ActionBar"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2321
    :cond_57
    return-object v0
.end method

.method blacklist sendCloseSystemWindows()V
    .registers 3

    .line 3991
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 3992
    return-void
.end method

.method blacklist sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3

    .line 3995
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 3996
    return-void
.end method

.method public whitelist setAllowEnterTransitionOverlap(Z)V
    .registers 2

    .line 3494
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3495
    return-void
.end method

.method public whitelist setAllowReturnTransitionOverlap(Z)V
    .registers 2

    .line 3504
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3505
    return-void
.end method

.method public whitelist setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 4128
    invoke-super {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4129
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_c

    .line 4130
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 4132
    :cond_c
    return-void
.end method

.method public final whitelist setBackgroundBlurRadius(I)V
    .registers 5

    .line 1658
    invoke-super {p0, p1}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    .line 1659
    sget-boolean v0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_1d

    .line 1660
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v0, v2, :cond_1d

    .line 1661
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    .line 1662
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/DecorView;->setBackgroundBlurRadius(I)V

    .line 1665
    :cond_1d
    return-void
.end method

.method public final whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1642
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_28

    .line 1643
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1644
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_28

    .line 1645
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 1646
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1647
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    .line 1648
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    goto :goto_20

    .line 1649
    :cond_1e
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1648
    :goto_20
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V

    .line 1651
    :cond_23
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 1654
    :cond_28
    return-void
.end method

.method public final whitelist setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 3152
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 3153
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3154
    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 3155
    return-void
.end method

.method public final whitelist setChildInt(II)V
    .registers 4

    .line 3159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 3160
    return-void
.end method

.method public final whitelist setClipToOutline(Z)V
    .registers 3

    .line 1634
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 1635
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    .line 1636
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 1638
    :cond_b
    return-void
.end method

.method public final whitelist setContainer(Landroid/view/Window;)V
    .registers 2

    .line 500
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 501
    return-void
.end method

.method public whitelist setContentView(I)V
    .registers 4

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 563
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_15

    .line 564
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 568
    :cond_15
    :goto_15
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 570
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 569
    invoke-static {v0, p1, v1}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object p1

    .line 571
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 572
    goto :goto_30

    .line 573
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 575
    :goto_30
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 578
    if-eqz p1, :cond_44

    .line 579
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 581
    :cond_44
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz p1, :cond_4d

    .line 582
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->notifyContentChanged()V

    .line 585
    :cond_4d
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 586
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 4

    .line 590
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 599
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_15

    .line 600
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 604
    :cond_15
    :goto_15
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 605
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    new-instance p2, Landroid/transition/Scene;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {p2, v0, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 607
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 608
    goto :goto_2e

    .line 609
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    :goto_2e
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 612
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    .line 613
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_4b

    .line 614
    if-eqz p1, :cond_42

    .line 615
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 617
    :cond_42
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz p1, :cond_4b

    .line 618
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {p1}, Lcom/android/internal/widget/DecorContentParent;->notifyContentChanged()V

    .line 621
    :cond_4b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 622
    return-void
.end method

.method public whitelist setDecorCaptionShade(I)V
    .registers 2

    .line 4124
    return-void
.end method

.method public whitelist setDecorFitsSystemWindows(Z)V
    .registers 3

    .line 4152
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_5

    .line 4153
    return-void

    .line 4155
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 4156
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->applyDecorFitsSystemWindows()V

    .line 4157
    return-void
.end method

.method public blacklist setDefaultIcon(I)V
    .registers 3

    .line 1931
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 1932
    return-void

    .line 1934
    :cond_7
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1935
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_40

    .line 1937
    :cond_1b
    if-eqz p1, :cond_29

    .line 1938
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1939
    iget p1, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_40

    .line 1941
    :cond_29
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1942
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1941
    invoke-interface {p1, v0}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1943
    iget p1, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1946
    :cond_40
    :goto_40
    return-void
.end method

.method public blacklist setDefaultLogo(I)V
    .registers 3

    .line 1959
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 1960
    return-void

    .line 1962
    :cond_7
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1963
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1964
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1966
    :cond_1a
    return-void
.end method

.method protected whitelist setDefaultWindowFormat(I)V
    .registers 2

    .line 3987
    invoke-super {p0, p1}, Landroid/view/Window;->setDefaultWindowFormat(I)V

    .line 3988
    return-void
.end method

.method public final whitelist setElevation(F)V
    .registers 5

    .line 1618
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 1619
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1620
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_16

    .line 1621
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1622
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1624
    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1625
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 3410
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3411
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 3420
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3421
    return-void
.end method

.method protected final blacklist setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1718
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1719
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_f

    .line 1720
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1721
    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1723
    :cond_f
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 1699
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1700
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1701
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1702
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v2, p2, :cond_14

    .line 1703
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1704
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1706
    :cond_14
    return-void
.end method

.method public whitelist setFeatureDrawableAlpha(II)V
    .registers 5

    .line 1710
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1711
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_f

    .line 1712
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1713
    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1715
    :cond_f
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .registers 6

    .line 1669
    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    .line 1670
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v1

    .line 1671
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v2, p2, :cond_1e

    .line 1672
    iput p2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1673
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1674
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1675
    const/4 p2, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1677
    :cond_1e
    goto :goto_22

    .line 1678
    :cond_1f
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1680
    :goto_22
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 5

    .line 1684
    if-eqz p2, :cond_22

    .line 1685
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1686
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1687
    :cond_13
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1688
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1689
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1690
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1692
    :cond_21
    goto :goto_26

    .line 1693
    :cond_22
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1695
    :goto_26
    return-void
.end method

.method public final whitelist setFeatureInt(II)V
    .registers 4

    .line 1729
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 1730
    return-void
.end method

.method public whitelist setIcon(I)V
    .registers 3

    .line 1921
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1922
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1923
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1924
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_17

    .line 1925
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1927
    :cond_17
    return-void
.end method

.method public blacklist setIsStartingWindow(Z)V
    .registers 2

    .line 4104
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    .line 4105
    return-void
.end method

.method public whitelist setLocalFocus(ZZ)V
    .registers 4

    .line 1970
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1971
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 1972
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->touchModeChanged(Z)V

    .line 1973
    return-void
.end method

.method public whitelist setLogo(I)V
    .registers 3

    .line 1950
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1951
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1952
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_11

    .line 1953
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1955
    :cond_11
    return-void
.end method

.method public whitelist setMediaController(Landroid/media/session/MediaController;)V
    .registers 4

    .line 3391
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 3392
    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-nez p1, :cond_2b

    .line 3393
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    .line 3394
    new-instance p1, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 3395
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    goto :goto_3b

    .line 3397
    :cond_2b
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-eqz p1, :cond_3b

    .line 3398
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 3399
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 3401
    :cond_3b
    :goto_3b
    return-void
.end method

.method public whitelist setNavigationBarColor(I)V
    .registers 5

    .line 4041
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    if-ne v0, p1, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-eqz v0, :cond_9

    .line 4042
    return-void

    .line 4044
    :cond_9
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 4045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 4046
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    .line 4047
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_26

    .line 4048
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 4050
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4052
    :cond_26
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_2b

    .line 4053
    return-void

    .line 4055
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 4056
    if-eqz v0, :cond_38

    .line 4057
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$WindowControllerCallback;->updateNavigationBarColor(I)V

    .line 4059
    :cond_38
    return-void
.end method

.method public whitelist setNavigationBarContrastEnforced(Z)V
    .registers 4

    .line 4092
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 4093
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_d

    .line 4094
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4096
    :cond_d
    return-void
.end method

.method public whitelist setNavigationBarDividerColor(I)V
    .registers 4

    .line 4063
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_5

    .line 4064
    return-void

    .line 4066
    :cond_5
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 4067
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_12

    .line 4068
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4070
    :cond_12
    return-void
.end method

.method public whitelist setReenterTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 3425
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3426
    return-void
.end method

.method public whitelist setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 4119
    return-void
.end method

.method public whitelist setReturnTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 3415
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3416
    return-void
.end method

.method public whitelist setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 3430
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3431
    return-void
.end method

.method public whitelist setSharedElementExitTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 3440
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3441
    return-void
.end method

.method public whitelist setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 3445
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3446
    return-void
.end method

.method public whitelist setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 3435
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3436
    return-void
.end method

.method public whitelist setSharedElementsUseOverlay(Z)V
    .registers 2

    .line 3528
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3529
    return-void
.end method

.method public whitelist setStatusBarColor(I)V
    .registers 5

    .line 4014
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_5

    .line 4015
    return-void

    .line 4017
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    if-ne v0, p1, :cond_e

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    if-eqz v0, :cond_e

    .line 4018
    return-void

    .line 4020
    :cond_e
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 4021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 4022
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_1e

    .line 4023
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4025
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 4026
    if-eqz v0, :cond_2b

    .line 4027
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$WindowControllerCallback;->updateStatusBarColor(I)V

    .line 4029
    :cond_2b
    return-void
.end method

.method public whitelist setStatusBarContrastEnforced(Z)V
    .registers 4

    .line 4079
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 4080
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_d

    .line 4081
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4083
    :cond_d
    return-void
.end method

.method public whitelist setSystemGestureExclusionRects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 4141
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setRootSystemGestureExclusionRects(Ljava/util/List;)V

    .line 4142
    return-void
.end method

.method public blacklist setTheme(I)V
    .registers 4

    .line 4109
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 4110
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_13

    .line 4111
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4112
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_13

    .line 4113
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 4116
    :cond_13
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 705
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 706
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;Z)V
    .registers 4

    .line 709
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 711
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_13

    .line 712
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 714
    :cond_13
    :goto_13
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 715
    if-eqz p2, :cond_3f

    .line 716
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 717
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 718
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p2, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 719
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_38

    .line 721
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    .line 722
    if-eqz p1, :cond_38

    .line 723
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->onWindowTitleChanged()V

    .line 726
    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 729
    :cond_3f
    return-void
.end method

.method public whitelist setTitleColor(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 737
    :cond_9
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 738
    return-void
.end method

.method public whitelist setTransitionBackgroundFadeDuration(J)V
    .registers 5

    .line 3520
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 3523
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3524
    return-void

    .line 3521
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative durations are not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 2

    .line 549
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 550
    return-void
.end method

.method public whitelist setUiOptions(I)V
    .registers 2

    .line 534
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 535
    return-void
.end method

.method public whitelist setUiOptions(II)V
    .registers 5

    .line 539
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 540
    return-void
.end method

.method public whitelist setVolumeControlStream(I)V
    .registers 2

    .line 3381
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 3382
    return-void
.end method

.method public whitelist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 2027
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2007
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2012
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 2017
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 2022
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .registers 2

    .line 673
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 674
    return-void
.end method

.method public whitelist takeKeyEvents(Z)V
    .registers 3

    .line 2002
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setFocusable(Z)V

    .line 2003
    return-void
.end method

.method public whitelist takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .registers 2

    .line 669
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 670
    return-void
.end method

.method public final whitelist togglePanel(ILandroid/view/KeyEvent;)V
    .registers 5

    .line 1142
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object p1

    .line 1143
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_d

    .line 1144
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_10

    .line 1146
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1148
    :goto_10
    return-void
.end method

.method public whitelist unregisterScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 3

    .line 4201
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V

    .line 4202
    return-void
.end method

.method protected final blacklist updateDrawable(IZ)V
    .registers 4

    .line 1742
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1743
    if-eqz v0, :cond_a

    .line 1744
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1746
    :cond_a
    return-void
.end method
