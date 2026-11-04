.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
.implements Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;,
        Lcom/android/internal/app/ChooserActivity$ChooserHandler;,
        Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;,
        Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;,
        Lcom/android/internal/app/ChooserActivity$FileInfo;,
        Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserListController;,
        Lcom/android/internal/app/ChooserActivity$FinishAnimation;,
        Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetRankingInfo;,
        Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;,
        Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;,
        Lcom/android/internal/app/ChooserActivity$FooterViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ItemViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ViewHolderBase;,
        Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$AzInfoComparator;,
        Lcom/android/internal/app/ChooserActivity$ContentPreviewType;,
        Lcom/android/internal/app/ChooserActivity$ShareTargetType;
    }
.end annotation


# static fields
.field public static final blacklist APP_PREDICTION_INTENT_FILTER_KEY:Ljava/lang/String; = "intent_filter"

.field private static final blacklist APP_PREDICTION_SHARE_TARGET_QUERY_PACKAGE_LIMIT:I = 0x14

.field private static final blacklist APP_PREDICTION_SHARE_UI_SURFACE:Ljava/lang/String; = "share"

.field private static final blacklist CHIP_ICON_METADATA_KEY:Ljava/lang/String; = "android.service.chooser.chip_icon"

.field private static final blacklist CHIP_LABEL_METADATA_KEY:Ljava/lang/String; = "android.service.chooser.chip_label"

.field public static final blacklist CHOOSER_TARGET:Ljava/lang/String; = "chooser_target"

.field protected static final blacklist CONTENT_PREVIEW_FILE:I = 0x2

.field protected static final blacklist CONTENT_PREVIEW_IMAGE:I = 0x1

.field protected static final blacklist CONTENT_PREVIEW_TEXT:I = 0x3

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_IS_NEARBY_SHARE_FIRST_TARGET_IN_RANKED_APP:Z = false

.field private static final blacklist DEFAULT_LIST_VIEW_UPDATE_DELAY_MS:I = 0x0

.field private static final blacklist DEFAULT_SALT_EXPIRATION_DAYS:I = 0x7

.field private static final blacklist DIRECT_SHARE_EXPANSION_RATE:F = 0.78f

.field public static final blacklist EXTRA_PRIVATE_RETAIN_IN_ON_STOP:Ljava/lang/String; = "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

.field public static final blacklist FIRST_IMAGE_PREVIEW_TRANSITION_NAME:Ljava/lang/String; = "screenshot_preview_image"

.field private static final blacklist IMAGE_EDITOR_SHARED_ELEMENT:Ljava/lang/String; = "screenshot_preview_image"

.field public static final blacklist LAUNCH_LOCATION_DIRECT_SHARE:Ljava/lang/String; = "direct_share"

.field private static final blacklist MAX_EXTRA_CHOOSER_TARGETS:I = 0x2

.field private static final blacklist MAX_EXTRA_INITIAL_INTENTS:I = 0x2

.field private static final blacklist MAX_LOG_RANK_POSITION:I = 0xc

.field private static final blacklist NO_DIRECT_SHARE_ANIM_IN_MILLIS:I = 0xc8

.field private static final blacklist PINNED_SHARED_PREFS_NAME:Ljava/lang/String; = "chooser_pin_settings"

.field private static final blacklist PLURALS_COUNT:Ljava/lang/String; = "count"

.field private static final blacklist PLURALS_FILE_NAME:Ljava/lang/String; = "file_name"

.field private static final blacklist PREF_NUM_SHEET_EXPANSIONS:Ljava/lang/String; = "pref_num_sheet_expansions"

.field private static final blacklist SCROLL_STATUS_IDLE:I = 0x0

.field private static final blacklist SCROLL_STATUS_SCROLLING_HORIZONTAL:I = 0x2

.field private static final blacklist SCROLL_STATUS_SCROLLING_VERTICAL:I = 0x1

.field public static final blacklist SELECTION_TYPE_APP:I = 0x2

.field public static final blacklist SELECTION_TYPE_COPY:I = 0x4

.field public static final blacklist SELECTION_TYPE_EDIT:I = 0x6

.field public static final blacklist SELECTION_TYPE_NEARBY:I = 0x5

.field public static final blacklist SELECTION_TYPE_SERVICE:I = 0x1

.field public static final blacklist SELECTION_TYPE_STANDARD:I = 0x3

.field private static final blacklist SHARED_TEXT_KEY:Ljava/lang/String; = "shared_text"

.field private static final blacklist SHORTCUT_TARGET:Ljava/lang/String; = "shortcut_target"

.field private static final blacklist TAG:Ljava/lang/String; = "ChooserActivity"

.field private static final blacklist TARGET_DETAILS_FRAGMENT_TAG:Ljava/lang/String; = "targetDetailsFragment"

.field public static final blacklist TARGET_TYPE_CHOOSER_TARGET:I = 0x1

.field public static final blacklist TARGET_TYPE_DEFAULT:I = 0x0

.field public static final blacklist TARGET_TYPE_SHORTCUTS_FROM_PREDICTION_SERVICE:I = 0x3

.field public static final blacklist TARGET_TYPE_SHORTCUTS_FROM_SHORTCUT_MANAGER:I = 0x2

.field private static final blacklist URI_PERMISSION_INTENT_FLAGS:I = 0xc3

.field private static final blacklist USE_PREDICTION_MANAGER_FOR_SHARE_ACTIVITIES:Z = true


# instance fields
.field private blacklist mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

.field protected blacklist mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field private final blacklist mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

.field protected blacklist mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

.field private blacklist mChooserShownTime:J

.field private blacklist mChosenComponentSender:Landroid/content/IntentSender;

.field private blacklist mContentView:Landroid/view/View;

.field private blacklist mCurrAvailableWidth:I

.field private blacklist mDirectShareAppTargetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDirectShareShortcutInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

