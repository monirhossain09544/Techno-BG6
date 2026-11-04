.class public Lcom/android/internal/app/ChooserListAdapter;
.super Lcom/android/internal/app/ResolverListAdapter;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;,
        Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;
    }
.end annotation


# static fields
.field public static final blacklist CALLER_TARGET_SCORE_BOOST:F = 900.0f

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_CHOOSER_TARGETS_PER_APP:I = 0x2

.field private static final blacklist MAX_SUGGESTED_APP_TARGETS:I = 0x4

.field public static final blacklist NO_POSITION:I = -0x1

.field private static final blacklist PINNED_SHORTCUT_TARGET_SCORE_BOOST:F = 1000.0f

.field public static final blacklist SHORTCUT_TARGET_SCORE_BOOST:F = 90.0f

.field private static final blacklist TAG:Ljava/lang/String; = "ChooserListAdapter"

.field public static final blacklist TARGET_BAD:I = -0x1

.field public static final blacklist TARGET_CALLER:I = 0x0

.field public static final blacklist TARGET_SERVICE:I = 0x1

.field public static final blacklist TARGET_STANDARD:I = 0x2

.field public static final blacklist TARGET_STANDARD_AZ:I = 0x3


# instance fields
.field private blacklist mAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

.field private blacklist mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

.field private blacklist mApplySharingAppLimits:Z

.field private final blacklist mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final blacklist mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field private final blacklist mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

.field private blacklist mEnableStackedApps:Z

.field private final blacklist mIconLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/app/chooser/SelectableTargetInfo;",
            "Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInitialIntentsUserSpace:Landroid/os/UserHandle;

.field private final blacklist mMaxShortcutTargetsPerApp:I

.field private blacklist mNumShortcutResults:I

.field private blacklist mOnIconLoadedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

.field private blacklist mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

.field private final blacklist mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

