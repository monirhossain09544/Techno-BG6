.class public Lcom/android/internal/app/ResolverListController;
.super Ljava/lang/Object;
.source "ResolverListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListController$ComputeCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ResolverListController"


# instance fields
.field private blacklist isComputed:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIncludeCloneProfileTargets:Z

.field private final blacklist mLaunchedFromUid:I

.field private final blacklist mQueryIntentsAsUser:Landroid/os/UserHandle;

.field private final blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

.field private final blacklist mTargetIntent:Landroid/content/Intent;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;

.field private final blacklist mpm:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$MgcBPDOIxrxQZ18-RglR4HimgGw(Lcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverListController;->lambda$topK$0(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    .registers 18

    .line 75
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V

    const/4 v9, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v8, p7

    move-object v7, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;Z)V

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;)V
    .registers 19

    .line 96
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;Z)V

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;Z)V
    .registers 11

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    .line 111
    iput-object p1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    .line 113
    iput p5, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    .line 114
    iput-object p3, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    .line 115
    iput-object p4, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    .line 116
    iput-object p6, p0, Lcom/android/internal/app/ResolverListController;->mUserHandle:Landroid/os/UserHandle;

    .line 117
    iput-object p7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    .line 118
    iput-object p8, p0, Lcom/android/internal/app/ResolverListController;->mQueryIntentsAsUser:Landroid/os/UserHandle;

    .line 119
    iput-boolean p9, p0, Lcom/android/internal/app/ResolverListController;->mIncludeCloneProfileTargets:Z

    .line 120
    return-void
.end method