.field private blacklist mFilteredComponentNames:[Landroid/content/ComponentName;

.field private blacklist mIsAppPredictorComponentAvailable:Z

.field private blacklist mIsNearbyShareFirstTargetInRankedApp:Z

.field protected blacklist mIsSuccessfullySelected:Z

.field private blacklist mLastAppliedInsets:Landroid/graphics/Insets;

.field private blacklist mLastNumberOfChildren:I

.field blacklist mListViewUpdateDelayMs:I

.field private blacklist mMaxHashSaltDays:I

.field private blacklist mMaxTargetsPerRow:I

.field protected blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private blacklist mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mPinnedSharedPrefs:Landroid/content/SharedPreferences;

.field private blacklist mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

.field private blacklist mQueriedSharingShortcutsTimeMs:J

.field private blacklist mReferrerFillInIntent:Landroid/content/Intent;

.field private blacklist mRefinementIntentSender:Landroid/content/IntentSender;

.field private blacklist mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

.field private blacklist mRemoveSharedElements:Z

.field private blacklist mReplacementExtras:Landroid/os/Bundle;

.field private blacklist mScrollStatus:I

.field private blacklist mShouldDisplayLandscape:Z

.field private blacklist mWorkAppPredictor:Landroid/app/prediction/AppPredictor;


# direct methods
.method public static synthetic blacklist $r8$lambda$1kEGsI1UKJP6HRX5lc0mZCAAYWw(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/app/ChooserActivity;->handleLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6R2P5B8i7h3HGOKYKMHcN5dIh4E(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->lambda$handleLayoutChange$5(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8UEGoYTjtmnL1cHlEpDZsSmdkVw(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;IIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/ChooserActivity;->handleScroll(Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9qVzHZEiHVKgopgSlu4YEKnoPJQ(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->onCopyButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J8sl3y5UFkHYV3cZsPiRy2X79Ps(Lcom/android/internal/app/ChooserActivity;Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity;->lambda$queryDirectShareTargets$3(Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JPX80vopyyL5X7hb40qB07gkFcg(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->lambda$createEditButton$2(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K5__6j_cvqANWkSxkRo_oSNS55I(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->lambda$createNearbyButton$1(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W6QMpKm7UQkw1l-NVRprZSQF_cQ(Landroid/net/Uri;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/app/ChooserActivity;->validForContentPreview(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$lMHhBWOaf1aF1o2xkBOVl9aCyG8(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->lambda$createAppPredictorCallback$0(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDirectShareShortcutInfoCache(Lcom/android/internal/app/ChooserActivity;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnterTransitionAnimationDelegate(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/ChooserActivity;->mRemoveSharedElements:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScrollStatus(Lcom/android/internal/app/ChooserActivity;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity;->mRemoveSharedElements:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScrollStatus(Lcom/android/internal/app/ChooserActivity;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNumSheetExpansions(Lcom/android/internal/app/ChooserActivity;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getNumSheetExpansions()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePackagesChanged(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhideStickyContentPreview(Lcom/android/internal/app/ChooserActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->hideStickyContentPreview()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincrementNumSheetExpansions(Lcom/android/internal/app/ChooserActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->incrementNumSheetExpansions()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogDirectShareTargetReceived(Lcom/android/internal/app/ChooserActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logDirectShareTargetReceived(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHorizontalScrollingEnabled(Lcom/android/internal/app/ChooserActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->setHorizontalScrollingEnabled(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldNearbyShareBeFirstInRankedRow(Lcom/android/internal/app/ChooserActivity;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeFirstInRankedRow()Z

    move-result p0

    return p0
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 191
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 272
    const-string v0, "hash_salt_max_days"

    const/4 v1, 0x7

    const-string v2, "systemui"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxHashSaltDays:I

    .line 277
    nop

    .line 278
    const-string v0, "is_nearby_share_first_target_in_ranked_app"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsNearbyShareFirstTargetInRankedApp:Z

    .line 289
    nop

    .line 290
    const-string v0, "sharesheet_list_view_update_delay"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mListViewUpdateDelayMs:I

    .line 308
    iput v1, p0, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mLastAppliedInsets:Landroid/graphics/Insets;

    .line 310
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    .line 311
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    .line 336
    iput v1, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    .line 340
    new-instance v2, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity-IA;)V

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    .line 343
    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity;->mRemoveSharedElements:Z

    .line 345
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mContentView:Landroid/view/View;

    .line 492
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity-IA;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    .line 192
    return-void
.end method

.method private blacklist addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V
    .registers 6

    .line 1337
    if-nez p2, :cond_3

    return-void

    .line 1338
    :cond_3
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1342
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050358

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1343
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 1344
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1345
    return-void
.end method

.method private blacklist adjustPreviewWidth(ILandroid/view/View;)V
    .registers 4

    .line 1103
    nop

    .line 1104
    iget-boolean p1, p0, Lcom/android/internal/app/ChooserActivity;->mShouldDisplayLandscape:Z

    if-eqz p1, :cond_11

    .line 1105
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10500e4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_12

    .line 1104
    :cond_11
    const/4 p1, -0x1

    .line 1108
    :goto_12
    if-nez p2, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 1110
    :cond_1c
    const v0, 0x10202a3

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1111
    const v0, 0x10202a6

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1112
    const v0, 0x1020299

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1113
    return-void
.end method

.method private blacklist calculateDrawerOffset(IILcom/android/internal/widget/RecyclerView;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)I
    .registers 16

    .line 2685
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2686
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    goto :goto_b

    :cond_a
    move v0, v1

    .line 2687
    :goto_b
    nop

    .line 2688
    invoke-virtual {p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v2

    .line 2689
    invoke-virtual {p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 2690
    invoke-virtual {p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 2691
    invoke-virtual {p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 2695
    if-nez v2, :cond_25

    .line 2696
    invoke-virtual {p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowCount()I

    move-result v2

    .line 2701
    :cond_25
    if-nez v2, :cond_3a

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 2702
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10500e0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 2704
    return v0

    .line 2707
    :cond_3a
    const v3, 0x1020296

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2708
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2709
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_54

    .line 2712
    :cond_53
    move v3, v0

    :goto_54
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 2713
    const v4, 0x1020013

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 2716
    :cond_66
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f0

    .line 2717
    nop

    .line 2718
    const/4 v4, 0x4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2719
    invoke-direct {p0, v2}, Lcom/android/internal/app/ChooserActivity;->shouldShowExtraRow(I)Z

    move-result v4

    .line 2720
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v5

    iput v5, p0, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    .line 2721
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v5

    move v6, v1

    move v7, v6

    .line 2722
    :goto_82
    const/4 v8, 0x1

    if-ge v6, v5, :cond_b2

    if-lez v2, :cond_b2

    .line 2723
    invoke-virtual {p3, v6}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2724
    nop

    .line 2725
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v10}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v10

    if-eqz v10, :cond_99

    .line 2726
    goto :goto_af

    .line 2728
    :cond_99
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 2729
    add-int/2addr v3, v10

    .line 2730
    if-eqz v4, :cond_a1

    .line 2731
    add-int/2addr v3, v10

    .line 2734
    :cond_a1
    nop

    .line 2735
    invoke-virtual {p3, v9}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    .line 2734
    invoke-virtual {p4, v9}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getTargetType(I)I

    move-result v9

    if-ne v9, v8, :cond_ad

    .line 2737
    move v7, v10

    .line 2739
    :cond_ad
    add-int/lit8 v2, v2, -0x1

    .line 2722
    :goto_af
    add-int/lit8 v6, v6, 0x1

    goto :goto_82

    .line 2742
    :cond_b2
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne p3, v8, :cond_c5

    .line 2743
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isInMultiWindowMode()Z

    move-result p3

    if-nez p3, :cond_c5

    goto :goto_c6

    :cond_c5
    move v8, v1

    .line 2744
    :goto_c6
    if-eqz v7, :cond_ef

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowContentPreview()Z

    move-result p3

    if-eqz p3, :cond_ef

    if-eqz v8, :cond_ef

    .line 2747
    int-to-float p3, v7

    const p4, 0x3f47ae14    # 0.78f

    div-float/2addr p3, p4

    float-to-int p3, p3

    .line 2749
    iget-object p4, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz p4, :cond_de

    iget-object p4, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, p4, Landroid/graphics/Insets;->top:I

    .line 2750
    :cond_de
    sub-int p4, p2, p1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getAlwaysShowHeight()I

    move-result v2

    sub-int/2addr p4, v2

    sub-int/2addr p4, p3

    sub-int/2addr p4, v1

    sub-int/2addr p4, v0

    .line 2753
    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    move v3, p3

    .line 2755
    :cond_ef
    goto :goto_ff

    .line 2756
    :cond_f0
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getActiveEmptyStateView()Landroid/view/ViewGroup;

    move-result-object p3

    .line 2757
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p4

    if-nez p4, :cond_ff

    .line 2758
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    add-int/2addr v3, p3

    .line 2762
    :cond_ff
    :goto_ff
    sub-int/2addr p2, p1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private blacklist createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .registers 8

    .line 1255
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1256
    if-eqz p1, :cond_22

    .line 1257
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1258
    const v3, 0x10500d7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1259
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1260
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1262
    :cond_22
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1264
    return-object v0
.end method

.method private blacklist createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 6

    .line 2336
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsAppPredictorComponentAvailable:Z

    if-nez v0, :cond_6

    .line 2337
    const/4 p1, 0x0

    return-object p1

    .line 2340
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2341
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1e

    .line 2342
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    return-object p1

    .line 2345
    :cond_17
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1e

    .line 2346
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    return-object p1

    .line 2352
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2353
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 2354
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2355
    const-string v3, "intent_filter"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2356
    invoke-direct {p0, v2}, Lcom/android/internal/app/ChooserActivity;->populateTextContent(Landroid/os/Bundle;)V

    .line 2357
    new-instance v1, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v1, v0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    .line 2358
    const-string v3, "share"

    invoke-virtual {v1, v3}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v1

    .line 2359
    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v1

    .line 2360
    invoke-virtual {v1, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v1

    .line 2361
    invoke-virtual {v1}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v1

    .line 2362
    const-class v2, Landroid/app/prediction/AppPredictionManager;

    .line 2364
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppPredictionManager;

    .line 2365
    invoke-virtual {v0, v1}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 2367
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 2368
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    goto :goto_68

    .line 2370
    :cond_66
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 2372
    :goto_68
    return-object v0
.end method

.method private blacklist createAppPredictorCallback(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ResolverAppPredictorCallback;
    .registers 4

    .line 789
    new-instance v0, Lcom/android/internal/app/ResolverAppPredictorCallback;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverAppPredictorCallback;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private blacklist createChooserMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 894
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mIntents:Ljava/util/ArrayList;

    .line 900
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 894
    move-object v1, p0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v2

    .line 901
    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 904
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->createEmptyStateProvider(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;I)V

    .line 901
    return-object v0
.end method

.method private blacklist createChooserMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 915
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->findSelectedProfile()I

    move-result v7

    .line 916
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mIntents:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->sanitizePayloadIntents(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 917
    nop

    .line 919
    if-nez v7, :cond_11

    .line 920
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mIntents:Ljava/util/ArrayList;

    move-object v2, v1

    goto :goto_12

    .line 921
    :cond_11
    move-object v2, v8

    .line 922
    :goto_12
    const/4 v9, 0x0

    if-nez v7, :cond_17

    move-object v3, p1

    goto :goto_18

    :cond_17
    move-object v3, v9

    .line 925
    :goto_18
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 917
    move-object v1, p0

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v10

    .line 926
    nop

    .line 928
    const/4 v1, 0x1

    if-ne v7, v1, :cond_2c

    .line 929
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity;->mIntents:Ljava/util/ArrayList;

    move-object v2, v8

    goto :goto_2d

    .line 930
    :cond_2c
    move-object v2, v8

    .line 931
    :goto_2d
    if-ne v7, v1, :cond_31

    move-object v3, p1

    goto :goto_32

    :cond_31
    move-object v3, v9

    .line 934
    :goto_32
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 926
    move-object v1, p0

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v3

    .line 935
    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 939
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity;->createEmptyStateProvider(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    .line 942
    move v6, v7

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    .line 943
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    move-object v0, v1

    move-object v2, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;ILandroid/os/UserHandle;Landroid/os/UserHandle;I)V

    .line 935
    return-object v0
.end method

.method private blacklist createCopyButton()Landroid/widget/Button;
    .registers 4

    .line 1268
    nop

    .line 1269
    const v0, 0x108055c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1270
    const v1, 0x1040001

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    .line 1268
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    .line 1271
    const v1, 0x1020276

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1272
    return-object v0
.end method

.method private blacklist createEditButton(Landroid/content/Intent;)Landroid/widget/Button;
    .registers 5

    .line 1299
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getEditSharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    .line 1300
    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 1302
    :cond_8
    nop

    .line 1303
    invoke-interface {p1, p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1304
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1302
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object p1

    .line 1326
    const v0, 0x1020277

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setId(I)V

    .line 1327
    return-object p1
.end method

.method private blacklist createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;
    .registers 5

    .line 1276
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    .line 1277
    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 1279
    :cond_8
    nop

    .line 1280
    invoke-interface {p1, p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1281
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1279
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object p1

    .line 1294
    const v0, 0x1020279

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setId(I)V

    .line 1295
    return-object p1
.end method

.method private blacklist displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 5

    .line 1349
    nop

    .line 1351
    packed-switch p1, :pswitch_data_46

    .line 1362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected content preview type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ChooserActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    goto :goto_2d

    .line 1353
    :pswitch_1e
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p2

    .line 1354
    goto :goto_2d

    .line 1359
    :pswitch_23
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p2

    .line 1360
    goto :goto_2d

    .line 1356
    :pswitch_28
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p2

    .line 1357
    nop

    .line 1365
    :goto_2d
    if-eqz p2, :cond_3c

    .line 1366
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p3, p2}, Lcom/android/internal/app/ChooserActivity;->adjustPreviewWidth(ILandroid/view/View;)V

    .line 1368
    :cond_3c
    const/4 p3, 0x1

    if-eq p1, p3, :cond_44

    .line 1369
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->markImagePreviewReady()V

    .line 1372
    :cond_44
    return-object p2

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_28
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method private blacklist displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 8

    .line 1559
    const v0, 0x1090063

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 1562
    nop

    .line 1563
    const p3, 0x1020275

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 1565
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeIncludedAsActionButton()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1566
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1569
    :cond_21
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 1570
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "android.intent.extra.STREAM"

    const/16 v2, 0x8

    if-eqz p3, :cond_48

    .line 1571
    const-class p3, Landroid/net/Uri;

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1572
    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity;->validForContentPreview(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_43

    .line 1573
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1574
    return-object p2

    .line 1576
    :cond_43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    .line 1577
    goto/16 :goto_db

    .line 1578
    :cond_48
    const-class p3, Landroid/net/Uri;

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1579
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 1580
    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1581
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1582
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 1584
    if-nez p3, :cond_76

    .line 1585
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1586
    const-string p1, "ChooserActivity"

    const-string p3, "Appears to be no uris available in EXTRA_STREAM, removing preview area"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    return-object p2

    .line 1590
    :cond_76
    const/4 v0, 0x1

    if-ne p3, v0, :cond_83

    .line 1591
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    goto :goto_db

    .line 1593
    :cond_83
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/internal/app/ChooserActivity;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;

    move-result-object p1

    .line 1594
    sub-int/2addr p3, v0

    .line 1595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1596
    const-string v3, "count"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    const-string p3, "file_name"

    iget-object p1, p1, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    nop

    .line 1599
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1598
    const p3, 0x1040434

    invoke-static {p1, v0, p3}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p1

    .line 1603
    const p3, 0x102029b

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 1605
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1607
    const p1, 0x102029a

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1609
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1611
    const p1, 0x1020298

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1613
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1614
    const p3, 0x108044a

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1618
    :goto_db
    return-object p2
.end method

.method private blacklist displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 12

    .line 1429
    const v0, 0x1090064

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 1431
    const p3, 0x10202a0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 1433
    nop

    .line 1434
    const v0, 0x1020275

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1435
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1438
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeIncludedAsActionButton()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1439
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1441
    :cond_2e
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1442
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createEditButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1445
    :cond_3d
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1447
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    const-string v3, "screenshot_preview_image"

    const-string v4, "android.intent.extra.STREAM"

    const v5, 0x102029c

    if-eqz v0, :cond_75

    .line 1448
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1449
    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity;->validForContentPreview(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 1450
    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1451
    return-object p2

    .line 1453
    :cond_67
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 1454
    invoke-virtual {p3, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1455
    iget-object p3, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {p3, v5, p1, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1456
    goto/16 :goto_10a

    .line 1457
    :cond_75
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1459
    const-class v6, Landroid/net/Uri;

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1460
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_88
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1462
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->validForContentPreview(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/app/ChooserActivity;->isImageType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 1463
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    :cond_a7
    goto :goto_88

    .line 1467
    :cond_a8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b9

    .line 1468
    const-string p1, "ChooserActivity"

    const-string v0, "Attempted to display image preview area with zero available images detected in EXTRA_STREAM list"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1471
    return-object p2

    .line 1474
    :cond_b9
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1475
    invoke-virtual {p1, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1476
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    invoke-static {p1, v5, p3, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1478
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e2

    .line 1479
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1480
    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 1479
    const v0, 0x102029d

    invoke-static {p1, v0, p3, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_10a

    .line 1481
    :cond_e2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_10a

    .line 1482
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1483
    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 1482
    const v2, 0x102029e

    invoke-static {p1, v2, p3, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1484
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1485
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 1484
    const v1, 0x102029f

    invoke-static {p1, v1, p3, v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1489
    :cond_10a
    :goto_10a
    return-object p2
.end method

.method private blacklist displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 8

    .line 1377
    const v0, 0x1090065

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 1380
    nop

    .line 1381
    const p3, 0x1020275

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 1382
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->createCopyButton()Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1383
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeIncludedAsActionButton()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1384
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1387
    :cond_28
    const-string p3, "android.intent.extra.TEXT"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 1388
    const/16 v0, 0x8

    if-nez p3, :cond_3d

    .line 1389
    const p3, 0x10202a3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_49

    .line 1392
    :cond_3d
    const v2, 0x10202a1

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1393
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1396
    :goto_49
    const-string p3, "android.intent.extra.TITLE"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1397
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1398
    const p1, 0x10202a6

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a2

    .line 1401
    :cond_60
    const v2, 0x10202a5

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1403
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 1406
    nop

    .line 1407
    if-eqz p1, :cond_82

    .line 1408
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    if-lez p3, :cond_82

    .line 1409
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 1410
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_83

    .line 1414
    :cond_82
    const/4 p1, 0x0

    :goto_83
    const p3, 0x10202a4

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1416
    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity;->validForContentPreview(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_96

    .line 1417
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a2

    .line 1419
    :cond_96
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1420
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v0, p3, p1, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1424
    :goto_a2
    return-object p2
.end method

.method private blacklist extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;
    .registers 10

    .line 1512
    nop

    .line 1513
    nop

    .line 1515
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity;->queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_a} :catch_51
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_a} :catch_51

    .line 1516
    if-eqz p2, :cond_4b

    :try_start_c
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4b

    .line 1517
    const-string v4, "_display_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1518
    const-string v5, "title"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1519
    const-string v6, "flags"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1521
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1522
    if-eq v4, v1, :cond_2e

    .line 1523
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_34

    .line 1524
    :cond_2e
    if-eq v5, v1, :cond_34

    .line 1525
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1528
    :cond_34
    :goto_34
    if-eq v6, v1, :cond_4b

    .line 1529
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_3f

    and-int/2addr v4, v0

    if-eqz v4, :cond_4b

    move v3, v0

    goto :goto_4b

    .line 1515
    :catchall_3f
    move-exception v4

    if-eqz p2, :cond_4a

    :try_start_42
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p2

    :try_start_47
    invoke-virtual {v4, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    throw v4

    .line 1533
    :cond_4b
    :goto_4b
    if-eqz p2, :cond_50

    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_50} :catch_51
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_50} :catch_51

    .line 1535
    :cond_50
    goto :goto_55

    .line 1533
    :catch_51
    move-exception p2

    .line 1534
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logContentPreviewWarning(Landroid/net/Uri;)V

    .line 1537
    :goto_55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 1538
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1539
    const/16 p1, 0x2f

    invoke-virtual {v2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    .line 1540
    if-eq p1, v1, :cond_6c

    .line 1541
    add-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1545
    :cond_6c
    new-instance p1, Lcom/android/internal/app/ChooserActivity$FileInfo;

    invoke-direct {p1, v2, v3}, Lcom/android/internal/app/ChooserActivity$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object p1
.end method

.method private blacklist filterShortcutsByTargetComponentName(Ljava/util/List;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 2147
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2150
    :cond_22
    goto :goto_9

    .line 2151
    :cond_23
    return-object v0
.end method

.method private blacklist findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I
    .registers 6

    .line 1681
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1682
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_1b

    .line 1683
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1684
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result p1

    return p1

    .line 1685
    :cond_1b
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_4f

    .line 1686
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1687
    if-eqz p1, :cond_4e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_4e

    .line 1691
    :cond_33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1694
    invoke-direct {p0, v0, p2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 1695
    return v1

    .line 1697
    :cond_4b
    goto :goto_37

    .line 1699
    :cond_4c
    const/4 p1, 0x1

    return p1

    .line 1688
    :cond_4e
    :goto_4e
    return v1

    .line 1702
    :cond_4f
    return v1
.end method

.method private blacklist findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .registers 3

    .line 1665
    if-nez p1, :cond_4

    .line 1666
    const/4 p1, 0x3

    return p1

    .line 1669
    :cond_4
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 1670
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isImageType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x2

    :goto_11
    return p1
.end method

.method private blacklist findRootView()Landroid/view/View;
    .registers 2

    .line 3052
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mContentView:Landroid/view/View;

    if-nez v0, :cond_d

    .line 3053
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mContentView:Landroid/view/View;

    .line 3055
    :cond_d
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private blacklist findSelectedProfile()I
    .registers 3

    .line 948
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getSelectedProfileExtra()I

    move-result v0

    .line 949
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 950
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getProfileForUser(Landroid/os/UserHandle;)I

    move-result v0

    .line 952
    :cond_f
    return v0
.end method

.method private blacklist getActiveEmptyStateView()Landroid/view/ViewGroup;
    .registers 3

    .line 2791
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    .line 2792
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 3

    .line 2389
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 2388
    :goto_c
    return-object p1
.end method

.method private blacklist getAppPredictorForShareActivitiesIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 3

    .line 2400
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2401
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 2400
    :goto_c
    return-object p1
.end method

.method private blacklist getFirstVisibleImgPreviewView()Landroid/view/View;
    .registers 3

    .line 1332
    const v0, 0x102029c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1333
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method private blacklist getNumSheetExpansions()I
    .registers 4

    .line 1706
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_num_sheet_expansions"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static blacklist getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6

    .line 832
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 833
    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "chooser_pin_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 837
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getProfileForUser(Landroid/os/UserHandle;)I
    .registers 3

    .line 2782
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2783
    const/4 p1, 0x1

    return p1

    .line 2787
    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist getRankedPosition(Lcom/android/internal/app/chooser/SelectableTargetInfo;)I
    .registers 6

    .line 1978
    nop

    .line 1979
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1980
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 1981
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    .line 1982
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1985
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_3c

    .line 1986
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1987
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1988
    return v2

    .line 1985
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1991
    :cond_3c
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist getTargetIntentFilter()Landroid/content/IntentFilter;
    .registers 8

    .line 2011
    const-string v0, "ChooserActivity"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2012
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 2013
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    .line 2014
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 2015
    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 2017
    :cond_21
    const-string v2, "Failed to get target intent filter: intent data and type are null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    return-object v1

    .line 2020
    :cond_27
    new-instance v3, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2022
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_88

    const-string v6, "android.intent.extra.STREAM"

    if-eqz v5, :cond_55

    .line 2023
    :try_start_47
    const-class v5, Landroid/net/Uri;

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2024
    if-eqz v2, :cond_54

    .line 2025
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2027
    :cond_54
    goto :goto_60

    .line 2028
    :cond_55
    const-class v5, Landroid/net/Uri;

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2029
    if-eqz v2, :cond_60

    .line 2030
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2033
    :cond_60
    :goto_60
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 2034
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_86} :catch_88

    .line 2037
    goto :goto_64

    .line 2038
    :cond_87
    return-object v3

    .line 2039
    :catch_88
    move-exception v2

    .line 2040
    const-string v3, "Failed to get target intent filter"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2041
    return-object v1
.end method

.method private blacklist getUriGrantsManager()Landroid/app/IUriGrantsManager;
    .registers 2

    .line 4301
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16

    .line 2624
    iget-object p6, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    if-nez p6, :cond_5

    .line 2625
    return-void

    .line 2627
    :cond_5
    iget-object p6, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p6}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v5

    .line 2628
    iget-object p6, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p6}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v2

    .line 2631
    if-eqz v2, :cond_97

    if-eqz v5, :cond_97

    .line 2632
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p6

    if-eqz p6, :cond_1d

    goto/16 :goto_97

    .line 2636
    :cond_1d
    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    .line 2637
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->consumeLayoutRequest()Z

    move-result p1

    if-nez p1, :cond_41

    .line 2638
    invoke-virtual {v2, p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->calculateChooserTargetWidth(I)Z

    move-result p1

    if-nez p1, :cond_41

    .line 2639
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_41

    iget p1, p0, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    if-eq p4, p1, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p1, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p1, 0x1

    .line 2642
    :goto_42
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mLastAppliedInsets:Landroid/graphics/Insets;

    iget-object p6, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    invoke-static {p2, p6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 2644
    if-nez p1, :cond_56

    if-eqz p2, :cond_56

    iget p6, p0, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    .line 2646
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result p7

    if-eq p6, p7, :cond_96

    .line 2647
    :cond_56
    iput p4, p0, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    .line 2648
    if-eqz p1, :cond_6b

    .line 2652
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 2653
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/GridLayoutManager;

    iget p4, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2656
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateTabPadding()V

    .line 2659
    :cond_6b
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 2660
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getProfileForUser(Landroid/os/UserHandle;)I

    move-result p1

    .line 2661
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->findSelectedProfile()I

    move-result p4

    .line 2662
    if-eq p1, p4, :cond_7c

    .line 2663
    return-void

    .line 2666
    :cond_7c
    iget p1, p0, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result p4

    if-ne p1, p4, :cond_87

    if-eqz p2, :cond_87

    .line 2667
    return-void

    .line 2670
    :cond_87
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;

    move-object v1, p0

    move v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2680
    :cond_96
    return-void

    .line 2633
    :cond_97
    :goto_97
    return-void
.end method

.method private blacklist handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3

    .line 1007
    invoke-static {p0}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    .line 1008
    if-nez p1, :cond_24

    .line 1009
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->handlePackagesChanged()V

    .line 1010
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_27

    .line 1011
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->handlePackagesChanged()V

    goto :goto_27

    .line 1014
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 1016
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->updateProfileViewButton()V

    .line 1017
    return-void
.end method

.method private blacklist handleScroll(Landroid/view/View;IIII)V
    .registers 6

    .line 2612
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 2613
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p5}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->handleScroll(Landroid/view/View;II)V

    .line 2615
    :cond_11
    return-void
.end method

.method private blacklist hasValidIcon(Landroid/service/chooser/ChooserTarget;)Z
    .registers 9

    .line 4278
    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 4279
    const/4 v0, 0x1

    if-nez p1, :cond_8

    .line 4280
    return v0

    .line 4282
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_16

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_33

    .line 4283
    :cond_16
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 4285
    :try_start_1a
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getUriGrantsManager()Landroid/app/IUriGrantsManager;

    move-result-object v1

    .line 4286
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getLaunchedFromUid()I

    move-result v2

    .line 4287
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4288
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 4290
    invoke-static {p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v6

    .line 4285
    const/4 v5, 0x1

    invoke-interface/range {v1 .. v6}, Landroid/app/IUriGrantsManager;->checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_32} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_34

    .line 4295
    nop

    .line 4297
    :cond_33
    return v0

    .line 4292
    :catch_34
    move-exception v0

    .line 4293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get URI permission for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ChooserActivity"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4294
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist hideStickyContentPreview()V
    .registers 3

    .line 3018
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3019
    return-void

    .line 3021
    :cond_7
    const v0, 0x1020296

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3022
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3023
    return-void
.end method

.method private blacklist incrementNumSheetExpansions()V
    .registers 4

    .line 1710
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1711
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getNumSheetExpansions()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1710
    const-string v2, "pref_num_sheet_expansions"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1711
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1712
    return-void
.end method

.method private blacklist isAppPredictionServiceAvailable()Z
    .registers 2

    .line 970
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAppPredictionServicePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 2165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2166
    return v1

    .line 2170
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_10} :catch_21

    .line 2173
    nop

    .line 2175
    if-eqz p1, :cond_20

    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p2, :cond_20

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p2, 0x40000000    # 2.0f

    and-int/2addr p1, p2

    if-nez p1, :cond_20

    .line 2177
    const/4 p1, 0x1

    return p1

    .line 2179
    :cond_20
    return v1

    .line 2171
    :catch_21
    move-exception p1

    .line 2172
    return v1
.end method

.method private blacklist isStickyContentPreviewShowing()Z
    .registers 2

    .line 3013
    const v0, 0x1020296

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3014
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method static synthetic blacklist lambda$convertToChooserTarget$4(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I
    .registers 2

    .line 2246
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result p0

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method private synthetic blacklist lambda$createAppPredictorCallback$0(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .registers 10

    .line 790
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_83

    .line 793
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_15

    .line 794
    return-void

    .line 796
    :cond_15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 797
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->shouldQueryShortcutManager(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 799
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V

    .line 800
    return-void

    .line 802
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 805
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 806
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppTarget;

    .line 807
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    if-nez v3, :cond_4b

    .line 808
    goto :goto_38

    .line 810
    :cond_4b
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    goto :goto_38

    .line 812
    :cond_4f
    nop

    .line 813
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_54
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppTarget;

    .line 814
    new-instance v3, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 815
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    .line 817
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    .line 814
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    goto :goto_54

    .line 819
    :cond_7a
    nop

    .line 820
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 819
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/internal/app/ChooserActivity;->sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 821
    return-void

    .line 791
    :cond_83
    :goto_83
    return-void
.end method

.method private synthetic blacklist lambda$createEditButton$2(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 7

    .line 1307
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string v3, ""

    invoke-interface {p2, v2, v3, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1312
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getFirstVisibleImgPreviewView()Landroid/view/View;

    move-result-object p2

    .line 1314
    if-nez p2, :cond_1d

    .line 1315
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1316
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto :goto_32

    .line 1318
    :cond_1d
    const-string v0, "screenshot_preview_image"

    invoke-static {p0, p2, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p2

    .line 1320
    nop

    .line 1321
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 1320
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    .line 1322
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->startFinishAnimation()V

    .line 1324
    :goto_32
    return-void
.end method

.method private synthetic blacklist lambda$createNearbyButton$1(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 7

    .line 1284
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-string v3, ""

    invoke-interface {p2, v2, v3, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1290
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1291
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 1292
    return-void
.end method

.method private synthetic blacklist lambda$handleLayoutChange$5(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V
    .registers 6

    .line 2671
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_1a

    if-nez p1, :cond_7

    goto :goto_1a

    .line 2674
    :cond_7
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/android/internal/app/ChooserActivity;->calculateDrawerOffset(IILcom/android/internal/widget/RecyclerView;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)I

    move-result p1

    .line 2675
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    .line 2676
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->markOffsetCalculated()V

    .line 2677
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mLastAppliedInsets:Landroid/graphics/Insets;

    .line 2678
    return-void

    .line 2672
    :cond_1a
    :goto_1a
    return-void
.end method

.method private synthetic blacklist lambda$queryDirectShareTargets$3(Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 6

    .line 2064
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2065
    nop

    .line 2066
    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 2067
    invoke-virtual {v0, p2}, Landroid/content/pm/ShortcutManager;->getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object p2

    .line 2068
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/internal/app/ChooserActivity;->sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 2069
    return-void
.end method

.method static synthetic blacklist lambda$sanitizePayloadIntents$6(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 4328
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4329
    return-object v0

    .line 4331
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4332
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4333
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4334
    invoke-virtual {v1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 4335
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4336
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4337
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4338
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 4340
    :cond_27
    return-object v1
.end method

.method private blacklist loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V
    .registers 6

    .line 1622
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;

    move-result-object v0

    .line 1624
    const v1, 0x102029b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1625
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1627
    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$FileInfo;->hasThumbnail:Z

    const v1, 0x102029a

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    .line 1628
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v0, p0, p2, v2}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1629
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {p2, v1, p1, v2}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_46

    .line 1631
    :cond_2b
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1632
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1634
    const p1, 0x1020298

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1635
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1636
    const p2, 0x10802e7

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1638
    :goto_46
    return-void
.end method

.method private blacklist logActionShareWithPreview()V
    .registers 5

    .line 3026
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3027
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v0

    .line 3028
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x674

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 3029
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 3028
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3030
    return-void
.end method

.method private blacklist logContentPreviewWarning(Landroid/net/Uri;)V
    .registers 4

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") thumbnail/name for preview. If desired, consider using Intent#createChooser to launch the ChooserActivity, and set your Intent\'s clipData and flags in accordance with that method\'s documentation"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChooserActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    return-void
.end method

.method private blacklist logDirectShareTargetReceived(I)V
    .registers 6

    .line 2252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/app/ChooserActivity;->mQueriedSharingShortcutsTimeMs:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 2253
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    new-instance v2, Landroid/metrics/LogMaker;

    invoke-direct {v2, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2254
    return-void
.end method

.method private blacklist maybeCancelFinishAnimation()Z
    .registers 4

    .line 3040
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->findRootView()Landroid/view/View;

    move-result-object v0

    .line 3041
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 3042
    :goto_c
    instance-of v2, v1, Lcom/android/internal/app/ChooserActivity$FinishAnimation;

    if-eqz v2, :cond_1d

    .line 3043
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    .line 3044
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 3045
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3046
    xor-int/lit8 v0, v2, 0x1

    return v0

    .line 3048
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist maybeQueryAdditionalPostProcessingTargets(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 3

    .line 2853
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2854
    return-void

    .line 2858
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->shouldQueryShortcutManager(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2859
    return-void

    .line 2867
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V

    .line 2869
    return-void
.end method

.method private blacklist modifyTargetIntent(Landroid/content/Intent;)V
    .registers 3

    .line 1819
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1820
    const/high16 v0, 0x8080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1823
    :cond_b
    return-void
.end method

.method private blacklist onCopyButtonClicked(Landroid/view/View;)V
    .registers 9

    .line 1020
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1021
    if-nez p1, :cond_b

    .line 1022
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto/16 :goto_b0

    .line 1024
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1026
    nop

    .line 1027
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ChooserActivity"

    const-string v4, "android.intent.extra.STREAM"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_45

    .line 1028
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1031
    if-eqz v0, :cond_34

    .line 1032
    invoke-static {v6, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    goto :goto_3e

    .line 1033
    :cond_34
    if-eqz p1, :cond_3f

    .line 1034
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    .line 1039
    :goto_3e
    goto :goto_7e

    .line 1036
    :cond_3f
    const-string p1, "No data available to copy to clipboard"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return-void

    .line 1039
    :cond_45
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 1040
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1042
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v0, v6, v1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    .line 1043
    move v1, v5

    :goto_62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7d

    .line 1044
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {v4, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    .line 1043
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 1046
    :cond_7d
    move-object p1, v0

    .line 1053
    :goto_7e
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ClipboardManager;->setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1058
    new-instance p1, Landroid/metrics/LogMaker;

    const/16 v0, 0x6d5

    invoke-direct {p1, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1059
    invoke-virtual {p1, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1060
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, ""

    const/4 v3, -0x1

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1067
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->setResult(I)V

    .line 1068
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 1070
    :goto_b0
    return-void

    .line 1049
    :cond_b1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") not supported for copying to clipboard"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void
.end method

.method private blacklist populateTextContent(Landroid/os/Bundle;)V
    .registers 4

    .line 2376
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2377
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2378
    const-string v1, "shared_text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    return-void
.end method

.method private static blacklist removeIcon(Landroid/service/chooser/ChooserTarget;)Landroid/service/chooser/ChooserTarget;
    .registers 7

    .line 4305
    if-nez p0, :cond_4

    .line 4306
    const/4 p0, 0x0

    return-object p0

    .line 4308
    :cond_4
    new-instance v0, Landroid/service/chooser/ChooserTarget;

    .line 4309
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 4311
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v3

    .line 4312
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 4313
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 4308
    return-object v0
.end method

.method public static blacklist sanitizePayloadIntents(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 4327
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4341
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 4327
    return-object p0
.end method

.method private blacklist sendClickToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 5

    .line 2312
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2313
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2312
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 2314
    if-nez v0, :cond_d

    .line 2315
    return-void

    .line 2317
    :cond_d
    instance-of v1, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-nez v1, :cond_12

    .line 2318
    return-void

    .line 2320
    :cond_12
    check-cast p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object p1

    .line 2321
    nop

    .line 2322
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v1, :cond_26

    .line 2323
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppTarget;

    goto :goto_27

    .line 2322
    :cond_26
    const/4 p1, 0x0

    .line 2326
    :goto_27
    if-eqz p1, :cond_3c

    .line 2327
    new-instance v1, Landroid/app/prediction/AppTargetEvent$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    .line 2329
    const-string p1, "direct_share"

    invoke-virtual {v1, p1}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object p1

    .line 2330
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object p1

    .line 2327
    invoke-virtual {v0, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    .line 2332
    :cond_3c
    return-void
.end method

.method private blacklist sendImpressionToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 8

    .line 2287
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2288
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2287
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 2289
    if-nez v0, :cond_d

    .line 2290
    return-void

    .line 2293
    :cond_d
    instance-of p1, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz p1, :cond_12

    .line 2294
    return-void

    .line 2296
    :cond_12
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserListAdapter;->getSurfacedTargetInfo()Ljava/util/List;

    move-result-object p1

    .line 2297
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 2299
    invoke-interface {v1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    .line 2300
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 2301
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 2302
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2303
    new-instance v3, Landroid/app/prediction/AppTargetId;

    .line 2304
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "shortcut_target"

    filled-new-array {v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s/%s/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    .line 2303
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2307
    :cond_5f
    goto :goto_1f

    .line 2308
    :cond_60
    const-string p1, "direct_share"

    invoke-virtual {v0, p1, p2}, Landroid/app/prediction/AppPredictor;->notifyLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V

    .line 2309
    return-void
.end method

.method private blacklist sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Lcom/android/internal/app/ChooserListAdapter;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 2099
    if-eqz p3, :cond_38

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_d

    goto :goto_38

    .line 2100
    :cond_d
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resultList and appTargets must have the same size. resultList.size()="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 2101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " appTargets.size()="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2102
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2104
    :cond_38
    :goto_38
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lcom/android/internal/app/ChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 2105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_43
    if-ltz v2, :cond_64

    .line 2106
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2107
    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/ChooserActivity;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 2108
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2109
    if-eqz p3, :cond_61

    .line 2110
    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2105
    :cond_61
    add-int/lit8 v2, v2, -0x1

    goto :goto_43

    .line 2116
    :cond_64
    if-nez p3, :cond_68

    const/4 v1, 0x2

    goto :goto_69

    .line 2117
    :cond_68
    const/4 v1, 0x3

    .line 2122
    :goto_69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2123
    move v3, v0

    :goto_6f
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v4

    if-ge v3, v4, :cond_98

    .line 2124
    invoke-virtual {p2, v3}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v4

    .line 2125
    nop

    .line 2127
    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 2126
    invoke-direct {p0, p1, v5}, Lcom/android/internal/app/ChooserActivity;->filterShortcutsByTargetComponentName(Ljava/util/List;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v5

    .line 2128
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_89

    .line 2129
    goto :goto_95

    .line 2131
    :cond_89
    invoke-virtual {p0, v5, p1, p3, v1}, Lcom/android/internal/app/ChooserActivity;->convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    .line 2134
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    invoke-direct {v6, v4, v5, p4}, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 2136
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2123
    :goto_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 2139
    :cond_98
    new-array p1, v0, [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 2140
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 2139
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/ChooserActivity;->sendShortcutManagerShareTargetResults(I[Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;)V

    .line 2141
    return-void
.end method

.method private blacklist setHorizontalScrollingEnabled(Z)V
    .registers 3

    .line 3151
    const v0, 0x10204a6

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverViewPager;

    .line 3152
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverViewPager;->setSwipingEnabled(Z)V

    .line 3153
    return-void
.end method

.method private blacklist setVerticalScrollEnabled(Z)V
    .registers 3

    .line 3156
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3157
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 3158
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserGridLayoutManager;

    .line 3159
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->setVerticalScrollEnabled(Z)V

    .line 3160
    return-void
.end method

.method private blacklist setupAppPredictorForUser(Landroid/os/UserHandle;Landroid/app/prediction/AppPredictor$Callback;)Landroid/app/prediction/AppPredictor;
    .registers 4

    .line 778
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    .line 779
    if-nez p1, :cond_8

    .line 780
    const/4 p1, 0x0

    return-object p1

    .line 782
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    .line 783
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    .line 784
    return-object p1
.end method

.method private blacklist setupScrollListener()V
    .registers 6

    .line 2890
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-nez v0, :cond_5

    .line 2891
    return-void

    .line 2893
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x1020013

    goto :goto_12

    :cond_f
    const v0, 0x1020278

    .line 2894
    :goto_12
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2895
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v1

    .line 2896
    nop

    .line 2897
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 2898
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ChooserActivity$4;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/android/internal/app/ChooserActivity$4;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;FF)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView;->addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V

    .line 2926
    return-void
.end method

.method private blacklist shouldDisplayLandscape(I)Z
    .registers 3

    .line 1099
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private blacklist shouldNearbyShareBeFirstInRankedRow()Z
    .registers 2

    .line 4270
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsNearbyShareFirstTargetInRankedApp:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist shouldNearbyShareBeIncludedAsActionButton()Z
    .registers 2

    .line 4274
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeFirstInRankedRow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist shouldQueryShortcutManager(Landroid/os/UserHandle;)Z
    .registers 5

    .line 2077
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2078
    return v1

    .line 2080
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2081
    return v1

    .line 2083
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 2084
    return v2

    .line 2086
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2087
    return v2

    .line 2089
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2090
    return v2

    .line 2092
    :cond_29
    return v1
.end method

.method private blacklist shouldShowExtraRow(I)Z
    .registers 4

    .line 2771
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2774
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    .line 2773
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2771
    :goto_19
    return v0
.end method

.method private blacklist shouldShowStickyContentPreview()Z
    .registers 3

    .line 2952
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreviewNoOrientationCheck()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2953
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 2952
    :goto_16
    return v0
.end method

.method private blacklist shouldShowStickyContentPreviewNoOrientationCheck()Z
    .registers 5

    .line 2957
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2958
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2957
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2959
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v0, v2

    .line 2960
    :goto_1c
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreviewWhenEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2961
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowContentPreview()Z

    move-result v0

    if-eqz v0, :cond_32

    move v1, v2

    goto :goto_33

    :cond_32
    nop

    .line 2960
    :goto_33
    return v1
.end method

.method private blacklist showStickyContentPreview()V
    .registers 3

    .line 3005
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3006
    return-void

    .line 3008
    :cond_7
    const v0, 0x1020296

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3009
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3010
    return-void
.end method

.method private blacklist startFinishAnimation()V
    .registers 3

    .line 3033
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->findRootView()Landroid/view/View;

    move-result-object v0

    .line 3034
    if-eqz v0, :cond_e

    .line 3035
    new-instance v1, Lcom/android/internal/app/ChooserActivity$FinishAnimation;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3037
    :cond_e
    return-void
.end method

.method private blacklist updateLayoutWidth(IILandroid/view/View;)V
    .registers 4

    .line 1130
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1131
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_15

    .line 1132
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1133
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1134
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    :cond_15
    return-void
.end method

.method private blacklist updateStickyContentPreview()V
    .registers 3

    .line 2986
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreviewNoOrientationCheck()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2991
    const v0, 0x1020296

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2992
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1c

    .line 2993
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 2994
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2997
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2998
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->showStickyContentPreview()V

    goto :goto_29

    .line 3000
    :cond_26
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->hideStickyContentPreview()V

    .line 3002
    :goto_29
    return-void
.end method

.method private blacklist updateTabPadding()V
    .registers 5

    .line 1116
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1117
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1118
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1121
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v1, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x105035f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v2, v1

    .line 1125
    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1127
    :cond_3a
    return-void
.end method

.method private static blacklist validForContentPreview(Landroid/net/Uri;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1647
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1648
    return v0

    .line 1650
    :cond_4
    const/4 v1, -0x2

    invoke-static {p0, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p0

    .line 1651
    if-eq p0, v1, :cond_2a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq p0, v1, :cond_2a

    .line 1652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dropped invalid content URI belonging to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ChooserActivity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    return v0

    .line 1655
    :cond_2a
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    .line 1787
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    array-length p1, p1

    if-lez p1, :cond_1a

    .line 1788
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    .line 1790
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1788
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v1}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V

    .line 1794
    :cond_1a
    return-void
.end method

.method protected blacklist appliedThemeResId()I
    .registers 2

    .line 773
    const v0, 0x1030409

    return v0
.end method

.method protected blacklist applyFooterView(I)V
    .registers 5

    .line 2002
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    .line 2004
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 2005
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setFooterHeight(I)V

    .line 2004
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2007
    :cond_15
    return-void
.end method

.method blacklist checkTargetSourceIntent(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)Z
    .registers 7

    .line 2434
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object p1

    .line 2435
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_1d

    .line 2436
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2437
    invoke-virtual {v3, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2438
    const/4 p1, 0x1

    return p1

    .line 2435
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2441
    :cond_1d
    return v1
.end method

.method public blacklist convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .line 2201
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2202
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v5, :cond_3d

    .line 2203
    move v5, v6

    :goto_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3a

    .line 2204
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v7

    .line 2205
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    .line 2206
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2203
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 2209
    :cond_3a
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2212
    :cond_3d
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2213
    nop

    :goto_47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d0

    .line 2214
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 2215
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 2218
    const/4 v10, 0x3

    const/4 v11, 0x0

    const v12, 0x3c23d70a    # 0.01f

    const/high16 v13, 0x3f800000    # 1.0f

    if-ne v3, v10, :cond_73

    .line 2220
    int-to-float v10, v8

    mul-float/2addr v10, v12

    sub-float/2addr v13, v10

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move v14, v10

    goto :goto_87

    .line 2223
    :cond_73
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 2224
    int-to-float v10, v10

    mul-float/2addr v10, v12

    sub-float/2addr v13, v10

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move v14, v10

    .line 2227
    :goto_87
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2228
    const-string v11, "android.intent.extra.shortcut.ID"

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    new-instance v11, Landroid/service/chooser/ChooserTarget;

    .line 2231
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v12

    .line 2233
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v13}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v15

    const/4 v13, 0x0

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 2235
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2236
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v10, :cond_c3

    if-eqz v2, :cond_c3

    .line 2237
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    .line 2238
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/prediction/AppTarget;

    .line 2237
    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    :cond_c3
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    if-eqz v8, :cond_cc

    .line 2241
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v8, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    :cond_cc
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_47

    .line 2245
    :cond_d0
    new-instance v0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;-><init>()V

    .line 2247
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2248
    return-object v5
.end method

.method protected blacklist createBlockerEmptyStateProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .registers 11

    .line 857
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    .line 859
    new-instance v1, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;

    .line 865
    if-eqz v0, :cond_f

    const-string v3, "Core.RESOLVER_CANT_SHARE_WITH_PERSONAL"

    goto :goto_11

    :cond_f
    const-string v3, "Core.RESOLVER_CANT_ACCESS_PERSONAL"

    :goto_11
    move-object v5, v3

    .line 867
    if-eqz v0, :cond_19

    const v3, 0x1040958

    move v6, v3

    goto :goto_1d

    .line 868
    :cond_19
    const v3, 0x1040956

    move v6, v3

    :goto_1d
    const/16 v7, 0x9e

    const-string v8, "intent_chooser"

    const-string v3, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    const v4, 0x104095a

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .line 872
    move-object v9, v1

    new-instance v1, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;

    .line 878
    if-eqz v0, :cond_32

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_WORK"

    goto :goto_34

    :cond_32
    const-string v2, "Core.RESOLVER_CANT_ACCESS_WORK"

    :goto_34
    move-object v5, v2

    .line 880
    if-eqz v0, :cond_3c

    const v0, 0x1040959

    move v6, v0

    goto :goto_40

    .line 881
    :cond_3c
    const v0, 0x1040957

    move v6, v0

    :goto_40
    const/16 v7, 0x9f

    const-string v8, "intent_chooser"

    const-string v3, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    const v4, 0x104095a

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .line 885
    move-object v4, v1

    new-instance v1, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 887
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->createCrossProfileIntentsChecker()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v6

    move-object v3, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;-><init>(Landroid/os/UserHandle;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;Landroid/os/UserHandle;)V

    .line 885
    return-object v1
.end method

.method public blacklist createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;"
        }
    .end annotation

    .line 2522
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/app/ChooserActivity;->createChooserListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    .line 2524
    move-object p2, p0

    .line 2525
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createAppPredictorCallback(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ResolverAppPredictorCallback;

    move-result-object p3

    .line 2526
    invoke-virtual {p3}, Lcom/android/internal/app/ResolverAppPredictorCallback;->asCallback()Landroid/app/prediction/AppPredictor$Callback;

    move-result-object p4

    .line 2527
    invoke-direct {p0, p6, p4}, Lcom/android/internal/app/ChooserActivity;->setupAppPredictorForUser(Landroid/os/UserHandle;Landroid/app/prediction/AppPredictor$Callback;)Landroid/app/prediction/AppPredictor;

    move-result-object p5

    .line 2528
    invoke-virtual {p1, p5}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictor(Landroid/app/prediction/AppPredictor;)V

    .line 2529
    invoke-virtual {p1, p4, p3}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictorCallback(Landroid/app/prediction/AppPredictor$Callback;Lcom/android/internal/app/ResolverAppPredictorCallback;)V

    .line 2531
    new-instance p3, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-direct {p3, p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    return-object p3
.end method

.method public blacklist createChooserListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/internal/app/ChooserListAdapter;"
        }
    .end annotation

    .line 2542
    move-object/from16 v0, p6

    .line 2541
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isLaunchedAsCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2542
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2543
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    move-object v13, v1

    goto :goto_19

    :cond_18
    move-object v13, v0

    .line 2544
    :goto_19
    new-instance v2, Lcom/android/internal/app/ChooserListAdapter;

    .line 2545
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v8

    .line 2546
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2547
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v12

    move-object v10, p0

    move-object v9, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v13}, Lcom/android/internal/app/ChooserListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V

    .line 2544
    return-object v2
.end method

.method protected blacklist createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 5

    .line 1144
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1145
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v1

    .line 1146
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/internal/app/ChooserActivity;->displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .registers 13

    .line 2552
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForShareActivitiesIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v4

    .line 2554
    if-eqz v4, :cond_1d

    .line 2555
    new-instance v0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2556
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;Lcom/android/internal/app/ChooserActivityLogger;)V

    move-object v8, v5

    move-object v2, p0

    move-object v9, v0

    goto :goto_36

    .line 2558
    :cond_1d
    move-object v8, p1

    new-instance v1, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    .line 2561
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2562
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2564
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v6

    .line 2565
    invoke-virtual {p0, v8}, Lcom/android/internal/app/ChooserActivity;->getResolverRankerServiceUserHandleList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V

    move-object v9, v1

    .line 2568
    :goto_36
    invoke-virtual {p0, v8}, Lcom/android/internal/app/ChooserActivity;->getQueryIntentsUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object p1

    .line 2569
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserListController;

    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 2572
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v5

    .line 2573
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/app/ChooserActivity;->mLaunchedFromUid:I

    .line 2577
    if-nez p1, :cond_4c

    move-object v10, v8

    goto :goto_4d

    :cond_4c
    move-object v10, p1

    :goto_4d
    move-object v3, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/app/ChooserActivity$ChooserListController;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;)V

    .line 2569
    return-object v1
.end method

.method protected blacklist createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 845
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 846
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity;->createChooserMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    goto :goto_13

    .line 849
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity;->createChooserMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 852
    :goto_13
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    return-object p1
.end method

.method protected blacklist createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .registers 3

    .line 985
    new-instance v0, Lcom/android/internal/app/ChooserActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$3;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method protected blacklist getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;
    .registers 2

    .line 2474
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    if-nez v0, :cond_b

    .line 2475
    new-instance v0, Lcom/android/internal/app/ChooserActivityLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivityLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    .line 2477
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    return-object v0
.end method

.method protected blacklist getEditSharingComponent()Landroid/content/ComponentName;
    .registers 3

    .line 1165
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_19

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_19

    .line 1169
    :cond_14
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 1167
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist getEditSharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 10

    .line 1174
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getEditSharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1176
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1180
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0xc3

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1181
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1182
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1184
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ChooserActivity"

    if-eqz v2, :cond_91

    .line 1185
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_47

    .line 1186
    const-string v1, "android.intent.extra.STREAM"

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1187
    if-eqz v1, :cond_46

    .line 1188
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1189
    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    :cond_46
    nop

    .line 1196
    :cond_47
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v6, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1198
    if-eqz v1, :cond_74

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_58

    goto :goto_74

    .line 1204
    :cond_58
    move-object v3, v1

    new-instance v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1205
    const v0, 0x10409c5

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 1206
    const p1, 0x10805da

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1207
    return-object v1

    .line 1199
    :cond_74
    :goto_74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device-specified image edit component ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") not available"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-object v3

    .line 1193
    :cond_91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return-object v3
.end method

.method public blacklist getLayoutResource()I
    .registers 2

    .line 1798
    const v0, 0x1090062

    return v0
.end method

.method public blacklist getMaxRankedTargets()I
    .registers 2

    .line 2821
    iget v0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected blacklist getMetricsCategory()Ljava/lang/String;
    .registers 2

    .line 3117
    const-string v0, "intent_chooser"

    return-object v0
.end method

.method protected blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 2467
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 2468
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2470
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method protected blacklist getNearbySharingComponent()Landroid/content/ComponentName;
    .registers 3

    .line 1151
    nop

    .line 1152
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1151
    const-string v1, "nearby_sharing_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1155
    const v0, 0x1040250

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1157
    :cond_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1158
    const/4 v0, 0x0

    return-object v0

    .line 1160
    :cond_20
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 11

    .line 1212
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1213
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1215
    :cond_8
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1216
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1217
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v7, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 1219
    if-eqz v4, :cond_7e

    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_22

    goto/16 :goto_7e

    .line 1227
    :cond_22
    nop

    .line 1228
    nop

    .line 1229
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1230
    if-eqz v2, :cond_55

    .line 1232
    :try_start_2a
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1233
    const-string v3, "android.service.chooser.chip_label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1234
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_3c} :catch_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_3c} :catch_4b

    .line 1235
    :try_start_3c
    const-string v5, "android.service.chooser.chip_icon"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1236
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_46} :catch_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_52

    .line 1238
    :catch_47
    move-exception v0

    goto :goto_4d

    .line 1237
    :catch_49
    move-exception v0

    goto :goto_52

    .line 1238
    :catch_4b
    move-exception v0

    move-object v3, v1

    :goto_4d
    move-object v0, v1

    move-object v1, v3

    goto :goto_56

    .line 1237
    :catch_50
    move-exception v0

    move-object v3, v1

    .line 1239
    :goto_52
    move-object v0, v1

    move-object v1, v3

    goto :goto_56

    .line 1230
    :cond_55
    move-object v0, v1

    .line 1241
    :goto_56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1242
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v5, v1

    goto :goto_67

    .line 1241
    :cond_66
    move-object v5, v1

    .line 1244
    :goto_67
    if-nez v0, :cond_71

    .line 1245
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1248
    :cond_71
    new-instance v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const-string v6, ""

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 1250
    invoke-virtual {v2, v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    return-object v2

    .line 1220
    :cond_7e
    :goto_7e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device-specified nearby sharing component ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") not available"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChooserActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return-object v1
.end method

.method public blacklist getReferrerFillInIntent()Landroid/content/Intent;
    .registers 2

    .line 2816
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5

    .line 1748
    nop

    .line 1749
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_18

    .line 1750
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1751
    if-eqz v0, :cond_18

    .line 1752
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1753
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object p2, v1

    .line 1756
    :cond_18
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 1757
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 1758
    :cond_2c
    nop

    .line 1759
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1758
    invoke-static {p2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    .line 1764
    const-string p1, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1766
    :cond_41
    return-object p2
.end method

.method public blacklist handlePackagesChanged()V
    .registers 2

    .line 997
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 998
    return-void
.end method

.method protected blacklist isImageType(Ljava/lang/String;)Z
    .registers 3

    .line 1660
    if-eqz p1, :cond_c

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method protected blacklist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .registers 3

    .line 2885
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2886
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public blacklist isSendAction(Landroid/content/Intent;)Z
    .registers 4

    .line 2930
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2931
    return v0

    .line 2934
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2935
    if-nez p1, :cond_b

    .line 2936
    return v0

    .line 2939
    :cond_b
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    .line 2943
    :cond_1c
    return v0

    .line 2940
    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method protected blacklist isUserRunning(Landroid/os/UserHandle;)Z
    .registers 3

    .line 2873
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2874
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method protected blacklist isUserUnlocked(Landroid/os/UserHandle;)Z
    .registers 3

    .line 2879
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2880
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method protected blacklist isWorkProfile()Z
    .registers 3

    .line 979
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 980
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 979
    return v0
.end method

.method protected blacklist loadThumbnail(Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .registers 5

    .line 2582
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    if-nez p2, :cond_6

    goto :goto_14

    .line 2587
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_e} :catch_f

    return-object p1

    .line 2588
    :catch_f
    move-exception p2

    .line 2589
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logContentPreviewWarning(Landroid/net/Uri;)V

    .line 2591
    return-object v0

    .line 2583
    :cond_14
    :goto_14
    return-object v0
.end method

.method public blacklist makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
    .registers 3

    .line 2811
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist maybeLogProfileChange()V
    .registers 2

    .line 4266
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logShareheetProfileChanged()V

    .line 4267
    return-void
.end method

.method public blacklist onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 10

    .line 1771
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_39

    .line 1772
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 1773
    if-eqz p1, :cond_39

    .line 1774
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    .line 1776
    :try_start_15
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, -0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1e
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 1780
    goto :goto_39

    .line 1777
    :catch_1f
    move-exception v0

    move-object p1, v0

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch supplied IntentSender to report the chosen component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChooserActivity"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_39
    :goto_39
    return-void
.end method

.method protected blacklist onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    .line 3136
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3137
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3138
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setEmptyStateBottomOffset(I)V

    .line 3139
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3140
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getActiveEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x10204d1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3139
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupContainerPadding(Landroid/view/View;)V

    .line 3143
    :cond_1f
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3144
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz p2, :cond_2c

    .line 3145
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 3147
    :cond_2c
    return-object p1
.end method

.method public blacklist onButtonClick(Landroid/view/View;)V
    .registers 2

    .line 3106
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1081
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1082
    const v0, 0x10204a6

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    .line 1083
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1084
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    .line 1087
    :cond_17
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->shouldDisplayLandscape(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mShouldDisplayLandscape:Z

    .line 1088
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    .line 1089
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setMaxTargetsPerRow(I)V

    .line 1090
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->adjustPreviewWidth(ILandroid/view/View;)V

    .line 1091
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateStickyContentPreview()V

    .line 1092
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateTabPadding()V

    .line 1093
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 25

    .line 542
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 544
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getUserId()I

    move-result v2

    .line 542
    const-string v3, "secure_frp_mode"

    const/4 v9, 0x0

    invoke-static {v0, v3, v9, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v2, "ChooserActivity"

    const/4 v10, 0x1

    if-ne v0, v10, :cond_22

    .line 545
    const-string v0, "Sharing disabled due to active FRP lock."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 547
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 548
    return-void

    .line 550
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 551
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 553
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetTriggered()V

    .line 555
    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity;->isAppPredictionServiceAvailable()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/app/ChooserActivity;->mIsAppPredictorComponentAvailable:Z

    .line 557
    iput-boolean v9, v1, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    .line 558
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 559
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 560
    instance-of v0, v4, Landroid/net/Uri;

    if-eqz v0, :cond_54

    .line 562
    :try_start_4a
    invoke-interface {v4}, Landroid/os/Parcelable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4
    :try_end_52
    .catch Ljava/net/URISyntaxException; {:try_start_4a .. :try_end_52} :catch_53

    .line 566
    goto :goto_54

    .line 564
    :catch_53
    move-exception v0

    .line 569
    :cond_54
    :goto_54
    instance-of v0, v4, Landroid/content/Intent;

    const/4 v5, 0x0

    if-nez v0, :cond_76

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target is not an intent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 572
    invoke-super {v1, v5}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 573
    return-void

    .line 575
    :cond_76
    check-cast v4, Landroid/content/Intent;

    .line 576
    if-eqz v4, :cond_7d

    .line 577
    invoke-direct {v1, v4}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 579
    :cond_7d
    nop

    .line 580
    const-string v0, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_e3

    .line 582
    if-nez v4, :cond_8a

    move v6, v10

    goto :goto_8b

    :cond_8a
    move v6, v9

    .line 584
    :goto_8b
    array-length v7, v0

    if-eqz v6, :cond_8f

    sub-int/2addr v7, v10

    :cond_8f
    new-array v7, v7, [Landroid/content/Intent;

    .line 585
    move v8, v9

    :goto_92
    array-length v13, v0

    if-ge v8, v13, :cond_e0

    .line 586
    aget-object v13, v0, v8

    instance-of v13, v13, Landroid/content/Intent;

    if-nez v13, :cond_c4

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not an Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 590
    invoke-super {v1, v5}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 591
    return-void

    .line 593
    :cond_c4
    aget-object v13, v0, v8

    check-cast v13, Landroid/content/Intent;

    .line 594
    if-nez v8, :cond_d2

    if-nez v4, :cond_d2

    .line 595
    nop

    .line 596
    invoke-direct {v1, v13}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    move-object v4, v13

    goto :goto_dd

    .line 598
    :cond_d2
    if-eqz v6, :cond_d7

    add-int/lit8 v14, v8, -0x1

    goto :goto_d8

    :cond_d7
    move v14, v8

    :goto_d8
    aput-object v13, v7, v14

    .line 599
    invoke-direct {v1, v13}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 585
    :goto_dd
    add-int/lit8 v8, v8, 0x1

    goto :goto_92

    .line 602
    :cond_e0
    invoke-virtual {v1, v7}, Lcom/android/internal/app/ChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    .line 605
    :cond_e3
    const-string v0, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    .line 608
    nop

    .line 609
    if-eqz v4, :cond_100

    .line 610
    invoke-virtual {v1, v4}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 611
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_101

    .line 613
    :cond_fb
    const-string v0, "Ignoring intent\'s EXTRA_TITLE, deprecated in P. You may wish to set a preview title by using EXTRA_TITLE property of the wrapped EXTRA_INTENT."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_100
    move-object v0, v5

    :goto_101
    nop

    .line 620
    if-nez v0, :cond_108

    .line 621
    const v6, 0x10401ee

    goto :goto_109

    .line 620
    :cond_108
    move v6, v9

    .line 624
    :goto_109
    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 625
    nop

    .line 626
    const/4 v13, 0x2

    if-eqz v7, :cond_15f

    .line 627
    array-length v8, v7

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 628
    new-array v14, v8, [Landroid/content/Intent;

    .line 629
    move v15, v9

    :goto_11b
    if-ge v15, v8, :cond_15c

    .line 630
    move/from16 v16, v9

    aget-object v9, v7, v15

    instance-of v9, v9, Landroid/content/Intent;

    if-nez v9, :cond_14e

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial intent #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not an Intent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v7, v15

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 633
    invoke-super {v1, v5}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 634
    return-void

    .line 636
    :cond_14e
    aget-object v9, v7, v15

    check-cast v9, Landroid/content/Intent;

    .line 637
    invoke-direct {v1, v9}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 638
    aput-object v9, v14, v15

    .line 629
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v16

    goto :goto_11b

    :cond_15c
    move/from16 v16, v9

    goto :goto_162

    .line 626
    :cond_15f
    move/from16 v16, v9

    move-object v14, v5

    .line 642
    :goto_162
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.extra.REFERRER"

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    .line 644
    const-string v7, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    const-class v8, Landroid/content/IntentSender;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    iput-object v7, v1, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 646
    const-string v7, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    const-class v8, Landroid/content/IntentSender;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    iput-object v7, v1, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    .line 648
    invoke-virtual {v1, v10}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    .line 650
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    .line 652
    const-string v7, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 656
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 657
    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeFirstInRankedRow()Z

    move-result v9

    if-nez v9, :cond_1a8

    if-eqz v8, :cond_1a8

    move v9, v10

    goto :goto_1aa

    :cond_1a8
    move/from16 v9, v16

    .line 660
    :goto_1aa
    if-eqz v7, :cond_1f3

    .line 661
    array-length v15, v7

    add-int/2addr v15, v9

    new-array v15, v15, [Landroid/content/ComponentName;

    .line 662
    move/from16 v5, v16

    :goto_1b2
    array-length v13, v7

    if-ge v5, v13, :cond_1ea

    .line 663
    aget-object v13, v7, v5

    instance-of v13, v13, Landroid/content/ComponentName;

    if-nez v13, :cond_1e0

    .line 664
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Filtered component #"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " not a ComponentName: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v5, v7, v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    nop

    .line 666
    const/4 v15, 0x0

    goto :goto_1ea

    .line 668
    :cond_1e0
    aget-object v13, v7, v5

    check-cast v13, Landroid/content/ComponentName;

    aput-object v13, v15, v5

    .line 662
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x2

    goto :goto_1b2

    .line 670
    :cond_1ea
    :goto_1ea
    if-eqz v9, :cond_1f0

    .line 671
    array-length v5, v15

    sub-int/2addr v5, v10

    aput-object v8, v15, v5

    .line 674
    :cond_1f0
    iput-object v15, v1, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    goto :goto_1fe

    .line 675
    :cond_1f3
    if-eqz v9, :cond_1fe

    .line 676
    new-array v5, v10, [Landroid/content/ComponentName;

    iput-object v5, v1, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    .line 677
    iget-object v5, v1, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    aput-object v8, v5, v16

    goto :goto_1ff

    .line 675
    :cond_1fe
    :goto_1fe
    nop

    .line 680
    :goto_1ff
    const-string v5, "android.intent.extra.CHOOSER_TARGETS"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 681
    if-eqz v5, :cond_255

    .line 682
    array-length v7, v5

    const/4 v9, 0x2

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 683
    new-array v8, v7, [Landroid/service/chooser/ChooserTarget;

    .line 684
    move/from16 v13, v16

    :goto_211
    if-ge v13, v7, :cond_251

    .line 685
    aget-object v15, v5, v13

    instance-of v15, v15, Landroid/service/chooser/ChooserTarget;

    if-nez v15, :cond_23e

    .line 686
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Chooser target #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not a ChooserTarget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v5, v5, v13

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    nop

    .line 688
    const/4 v5, 0x0

    goto :goto_252

    .line 690
    :cond_23e
    aget-object v15, v5, v13

    check-cast v15, Landroid/service/chooser/ChooserTarget;

    .line 691
    invoke-direct {v1, v15}, Lcom/android/internal/app/ChooserActivity;->hasValidIcon(Landroid/service/chooser/ChooserTarget;)Z

    move-result v18

    if-nez v18, :cond_24c

    .line 692
    invoke-static {v15}, Lcom/android/internal/app/ChooserActivity;->removeIcon(Landroid/service/chooser/ChooserTarget;)Landroid/service/chooser/ChooserTarget;

    move-result-object v15

    .line 694
    :cond_24c
    aput-object v15, v8, v13

    .line 684
    add-int/lit8 v13, v13, 0x1

    goto :goto_211

    :cond_251
    move-object v5, v8

    .line 696
    :goto_252
    iput-object v5, v1, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    goto :goto_256

    .line 681
    :cond_255
    const/4 v9, 0x2

    .line 699
    :goto_256
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0057

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    .line 700
    nop

    .line 701
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v1, v2}, Lcom/android/internal/app/ChooserActivity;->shouldDisplayLandscape(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/app/ChooserActivity;->mShouldDisplayLandscape:Z

    .line 702
    const-string v2, "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

    move/from16 v13, v16

    invoke-virtual {v3, v2, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->setRetainInOnStop(Z)V

    .line 703
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object v3, v4

    move v5, v6

    move-object v6, v14

    move-object v4, v0

    invoke-super/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    .line 707
    iget-wide v4, v1, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    sub-long/2addr v4, v11

    .line 709
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v7, 0xd6

    invoke-direct {v2, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 710
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->isWorkProfile()Z

    move-result v7

    if-eqz v7, :cond_2a6

    move v10, v9

    goto :goto_2a7

    .line 711
    :cond_2a6
    nop

    .line 710
    :goto_2a7
    invoke-virtual {v2, v10}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 712
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x671

    invoke-virtual {v2, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 713
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x675

    invoke-virtual {v2, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 709
    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 715
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_2ea

    .line 716
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 719
    invoke-virtual {v1, v3}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2e0

    .line 720
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 723
    :cond_2e0
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$1;

    invoke-direct {v2, v1}, Lcom/android/internal/app/ChooserActivity$1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnCollapsedChangedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;)V

    .line 745
    :cond_2ea
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v14

    .line 747
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v16

    .line 748
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    .line 749
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-nez v0, :cond_2fd

    move/from16 v18, v13

    goto :goto_302

    :cond_2fd
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    array-length v0, v0

    move/from16 v18, v0

    .line 750
    :goto_302
    if-nez v6, :cond_307

    move/from16 v19, v13

    goto :goto_30a

    :cond_307
    array-length v9, v6

    move/from16 v19, v9

    .line 751
    :goto_30a
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->isWorkProfile()Z

    move-result v20

    .line 752
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v21

    .line 753
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    .line 745
    const/16 v15, 0x103

    invoke-interface/range {v14 .. v22}, Lcom/android/internal/app/ChooserActivityLogger;->logShareStarted(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;)V

    .line 755
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    .line 757
    new-instance v0, Lcom/android/internal/app/ChooserActivity$2;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ChooserActivity$2;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 768
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->postponeTransition()V

    .line 769
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 3

    .line 1724
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    .line 1726
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1727
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 1730
    :cond_10
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1731
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 1732
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 1734
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->-$$Nest$mremoveAllMessages(Lcom/android/internal/app/ChooserActivity$ChooserHandler;)V

    .line 1736
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mcancelLoads(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    .line 1738
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->destroyAppPredictor()V

    .line 1739
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 1740
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->destroyAppPredictor()V

    .line 1742
    :cond_44
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 1743
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 1744
    return-void
.end method

.method public blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3

    .line 2805
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 2806
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 2807
    return-void
.end method

.method blacklist onHorizontalSwipeStateChanged(I)V
    .registers 5

    .line 3164
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_f

    .line 3165
    iget p1, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    if-nez p1, :cond_1a

    .line 3166
    iput v1, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    .line 3167
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->setVerticalScrollEnabled(Z)V

    goto :goto_1a

    .line 3169
    :cond_f
    if-nez p1, :cond_1a

    .line 3170
    iget p1, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    if-ne p1, v1, :cond_1a

    .line 3171
    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    .line 3172
    invoke-direct {p0, v2}, Lcom/android/internal/app/ChooserActivity;->setVerticalScrollEnabled(Z)V

    .line 3175
    :cond_1a
    :goto_1a
    return-void
.end method

.method public blacklist onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V
    .registers 5

    .line 2826
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->setupScrollListener()V

    .line 2828
    check-cast p1, Lcom/android/internal/app/ChooserListAdapter;

    .line 2829
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2830
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2831
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2832
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 2833
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2834
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupListAdapter(I)V

    .line 2837
    :cond_2f
    iget-object v0, p1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_40

    iget-object v0, p1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    .line 2838
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_40

    .line 2841
    :cond_3c
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->updateAlphabeticalList()V

    goto :goto_43

    .line 2839
    :cond_40
    :goto_40
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 2844
    :goto_43
    if-eqz p2, :cond_56

    .line 2845
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppLoadComplete()V

    .line 2846
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->maybeQueryAdditionalPostProcessingTargets(Lcom/android/internal/app/ChooserListAdapter;)V

    .line 2847
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 2849
    :cond_56
    return-void
.end method

.method protected blacklist onProfileTabSelected()V
    .registers 2

    .line 3122
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3123
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    .line 3124
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->updateDirectShareExpansion()V

    .line 3128
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->setVerticalScrollEnabled(Z)V

    .line 3129
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_16

    .line 3130
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->scrollNestedScrollableChildBackToTop()V

    .line 3132
    :cond_16
    return-void
.end method

.method blacklist onRefinementCanceled()V
    .registers 2

    .line 2426
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_c

    .line 2427
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 2428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 2430
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 2431
    return-void
.end method

.method blacklist onRefinementResult(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)V
    .registers 6

    .line 2405
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_c

    .line 2406
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 2407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 2409
    :cond_c
    const-string v0, "ChooserActivity"

    if-nez p1, :cond_16

    .line 2410
    const-string p1, "Refinement result intent did not match any known targets; canceling"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 2411
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 2412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefinementResult: Selected target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot match refined source intent "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 2415
    :cond_3d
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/app/chooser/TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    .line 2416
    invoke-super {p0, p1, v0}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 2417
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2418
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 2419
    return-void

    .line 2422
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    .line 2423
    return-void
.end method

.method protected whitelist onResume()V
    .registers 3

    .line 1074
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onResume()V

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->maybeCancelFinishAnimation()Z

    .line 1077
    return-void
.end method

.method protected whitelist onStop()V
    .registers 2

    .line 1716
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onStop()V

    .line 1717
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->maybeCancelFinishAnimation()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1718
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 1720
    :cond_c
    return-void
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .registers 11

    .line 1827
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_6f

    .line 1828
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1829
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v0

    .line 1830
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 1831
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1832
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_45

    .line 1833
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/Intent;

    .line 1834
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_31
    if-ge v2, v3, :cond_40

    .line 1835
    add-int/lit8 v5, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    aput-object v6, v1, v5

    .line 1834
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1837
    :cond_40
    const-string v0, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1839
    :cond_45
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_4e

    .line 1840
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 1842
    :cond_4e
    new-instance v0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 1843
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1846
    :try_start_5d
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_66
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5d .. :try_end_66} :catch_67

    .line 1847
    return v7

    .line 1848
    :catch_67
    move-exception v0

    .line 1849
    const-string v1, "ChooserActivity"

    const-string v2, "Refinement IntentSender failed to send"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1853
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1854
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result p1

    return p1
.end method

.method protected blacklist postRebuildList(Z)Z
    .registers 3

    .line 957
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateStickyContentPreview()V

    .line 958
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 960
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    if-eqz v0, :cond_18

    .line 961
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->logActionShareWithPreview()V

    .line 963
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->postRebuildListInternal(Z)Z

    move-result p1

    return p1
.end method

.method protected blacklist queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V
    .registers 5

    .line 2048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivity;->mQueriedSharingShortcutsTimeMs:J

    .line 2049
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2050
    if-nez p2, :cond_16

    .line 2051
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object p2

    .line 2052
    if-eqz p2, :cond_16

    .line 2053
    invoke-virtual {p2}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    .line 2054
    return-void

    .line 2058
    :cond_16
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object p2

    .line 2059
    if-nez p2, :cond_1d

    .line 2060
    return-void

    .line 2063
    :cond_1d
    new-instance v1, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 2070
    return-void
.end method

.method public blacklist queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 9

    .line 1508
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist resetButtonBar()V
    .registers 1

    .line 3113
    return-void
.end method

.method protected blacklist sendShortcutManagerShareTargetResults(I[Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;)V
    .registers 5

    .line 2157
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2158
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2159
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2160
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2161
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2162
    return-void
.end method

.method protected blacklist shouldAddFooterView()Z
    .registers 2

    .line 1997
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .registers 4

    .line 1811
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1812
    const/4 p1, 0x0

    return p1

    .line 1815
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public blacklist shouldGetActivityMetadata()Z
    .registers 2

    .line 1803
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldShowContentPreview()Z
    .registers 2

    .line 2977
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldShowServiceTargets()Z
    .registers 2

    .line 2982
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowContentPreview()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected blacklist shouldShowStickyContentPreviewWhenEmpty()Z
    .registers 2

    .line 2972
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startSelected(IZZ)V
    .registers 13

    .line 1859
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 1860
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    .line 1861
    nop

    .line 1862
    invoke-virtual {v0, p1, p3}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 1863
    if-eqz v1, :cond_12

    instance-of v2, v1, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;

    if-eqz v2, :cond_12

    .line 1864
    return-void

    .line 1867
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    sub-long/2addr v2, v4

    .line 1869
    instance-of v4, v1, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v4, :cond_53

    .line 1870
    move-object v4, v1

    check-cast v4, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    .line 1871
    invoke-virtual {v4}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->hasSelected()Z

    move-result v5

    if-nez v5, :cond_53

    .line 1872
    new-instance p2, Lcom/android/internal/app/ChooserStackedAppDialogFragment;

    invoke-direct {p2}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;-><init>()V

    .line 1873
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1875
    nop

    .line 1876
    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 1875
    const-string v1, "user_handle"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1877
    const-string v0, "multi_dri_key"

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1879
    const-string v0, "which_key"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1880
    invoke-virtual {p2, p3}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1882
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p3, "targetDetailsFragment"

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1883
    return-void

    .line 1887
    :cond_53
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 1889
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_154

    .line 1892
    nop

    .line 1893
    nop

    .line 1894
    nop

    .line 1895
    nop

    .line 1896
    nop

    .line 1897
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result p2

    const/4 p3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_156

    move-object p2, v4

    move v0, v5

    goto/16 :goto_10b

    .line 1937
    :pswitch_6f
    nop

    .line 1938
    nop

    .line 1939
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p1

    .line 1941
    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1939
    const/4 v0, 0x3

    invoke-interface {p1, v0, p2, p3, v5}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    const/16 p1, 0xd9

    move-object p2, v4

    move v0, v5

    move v5, p1

    move p1, p3

    goto/16 :goto_10b

    .line 1899
    :pswitch_89
    nop

    .line 1902
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getChooserTargetForValue(I)Landroid/service/chooser/ChooserTarget;

    move-result-object p2

    .line 1903
    invoke-static {}, Landroid/util/HashedStringCache;->getInstance()Landroid/util/HashedStringCache;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1906
    invoke-virtual {p2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1907
    invoke-virtual {p2}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxHashSaltDays:I

    .line 1903
    const-string v6, "ChooserActivity"

    invoke-virtual {p3, p0, v6, p2, v0}, Landroid/util/HashedStringCache;->hashString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/HashedStringCache$HashResult;

    move-result-object p2

    .line 1909
    move-object p3, v1

    check-cast p3, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 1910
    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserActivity;->getRankedPosition(Lcom/android/internal/app/chooser/SelectableTargetInfo;)I

    move-result v0

    .line 1912
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v6, :cond_c9

    .line 1913
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    array-length v5, v5

    .line 1915
    :cond_c9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v6

    .line 1917
    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1919
    invoke-virtual {p3}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->isPinned()Z

    move-result p3

    .line 1915
    const/4 v7, 0x1

    invoke-interface {v6, v7, v1, p1, p3}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1921
    const/16 p3, 0xd8

    move v8, v5

    move v5, p3

    move p3, v0

    move v0, v8

    goto :goto_10b

    .line 1924
    :pswitch_e4
    nop

    .line 1925
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getSurfacedTargetInfo()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    .line 1926
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v5

    .line 1927
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p2

    .line 1929
    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1931
    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    move-result v1

    .line 1927
    const/4 v6, 0x2

    invoke-interface {p2, v6, v0, p1, v1}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1933
    const/16 p2, 0xd7

    move v0, v5

    move v5, p2

    move-object p2, v4

    .line 1948
    :goto_10b
    if-eqz v5, :cond_145

    .line 1949
    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1950
    if-eqz p2, :cond_134

    .line 1951
    const/16 v5, 0x6a8

    iget-object v6, p2, Landroid/util/HashedStringCache$HashResult;->hashedString:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1953
    iget p2, p2, Landroid/util/HashedStringCache$HashResult;->saltGeneration:I

    .line 1955
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1953
    const/16 v5, 0x6a9

    invoke-virtual {v1, v5, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1956
    nop

    .line 1957
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1956
    const/16 p3, 0x43f

    invoke-virtual {v1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1959
    :cond_134
    nop

    .line 1960
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1959
    const/16 p3, 0x43e

    invoke-virtual {v1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1961
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1964
    :cond_145
    iget-boolean p2, p0, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    if-eqz p2, :cond_154

    .line 1970
    const-string p2, "user_selection_cost_for_smart_sharing"

    long-to-int p3, v2

    invoke-static {v4, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1972
    const-string p2, "app_position_for_smart_sharing"

    invoke-static {v4, p2, p1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1975
    :cond_154
    return-void

    nop

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_89
        :pswitch_e4
        :pswitch_6f
    .end packed-switch
.end method

.method blacklist updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 5

    .line 2257
    if-eqz p1, :cond_c

    instance-of v0, p1, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v0, :cond_c

    .line 2258
    check-cast p1, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->getSelectedTarget()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object p1

    .line 2260
    :cond_c
    if-eqz p1, :cond_3c

    .line 2261
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->sendClickToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2262
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2263
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2264
    if-eqz v0, :cond_3c

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3c

    if-eqz v1, :cond_3c

    .line 2265
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2266
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    .line 2267
    if-eqz v2, :cond_3c

    .line 2268
    invoke-direct {p0, p1, v2}, Lcom/android/internal/app/ChooserActivity;->sendImpressionToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;Lcom/android/internal/app/ChooserListAdapter;)V

    .line 2269
    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserListAdapter;->updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2270
    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2272
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 2270
    invoke-virtual {v2, p1, v1, v0}, Lcom/android/internal/app/ChooserListAdapter;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 2283
    :cond_3c
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    .line 2284
    return-void
.end method