.field private final blacklist mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSortedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallerTargets(Lcom/android/internal/app/ChooserListAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableStackedApps(Lcom/android/internal/app/ChooserListAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mEnableStackedApps:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSortedList(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V
    .registers 25
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
            "Lcom/android/internal/app/ResolverListController;",
            "Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;",
            "Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/ChooserActivityLogger;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 156
    move-object/from16 v1, p3

    move-object/from16 v2, p9

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p11

    invoke-direct/range {v3 .. v12}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;ZLandroid/os/UserHandle;)V

    .line 66
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mEnableStackedApps:Z

    .line 90
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    .line 95
    new-instance v0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    .line 100
    new-instance v0, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    .line 119
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$1;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    .line 159
    nop

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x10e00e0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    .line 161
    iput-object v10, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    .line 162
    invoke-direct {p0}, Lcom/android/internal/app/ChooserListAdapter;->createPlaceHolders()V

    .line 163
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 164
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    .line 165
    iput-object v12, p0, Lcom/android/internal/app/ChooserListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    .line 167
    if-eqz v1, :cond_127

    .line 168
    move v6, v5

    :goto_6d
    array-length v0, v1

    if-ge v6, v0, :cond_127

    .line 169
    aget-object v7, v1, v6

    .line 170
    if-nez v7, :cond_76

    .line 171
    goto/16 :goto_123

    .line 178
    :cond_76
    nop

    .line 179
    nop

    .line 180
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 181
    const/4 v8, 0x0

    if-eqz v0, :cond_98

    .line 183
    :try_start_7f
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9
    :try_end_87
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_87} :catch_94

    .line 184
    :try_start_87
    new-instance v10, Landroid/content/pm/ResolveInfo;

    invoke-direct {v10}, Landroid/content/pm/ResolveInfo;-><init>()V
    :try_end_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_87 .. :try_end_8c} :catch_91

    .line 185
    :try_start_8c
    iput-object v9, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_8e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8c .. :try_end_8e} :catch_8f

    .line 188
    goto :goto_9a

    .line 186
    :catch_8f
    move-exception v0

    goto :goto_9a

    :catch_91
    move-exception v0

    move-object v10, v8

    goto :goto_9a

    :catch_94
    move-exception v0

    move-object v9, v8

    move-object v10, v9

    goto :goto_9a

    .line 181
    :cond_98
    move-object v9, v8

    move-object v10, v9

    .line 190
    :goto_9a
    if-nez v9, :cond_b6

    .line 192
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v9, Landroid/content/Intent;

    if-ne v0, v9, :cond_a6

    move-object v0, v7

    goto :goto_ab

    :cond_a6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 193
    :goto_ab
    const/high16 v9, 0x10000

    invoke-virtual {v2, v0, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 194
    if-eqz v10, :cond_b5

    iget-object v8, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_b5
    move-object v9, v8

    .line 196
    :cond_b6
    if-nez v9, :cond_d1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity found for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ChooserListAdapter"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    goto :goto_123

    .line 200
    :cond_d1
    nop

    .line 201
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 202
    instance-of v8, v7, Landroid/content/pm/LabeledIntent;

    if-eqz v8, :cond_fd

    .line 203
    move-object v8, v7

    check-cast v8, Landroid/content/pm/LabeledIntent;

    .line 204
    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 205
    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v9

    iput v9, v10, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 206
    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v10, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 207
    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v8

    iput v8, v10, Landroid/content/pm/ResolveInfo;->icon:I

    .line 208
    iget v8, v10, Landroid/content/pm/ResolveInfo;->icon:I

    iput v8, v10, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 210
    :cond_fd
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 211
    iput-boolean p2, v10, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 212
    iput v5, v10, Landroid/content/pm/ResolveInfo;->icon:I

    .line 214
    :cond_107
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    iput-object v0, v10, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 215
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    new-instance v8, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ChooserListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v9

    invoke-direct {v8, v7, v10, v7, v9}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x4

    if-ne v0, v7, :cond_123

    goto :goto_127

    .line 168
    :cond_123
    :goto_123
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6d

    .line 219
    :cond_127
    :goto_127
    const-string p1, "systemui"

    const-string v0, "apply_sharing_app_limits_in_sysui"

    invoke-static {p1, v0, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    .line 223
    return-void
.end method

.method private blacklist createPlaceHolders()V
    .registers 4

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 245
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 246
    nop

    :goto_9
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 247
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 249
    :cond_1b
    return-void
.end method

.method private blacklist insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .registers 8

    .line 670
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 671
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v0, :cond_15

    .line 672
    return v1

    .line 676
    :cond_15
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 677
    invoke-interface {p1, v3}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->isSimilar(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 678
    return v1

    .line 680
    :cond_2e
    goto :goto_1b

    .line 682
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 683
    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getModifiedScore()F

    move-result v3

    .line 684
    move v4, v1

    :goto_3a
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v5}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_67

    .line 686
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 687
    if-nez v5, :cond_56

    .line 688
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 689
    return v2

    .line 690
    :cond_56
    invoke-interface {v5}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getModifiedScore()F

    move-result v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_64

    .line 691
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 692
    return v2

    .line 685
    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 696
    :cond_67
    iget-object v3, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v3

    if-ge v0, v3, :cond_75

    .line 697
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    return v2

    .line 701
    :cond_75
    return v1
.end method

.method static synthetic blacklist lambda$completeServiceTargetLoading$0(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .registers 1

    .line 660
    instance-of p0, p0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    return p0
.end method

.method private blacklist loadDirectShareIcon(Lcom/android/internal/app/chooser/SelectableTargetInfo;)V
    .registers 4

    .line 335
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;

    .line 336
    if-nez v0, :cond_16

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->createLoadDirectShareIconTask(Lcom/android/internal/app/chooser/SelectableTargetInfo;)Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->loadIcon()V

    .line 341
    :cond_16
    return-void
.end method


# virtual methods
.method public blacklist addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;I",
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 564
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 565
    return-void

    .line 567
    :cond_d
    move-object/from16 v6, p1

    invoke-virtual {v0, v6, v2}, Lcom/android/internal/app/ChooserListAdapter;->getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F

    move-result v3

    .line 568
    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 569
    const/4 v4, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v2, v4, :cond_23

    const/4 v5, 0x3

    if-ne v2, v5, :cond_21

    goto :goto_23

    :cond_21
    move v2, v12

    goto :goto_24

    :cond_23
    :goto_23
    move v2, v11

    .line 572
    :goto_24
    if-eqz v2, :cond_29

    iget v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    goto :goto_2a

    .line 573
    :cond_29
    nop

    .line 574
    :goto_2a
    iget-boolean v5, v0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    if-eqz v5, :cond_38

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v13, v4

    goto :goto_3d

    .line 575
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v13, v4

    .line 576
    :goto_3d
    nop

    .line 577
    nop

    .line 578
    const/4 v4, 0x0

    move v14, v12

    move v15, v14

    :goto_42
    if-ge v14, v13, :cond_a2

    .line 579
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/service/chooser/ChooserTarget;

    .line 580
    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v5

    .line 581
    iget-boolean v8, v0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    if-eqz v8, :cond_5e

    .line 582
    mul-float/2addr v5, v3

    .line 583
    if-lez v14, :cond_5e

    cmpl-float v8, v5, v4

    if-ltz v8, :cond_5e

    .line 586
    const v5, 0x3f733333    # 0.95f

    mul-float/2addr v5, v4

    .line 589
    :cond_5e
    if-eqz v2, :cond_6a

    move-object/from16 v4, p4

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    move-object v10, v8

    goto :goto_6e

    .line 590
    :cond_6a
    move-object/from16 v4, p4

    const/4 v8, 0x0

    move-object v10, v8

    .line 591
    :goto_6e
    if-eqz v10, :cond_7b

    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 592
    const/high16 v8, 0x447a0000    # 1000.0f

    add-float/2addr v5, v8

    move v8, v5

    goto :goto_7c

    .line 594
    :cond_7b
    move v8, v5

    :goto_7c
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 595
    iget-object v9, v0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    .line 596
    new-instance v4, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    iget-object v9, v0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {v0, v4}, Lcom/android/internal/app/ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v4

    .line 600
    if-eqz v4, :cond_9a

    if-eqz v2, :cond_9a

    .line 601
    iget v5, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 604
    :cond_9a
    or-int/2addr v15, v4

    .line 614
    nop

    .line 578
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p1

    move v4, v8

    goto :goto_42

    .line 617
    :cond_a2
    if-eqz v15, :cond_a7

    .line 618
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 620
    :cond_a7
    return-void
.end method

.method protected blacklist alwaysShowSubLabel()Z
    .registers 2

    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist completeServiceTargetLoading()V
    .registers 3

    .line 660
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 661
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 662
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetEmptyDirectShareRow()V

    .line 665
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 666
    return-void
.end method

.method protected blacklist createLoadDirectShareIconTask(Lcom/android/internal/app/chooser/SelectableTargetInfo;)Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;
    .registers 4

    .line 345
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;-><init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;Lcom/android/internal/app/ChooserListAdapter-IA;)V

    return-object v0
.end method

.method blacklist createSortingTask(Z)Landroid/os/AsyncTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/os/AsyncTask<",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Ljava/lang/Void;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;>;"
        }
    .end annotation

    .line 722
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserListAdapter$3;-><init>(Lcom/android/internal/app/ChooserListAdapter;Z)V

    return-object v0
.end method

.method public blacklist destroyAppPredictor()V
    .registers 3

    .line 757
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 758
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v0, v1}, Landroid/app/prediction/AppPredictor;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V

    .line 759
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    .line 760
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictor(Landroid/app/prediction/AppPredictor;)V

    .line 763
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

    if-eqz v0, :cond_23

    .line 764
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverAppPredictorCallback;->destroy()V

    .line 766
    :cond_23
    return-void