.method private blacklist compute(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    if-nez v0, :cond_c

    .line 328
    const-string p1, "ResolverListController"

    const-string v0, "Comparator has already been destroyed; skipped."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 331
    :cond_c
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 332
    new-instance v2, Lcom/android/internal/app/ResolverListController$ComputeCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/ResolverListController$ComputeCallback;-><init>(Lcom/android/internal/app/ResolverListController;Ljava/util/concurrent/CountDownLatch;)V

    .line 333
    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/AbstractResolverComparator;->setCallBack(Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V

    .line 334
    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/AbstractResolverComparator;->compute(Ljava/util/List;)V

    .line 335
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 336
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    .line 337
    return-void
.end method

.method private blacklist getResolversForIntentAsUserInternal(Ljava/util/List;Landroid/os/UserHandle;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/UserHandle;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 169
    nop

    .line 170
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_48

    .line 171
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 172
    nop

    .line 173
    invoke-virtual {v3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v4

    if-nez v4, :cond_21

    .line 174
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_1f

    goto :goto_21

    :cond_1f
    move v4, p3

    goto :goto_24

    .line 175
    :cond_21
    :goto_21
    const/high16 v4, 0x800000

    or-int/2addr v4, p3

    .line 178
    :goto_24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/content/Intent;

    if-ne v5, v6, :cond_2d

    goto :goto_33

    :cond_2d
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v3, v5

    .line 180
    :goto_33
    iget-object v5, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3, v4, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 182
    if-eqz v4, :cond_45

    .line 183
    if-nez v1, :cond_42

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    :cond_42
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 170
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 189
    :cond_48
    return-object v1
.end method

.method private static blacklist isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .registers 4

    .line 416
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 417
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 418
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    .line 417
    :goto_21
    return p0
.end method

.method private synthetic blacklist lambda$topK$0(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .registers 4

    .line 378
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method


# virtual methods
.method public blacklist addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 203
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v0, :cond_71

    .line 204
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 205
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    if-nez v5, :cond_2f

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping ResolveInfo with no userHandle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResolverListController"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    goto :goto_6e

    .line 209
    :cond_2f
    nop

    .line 211
    move v5, v2

    :goto_31
    if-ge v5, v1, :cond_48

    .line 212
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 213
    invoke-static {v4, v6}, Lcom/android/internal/app/ResolverListController;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 214
    nop

    .line 215
    invoke-virtual {v6, p2, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 216
    const/4 v5, 0x1

    goto :goto_49

    .line 211
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_48
    move v5, v2

    .line 219
    :goto_49
    if-nez v5, :cond_6e

    .line 220
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {v6, v5, p2, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 224
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverListController;->isComponentPinned(Landroid/content/ComponentName;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setPinned(Z)V

    .line 225
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverListController;->isFixedAtTop(Landroid/content/ComponentName;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setFixedAtTop(Z)V

    .line 226
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_6e
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 229
    :cond_71
    return-void
.end method

.method public blacklist destroy()V
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractResolverComparator;->destroy()V

    .line 447
    return-void
.end method

.method public blacklist filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 255
    nop

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_8
    if-ltz v0, :cond_40

    .line 257
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 258
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 259
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v3, v4, v5, v6}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    .line 263
    if-nez v3, :cond_31

    .line 264
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverListController;->isComponentFiltered(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 267
    :cond_31
    if-eqz p2, :cond_3a

    if-nez v1, :cond_3a

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 270
    :cond_3a
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 256
    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 273
    :cond_40
    return-object v1
.end method

.method public blacklist filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 284
    nop

    .line 287
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 288
    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 290
    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_12
    if-ge v4, v2, :cond_3e

    .line 291
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v5, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 298
    iget v6, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v6, v7, :cond_2a

    iget-boolean v6, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v6, v5, :cond_3b

    .line 300
    :cond_2a
    :goto_2a
    if-ge v4, v2, :cond_3b

    .line 301
    if-eqz p2, :cond_35

    if-nez v3, :cond_35

    .line 302
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    :cond_35
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 305
    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .line 290
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 309
    :cond_3e
    return-object v3
.end method

.method public blacklist getLastChosen()Landroid/content/pm/ResolveInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 124
    const/high16 v3, 0x10000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResolversForIntent(ZZZLjava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v5, p0, Lcom/android/internal/app/ResolverListController;->mQueryIntentsAsUser:Landroid/os/UserHandle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUser(ZZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getResolversForIntentAsUser(ZZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    const/high16 p3, 0x10000

    goto :goto_7

    :cond_6
    move p3, v0

    :goto_7
    const/high16 v1, 0x80000

    or-int/2addr p3, v1

    const/high16 v1, 0x40000

    or-int/2addr p3, v1

    .line 157
    if-eqz p1, :cond_12

    const/16 p1, 0x40

    goto :goto_13

    :cond_12
    move p1, v0

    :goto_13
    or-int/2addr p1, p3

    .line 158
    if-eqz p2, :cond_18

    const/16 v0, 0x80

    :cond_18
    or-int/2addr p1, v0

    .line 159
    iget-boolean p2, p0, Lcom/android/internal/app/ResolverListController;->mIncludeCloneProfileTargets:Z

    if-eqz p2, :cond_20

    .line 160
    const/high16 p2, 0x20000000

    or-int/2addr p1, p2

    .line 162
    :cond_20
    invoke-direct {p0, p4, p5, p1}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUserInternal(Ljava/util/List;Landroid/os/UserHandle;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result p1

    return p1
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .registers 3

    .line 434
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result p1

    return p1
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method blacklist isComponentFiltered(Landroid/content/ComponentName;)Z
    .registers 2

    .line 422
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isComponentPinned(Landroid/content/ComponentName;)Z
    .registers 2

    .line 237
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isFixedAtTop(Landroid/content/ComponentName;)Z
    .registers 2

    .line 245
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 132
    const/high16 v3, 0x10000

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 136
    return-void
.end method

.method public blacklist sort(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 343
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 344
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    if-nez v0, :cond_a

    .line 345
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverListController;->compute(Ljava/util/List;)V

    .line 347
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_12} :catch_13

    .line 355
    goto :goto_2c

    .line 353
    :catch_13
    move-exception p1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compute & Sort was interrupted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResolverListController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_2c
    return-void
.end method

.method public blacklist topK(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;I)V"
        }
    .end annotation

    .line 361
    if-eqz p1, :cond_9c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9c

    if-gtz p2, :cond_c

    goto/16 :goto_9c

    .line 364
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_16

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListController;->sort(Ljava/util/List;)V

    .line 368
    return-void

    .line 371
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 372
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    if-nez v0, :cond_20

    .line 373
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverListController;->compute(Ljava/util/List;)V

    .line 377
    :cond_20
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/internal/app/ResolverListController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverListController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverListController;)V

    invoke-direct {v0, p2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 379
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 382
    add-int/lit8 v2, v1, -0x1

    .line 383
    sub-int p2, v1, p2

    invoke-interface {p1, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 384
    add-int/lit8 p2, p2, -0x1

    :goto_3b
    if-ltz p2, :cond_6b

    .line 385
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 386
    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v3

    neg-int v3, v3

    if-lez v3, :cond_62

    .line 389
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_68

    .line 394
    :cond_62
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 384
    :goto_68
    add-int/lit8 p2, p2, -0x1

    goto :goto_3b

    .line 400
    :cond_6b
    :goto_6b
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7e

    .line 401
    add-int/lit8 p2, v2, -0x1

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, p2

    goto :goto_6b

    .line 404
    :cond_7e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_81
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_81} :catch_82

    .line 411
    goto :goto_9b

    .line 409
    :catch_82
    move-exception p1

    .line 410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Compute & greatestOf was interrupted: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ResolverListController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_9b
    return-void

    .line 362
    :cond_9c
    :goto_9c
    return-void
.end method

.method public blacklist updateChooserCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/AbstractResolverComparator;->updateChooserCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public blacklist updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 3

    .line 438
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 439
    return-void
.end method
