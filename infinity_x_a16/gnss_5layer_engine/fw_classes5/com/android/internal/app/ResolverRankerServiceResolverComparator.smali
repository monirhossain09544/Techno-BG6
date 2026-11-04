.class Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
.super Lcom/android/internal/app/AbstractResolverComparator;
.source "ResolverRankerServiceResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;,
        Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;,
        Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerResultCallback;
    }
.end annotation


# static fields
.field private static final blacklist CONNECTION_COST_TIMEOUT_MILLIS:I = 0xc8

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist RECENCY_MULTIPLIER:F = 2.0f

.field private static final blacklist RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final blacklist TAG:Ljava/lang/String; = "RRSResolverComparator"

.field private static final blacklist USAGE_STATS_PERIOD:J = 0x240c8400L


# instance fields
.field private blacklist mAction:Ljava/lang/String;

.field private final blacklist mCollator:Ljava/text/Collator;

.field private blacklist mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

.field private blacklist mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mCurrentTime:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRanker:Landroid/service/resolver/IResolverRankerService;

.field private blacklist mRankerServiceName:Landroid/content/ComponentName;

.field private final blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mResolvedRankerName:Landroid/content/ComponentName;

.field private final blacklist mSinceTime:J

.field private final blacklist mStatsPerUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetsDictPerUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/LinkedHashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmComparatorModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRanker(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Landroid/service/resolver/IResolverRankerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbuildUpdatedModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V
    .registers 16

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/UserHandle;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    .line 102
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    .line 101
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V

    .line 103
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;",
            "Lcom/android/internal/app/ChooserActivityLogger;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2, p6}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    .line 111
    nop

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 111
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCollator:Ljava/text/Collator;

    .line 113
    iput-object p3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    .line 116
    iget-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mSinceTime:J

    .line 117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    .line 118
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    .line 119
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserHandle;

    .line 120
    iget-object p6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mUsmMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iget-wide v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mSinceTime:J

    iget-wide v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    .line 121
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v0

    .line 120
    invoke-interface {p6, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object p6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p6, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    goto :goto_3f

    .line 124
    :cond_6b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    .line 125
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 126
    invoke-virtual {p0, p4}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setCallBack(Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V

    .line 127
    invoke-virtual {p0, p5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setChooserActivityLogger(Lcom/android/internal/app/ChooserActivityLogger;)V

    .line 129
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 130
    return-void
.end method

.method private blacklist addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V
    .registers 6

    .line 478
    const v0, 0x402379a7    # 2.5543f

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v1

    mul-float/2addr v1, v0

    const v0, 0x4035d639

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 479
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v0

    const v2, 0x3e89ba5e    # 0.269f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    const v0, 0x40871c43    # 4.2222f

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 480
    const v0, 0x3fd41206    # 1.6568f

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    .line 481
    return-void
.end method

.method private blacklist buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
    .registers 10

    .line 519
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCollator:Ljava/text/Collator;

    iget-object v5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v7, :cond_14

    const/4 v7, 0x1

    goto :goto_15

    :cond_14
    const/4 v7, 0x0

    :goto_15
    iget-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mPmMap:Ljava/util/Map;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/text/Collator;Landroid/service/resolver/IResolverRankerService;Landroid/content/ComponentName;ZLjava/util/Map;)V

    return-object v0
.end method

.method private blacklist initRanker(Landroid/content/Context;)V
    .registers 6

    .line 299
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_d

    .line 304
    monitor-exit v0

    return-void

    .line 306
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2e

    .line 307
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->resolveRankerService()Landroid/content/Intent;

    move-result-object v0

    .line 308
    if-nez v0, :cond_15

    .line 309
    return-void

    .line 311
    :cond_15
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    .line 312
    new-instance v1, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;-><init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    .line 313
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 314
    return-void

    .line 306
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method static blacklist isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .registers 3

    .line 493
    const/4 v0, 0x0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_19

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 497
    :cond_19
    return v0
.end method

.method private blacklist predictSelectProbabilities(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-nez v0, :cond_5

    goto :goto_48

    .line 456
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 457
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_11} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_25

    .line 458
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_20

    .line 459
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    iget-object v2, v2, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    invoke-interface {v1, p1, v2}, Landroid/service/resolver/IResolverRankerService;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    .line 460
    monitor-exit v0

    return-void

    .line 466
    :cond_20
    monitor-exit v0

    goto :goto_47

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_22

    :try_start_24
    throw p1
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_25} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_25} :catch_25

    .line 469
    :catch_25
    move-exception p1

    .line 470
    const-string v0, "RRSResolverComparator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Predict: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 467
    :catch_3f
    move-exception p1

    .line 468
    const-string p1, "RRSResolverComparator"

    const-string v0, "Error in Wait for Service Connection."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_47
    nop

    .line 473
    :goto_48
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->afterCompute()V

    .line 474
    return-void
.end method

.method private blacklist resolveRankerService()Landroid/content/Intent;
    .registers 11

    .line 318
    const-string v0, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    const-string v1, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    const-string v2, "RRSResolverComparator"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.resolver.ResolverRankerService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 320
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 321
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ed

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 322
    if-eqz v6, :cond_1c

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_1c

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_35

    .line 327
    goto :goto_1c

    .line 329
    :cond_35
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :try_start_44
    iget-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 334
    invoke-virtual {v8, v7, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 335
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_54} :catch_ce

    const-string v9, "ResolverRankerService "

    if-nez v8, :cond_91

    .line 336
    :try_start_58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " does not require permission "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " - this service will not be queried for ResolverRankerServiceResolverComparator. add android:permission=\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\" to the <service> tag for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " in the manifest."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    goto :goto_1c

    .line 345
    :cond_91
    iget-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 346
    invoke-virtual {v8, v0, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_c7

    .line 348
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " does not hold permission "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " - this service will not be queried for ResolverRankerServiceResolverComparator."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_58 .. :try_end_c5} :catch_ce

    .line 352
    goto/16 :goto_1c

    .line 358
    :cond_c7
    nop

    .line 362
    iput-object v7, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 363
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 364
    return-object v3

    .line 354
    :catch_ce
    move-exception v6

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not look up service "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; component name not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    goto/16 :goto_1c

    .line 366
    :cond_ed
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V
    .registers 6

    .line 486
    invoke-virtual {p1, p2}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 487
    invoke-virtual {p1, p3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 488
    invoke-virtual {p1, p4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 489
    invoke-virtual {p1, p5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 490
    return-void
.end method


# virtual methods
.method blacklist beforeCompute()V
    .registers 5

    .line 437
    invoke-super {p0}, Lcom/android/internal/app/AbstractResolverComparator;->beforeCompute()V

    .line 438
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 439
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 440
    goto :goto_d

    .line 441
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 442
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 443
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 444
    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 445
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->initRanker(Landroid/content/Context;)V

    .line 446
    return-void
.end method

.method public blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 4

    .line 266
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public blacklist destroy()V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-eqz v0, :cond_1c

    .line 288
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->destroy()V

    .line 291
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->afterCompute()V

    .line 295
    return-void
.end method

.method public blacklist doCompute(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 166
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    const-wide/32 v3, 0x2932e00

    sub-long/2addr v1, v3

    .line 168
    nop

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 173
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_104

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 174
    new-instance v5, Landroid/service/resolver/ResolverTarget;

    invoke-direct {v5}, Landroid/service/resolver/ResolverTarget;-><init>()V

    .line 175
    iget-object v10, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    .line 176
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedHashMap;

    .line 177
    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    .line 178
    invoke-virtual {v4, v11}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 179
    if-eqz v10, :cond_102

    if-eqz v12, :cond_102

    .line 180
    iget-object v13, v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v13, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v10, v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 182
    if-eqz v10, :cond_102

    .line 186
    iget-object v12, v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_84

    .line 187
    invoke-static {v4}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v4

    if-nez v4, :cond_84

    .line 188
    nop

    .line 189
    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v12

    sub-long/2addr v12, v1

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    long-to-float v4, v12

    .line 190
    invoke-virtual {v5, v4}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 191
    cmpl-float v12, v4, v6

    if-lez v12, :cond_84

    .line 192
    move v6, v4

    .line 195
    :cond_84
    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v12

    long-to-float v4, v12

    .line 196
    invoke-virtual {v5, v4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 197
    cmpl-float v12, v4, v7

    if-lez v12, :cond_91

    .line 198
    move v7, v4

    .line 200
    :cond_91
    iget v4, v10, Landroid/app/usage/UsageStats;->mLaunchCount:I

    int-to-float v4, v4

    .line 201
    invoke-virtual {v5, v4}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 202
    cmpl-float v12, v4, v8

    if-lez v12, :cond_9c

    .line 203
    move v8, v4

    .line 206
    :cond_9c
    nop

    .line 207
    iget-object v4, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v4, :cond_f9

    iget-object v4, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    if-eqz v4, :cond_f9

    iget-object v4, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    .line 208
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f9

    .line 209
    iget-object v4, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContentType:Ljava/lang/String;

    .line 210
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    .line 211
    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v12, :cond_fa

    .line 212
    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    array-length v12, v12

    .line 213
    move v13, v11

    :goto_d2
    if-ge v13, v12, :cond_fa

    .line 214
    iget-object v14, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v15, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArrayMap;

    iget-object v15, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    aget-object v15, v15, v13

    .line 215
    move/from16 p1, v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v15, v11}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    .line 213
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, p1

    goto :goto_d2

    .line 228
    :cond_f9
    const/4 v4, 0x0

    :cond_fa
    invoke-virtual {v5, v4}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 229
    cmpl-float v5, v4, v9

    if-lez v5, :cond_102

    .line 230
    move v9, v4

    .line 234
    :cond_102
    goto/16 :goto_16

    .line 243
    :cond_104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 244
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_115
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_133

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 245
    iget-object v3, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    goto :goto_115

    .line 248
    :cond_133
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_139
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_164

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/resolver/ResolverTarget;

    .line 249
    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v2

    div-float/2addr v2, v6

    .line 250
    mul-float/2addr v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 251
    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v3

    div-float/2addr v3, v8

    .line 252
    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v4

    div-float/2addr v4, v7

    .line 253
    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v5

    div-float/2addr v5, v9

    .line 250
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V

    .line 254
    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V

    .line 258
    goto :goto_139

    .line 259
    :cond_164
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->predictSelectProbabilities(Ljava/util/List;)V

    .line 261
    invoke-direct {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 262
    return-void
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result p1

    return p1
.end method

.method public blacklist handleResultMessage(Landroid/os/Message;)V
    .registers 7

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    .line 135
    return-void

    .line 137
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "RRSResolverComparator"

    if-nez v0, :cond_11

    .line 138
    const-string p1, "Receiving null prediction results."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 142
    if-eqz p1, :cond_69

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    if-eqz v0, :cond_69

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_69

    .line 144
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 145
    nop

    .line 146
    const/4 v1, 0x0

    move v2, v1

    :goto_30
    if-ge v1, v0, :cond_5c

    .line 147
    nop

    .line 148
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v3

    .line 149
    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v4

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_59

    .line 150
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v2, v3}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    .line 151
    const/4 v2, 0x1

    .line 146
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 154
    :cond_5c
    if-eqz v2, :cond_68

    .line 155
    iget-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 156
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 158
    :cond_68
    goto :goto_6e

    .line 159
    :cond_69
    const-string p1, "Sizes of sent and received ResolverTargets diff."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_6e
    return-void
.end method

.method public blacklist updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->notifyOnTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