.end method

.method blacklist getAlphaTargetCount()I
    .registers 4

    .line 436
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 437
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 438
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v2}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v2

    if-le v1, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method blacklist getAppPredictor()Landroid/app/prediction/AppPredictor;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    return-object v0
.end method

.method public blacklist getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F
    .registers 4

    .line 644
    if-nez p1, :cond_5

    .line 645
    const/high16 p1, 0x44610000    # 900.0f

    return p1

    .line 647
    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result p1

    .line 648
    const/4 v0, 0x2

    if-eq p2, v0, :cond_11

    const/4 v0, 0x3

    if-ne p2, v0, :cond_10

    goto :goto_11

    .line 652
    :cond_10
    return p1

    .line 650
    :cond_11
    :goto_11
    const/high16 p2, 0x42b40000    # 90.0f

    mul-float/2addr p1, p2

    return p1
.end method

.method public blacklist getCallerTargetCount()I
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getChooserTargetForValue(I)Landroid/service/chooser/ChooserTarget;
    .registers 3

    .line 705
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getCount()I
    .registers 3

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 397
    return v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 3

    .line 481
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method blacklist getNumServiceTargetsForExpand()I
    .registers 2

    .line 629
    iget v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    return v0
.end method

.method public blacklist getPositionTargetType(I)I
    .registers 6

    .line 451
    nop

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    .line 454
    if-ge p1, v0, :cond_9

    .line 455
    const/4 p1, 0x1

    return p1

    .line 457
    :cond_9
    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    .line 460
    sub-int v3, p1, v0

    if-ge v3, v2, :cond_14

    .line 461
    return v1

    .line 463
    :cond_14
    add-int/2addr v0, v2

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v1

    .line 466
    sub-int v2, p1, v0

    if-ge v2, v1, :cond_1f

    .line 467
    const/4 p1, 0x2

    return p1

    .line 469
    :cond_1f
    add-int/2addr v0, v1

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    .line 472
    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_29

    .line 473
    const/4 p1, 0x3

    return p1

    .line 476
    :cond_29
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist getRankedTargetCount()I
    .registers 3

    .line 445
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    .line 446
    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 447
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public blacklist getSelectableServiceTargetCount()I
    .registers 4

    .line 419
    nop

    .line 420
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 421
    instance-of v2, v2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v2, :cond_1a

    .line 422
    add-int/lit8 v1, v1, 0x1

    .line 424
    :cond_1a
    goto :goto_8

    .line 425
    :cond_1b
    return v1
.end method

.method public blacklist getServiceTargetCount()I
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->shouldShowServiceTargets()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 430
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 432
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSurfacedTargetInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 547
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnfilteredCount()I
    .registers 3

    .line 403
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    if-le v0, v1, :cond_13

    .line 405
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist handlePackagesChanged()V
    .registers 2

    .line 238
    invoke-direct {p0}, Lcom/android/internal/app/ChooserListAdapter;->createPlaceHolders()V

    .line 239
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 241
    return-void
.end method

.method protected blacklist onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .registers 13

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 261
    if-nez p2, :cond_17

    .line 262
    iget-object p1, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    .line 263
    const p3, 0x1080939

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 262
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    return-void

    .line 267
    :cond_17
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->alwaysShowSubLabel()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 268
    invoke-virtual {p1, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 269
    instance-of v0, p2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_68

    .line 271
    move-object v0, p2

    check-cast v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 272
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v4

    .line 273
    const-string v5, ""

    if-eqz v4, :cond_40

    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_41

    :cond_40
    move-object v4, v5

    .line 274
    :goto_41
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v6

    .line 275
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v3

    .line 276
    if-eqz v6, :cond_51

    move-object v5, v6

    :cond_51
    aput-object v5, v7, v2

    aput-object v4, v7, v1

    .line 275
    const-string v4, " "

    invoke-static {v4, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {p1, v4}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->updateContentDescription(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->hasDisplayIcon()Z

    move-result v4

    if-nez v4, :cond_79

    .line 279
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserListAdapter;->loadDirectShareIcon(Lcom/android/internal/app/chooser/SelectableTargetInfo;)V

    goto :goto_79

    .line 281
    :cond_68
    instance-of v0, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_79

    .line 282
    move-object v0, p2

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 283
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter;->loadIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_7a

    .line 281
    :cond_79
    :goto_79
    nop

    .line 289
    :cond_7a
    :goto_7a
    instance-of v0, p2, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    const/4 v4, 0x0

    if-eqz v0, :cond_af

    .line 290
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x10500da

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 292
    iget-object v5, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 293
    iget-object v0, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 293
    const v7, 0x10802e6

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v0, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    goto :goto_c3

    .line 298
    :cond_af
    iget-object v0, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 299
    iget-object v0, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->defaultItemViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 304
    :goto_c3
    iget-object v0, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 306
    instance-of v0, p2, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v0, :cond_e6

    .line 308
    iget-object p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const p3, 0x10802e8

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 309
    iget-object p3, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3, v3, v3, v0, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 310
    iget-object p1, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 311
    goto :goto_121

    :cond_e6
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    move-result p2

    if-eqz p2, :cond_117

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result p2

    if-eq p2, v1, :cond_f8

    .line 312
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result p2

    if-ne p2, v2, :cond_117

    .line 315
    :cond_f8
    iget-object p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const p3, 0x10802e9

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 316
    iget-object p3, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3, v0, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 317
    iget-object p3, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object p1, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 319
    goto :goto_121

    .line 320
    :cond_117
    iget-object p2, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object p1, p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 323
    :goto_121
    return-void
.end method

.method blacklist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109012a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onIconLoaded(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mOnIconLoadedListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_a

    .line 328
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mOnIconLoadedListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_d

    .line 330
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 332
    :goto_d
    return-void
.end method

.method public blacklist setAppPredictor(Landroid/app/prediction/AppPredictor;)V
    .registers 2

    .line 746
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 747
    return-void
.end method

.method public blacklist setAppPredictorCallback(Landroid/app/prediction/AppPredictor$Callback;Lcom/android/internal/app/ResolverAppPredictorCallback;)V
    .registers 3

    .line 752
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    .line 753
    iput-object p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

    .line 754
    return-void
.end method

.method public blacklist setOnIconLoadedListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mOnIconLoadedListener:Ljava/util/function/Consumer;

    .line 227
    return-void
.end method

.method protected blacklist shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .registers 6

    .line 533
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    .line 534
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 535
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 536
    const/4 p1, 0x0

    return p1

    .line 538
    :cond_24
    goto :goto_6

    .line 539
    :cond_25
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result p1

    return p1
.end method

.method public blacklist targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 7

    .line 492
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 493
    return-object v1

    .line 496
    :cond_5
    nop

    .line 499
    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    goto :goto_11

    .line 500
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v0

    .line 501
    :goto_11
    if-ge p1, v0, :cond_1c

    .line 502
    iget-object p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/chooser/TargetInfo;

    return-object p1

    .line 504
    :cond_1c
    add-int/lit8 v0, v0, 0x0

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    .line 508
    sub-int v3, p1, v0

    if-ge v3, v2, :cond_2f

    .line 509
    iget-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/chooser/TargetInfo;

    return-object p1

    .line 511
    :cond_2f
    add-int/2addr v0, v2

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v2

    .line 515
    sub-int v3, p1, v0

    if-ge v3, v2, :cond_44

    .line 516
    if-eqz p2, :cond_3f

    invoke-super {p0, v3}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    goto :goto_43

    .line 517
    :cond_3f
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object p1

    .line 516
    :goto_43
    return-object p1

    .line 519
    :cond_44
    add-int/2addr v0, v2

    .line 522
    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result p2

    if-ge p1, p2, :cond_5d

    iget-object p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5d

    .line 523
    iget-object p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/chooser/TargetInfo;

    return-object p1

    .line 526
    :cond_5d
    return-object v1
.end method

.method blacklist updateAlphabeticalList()V
    .registers 3

    .line 349
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$2;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 392
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 393
    return-void
.end method
