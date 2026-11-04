.class public final Landroid/media/tv/watchdogmanager/TvWatchdogManager;
.super Ljava/lang/Object;
.source "TvWatchdogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;,
        Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;,
        Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;,
        Landroid/media/tv/watchdogmanager/TvWatchdogManager$ReturnCode;,
        Landroid/media/tv/watchdogmanager/TvWatchdogManager$MinimumStatsFlag;,
        Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseFlag;,
        Landroid/media/tv/watchdogmanager/TvWatchdogManager$StatsPeriod;,
        Landroid/media/tv/watchdogmanager/TvWatchdogManager$TimeoutLengthEnum;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist FLAG_MINIMUM_STATS_IO_100_MB:I = 0x2

.field public static final blacklist FLAG_MINIMUM_STATS_IO_1_GB:I = 0x4

.field public static final blacklist FLAG_MINIMUM_STATS_IO_1_MB:I = 0x1

.field public static final blacklist FLAG_RESOURCE_OVERUSE_IO:I = 0x1

.field public static final blacklist RETURN_CODE_ERROR:I = -0x1

.field public static final blacklist RETURN_CODE_SUCCESS:I = 0x0

.field public static final blacklist STATS_PERIOD_CURRENT_DAY:I = 0x1

.field public static final blacklist STATS_PERIOD_PAST_15_DAYS:I = 0x4

.field public static final blacklist STATS_PERIOD_PAST_30_DAYS:I = 0x5

.field public static final blacklist STATS_PERIOD_PAST_3_DAYS:I = 0x2

.field public static final blacklist STATS_PERIOD_PAST_7_DAYS:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TIMEOUT_CRITICAL:I = 0x0

.field public static final blacklist TIMEOUT_MODERATE:I = 0x1

.field public static final blacklist TIMEOUT_NORMAL:I = 0x2


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mResourceOveruseListenerForSystemImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

.field private final blacklist mResourceOveruseListenerForSystemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResourceOveruseListenerImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

.field private final blacklist mResourceOveruseListenerInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monResourceOveruse(Landroid/media/tv/watchdogmanager/TvWatchdogManager;Landroid/media/tv/watchdogmanager/ResourceOveruseStats;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->onResourceOveruse(Landroid/media/tv/watchdogmanager/ResourceOveruseStats;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-class v0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/tv/watchdogmanager/ITvWatchdogService;)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mLock:Ljava/lang/Object;

    .line 86
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    .line 87
    new-instance p1, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;-><init>(Landroid/media/tv/watchdogmanager/TvWatchdogManager;Z)V

    iput-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    .line 89
    new-instance p1, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;-><init>(Landroid/media/tv/watchdogmanager/TvWatchdogManager;Z)V

    iput-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerInfos:Ljava/util/List;

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemInfos:Ljava/util/List;

    .line 93
    return-void
.end method

.method private blacklist addResourceOveruseListenerForSystemImpl()V
    .registers 4

    .line 576
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    .line 577
    invoke-virtual {v1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->resourceOveruseFlag()I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    .line 576
    invoke-interface {v0, v1, v2}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->addResourceOveruseListenerForSystem(ILandroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 590
    nop

    .line 591
    return-void

    .line 585
    :catch_f
    move-exception v0

    .line 586
    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_13
    iget-object v2, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 588
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1e

    .line 589
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 588
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private blacklist addResourceOveruseListenerImpl()V
    .registers 4

    .line 542
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    .line 543
    invoke-virtual {v1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->resourceOveruseFlag()I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    .line 542
    invoke-interface {v0, v1, v2}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->addResourceOveruseListener(ILandroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 556
    nop

    .line 557
    return-void

    .line 551
    :catch_f
    move-exception v0

    .line 552
    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_13
    iget-object v2, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 554
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1e

    .line 555
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 554
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method static synthetic blacklist lambda$onResourceOveruse$0(Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;Landroid/media/tv/watchdogmanager/ResourceOveruseStats;)V
    .registers 2

    .line 635
    iget-object p0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->listener:Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;

    invoke-interface {p0, p1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;->onOveruse(Landroid/media/tv/watchdogmanager/ResourceOveruseStats;)V

    .line 636
    return-void
.end method

.method private blacklist onResourceOveruse(Landroid/media/tv/watchdogmanager/ResourceOveruseStats;Z)V
    .registers 6

    .line 609
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->enableTvWatchdogEmmcProtection()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 610
    invoke-virtual {p1}, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->getIoOveruseStats()Landroid/media/tv/watchdogmanager/IoOveruseStats;

    move-result-object v0

    if-nez v0, :cond_14

    .line 611
    sget-object p1, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->TAG:Ljava/lang/String;

    const-string p2, "Skipping resource overuse notification as the stats are missing"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void

    .line 616
    :cond_14
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    if-eqz p2, :cond_1c

    .line 618
    :try_start_19
    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemInfos:Ljava/util/List;

    goto :goto_1e

    .line 620
    :cond_1c
    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerInfos:Ljava/util/List;

    .line 622
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_6d

    .line 623
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 624
    sget-object p1, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot notify resource overuse listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    if-eqz p2, :cond_37

    const-string p2, "for system "

    goto :goto_39

    :cond_37
    const-string p2, ""

    :goto_39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "as it is not registered."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 624
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void

    .line 631
    :cond_4b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;

    .line 632
    iget v1, v0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->resourceOveruseFlag:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6b

    .line 633
    iget-object v1, v0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/watchdogmanager/TvWatchdogManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;Landroid/media/tv/watchdogmanager/ResourceOveruseStats;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 638
    :cond_6b
    goto :goto_4f

    .line 639
    :cond_6c
    return-void

    .line 622
    :catchall_6d
    move-exception p1

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p1
.end method

.method private blacklist removeResourceOveruseListenerForSystemImpl()V
    .registers 3

    .line 596
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    invoke-interface {v0, v1}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->removeResourceOveruseListenerForSystem(Landroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 605
    nop

    .line 606
    return-void

    .line 603
    :catch_9
    move-exception v0

    .line 604
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private blacklist removeResourceOveruseListenerImpl()V
    .registers 3

    .line 561
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    invoke-interface {v0, v1}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->removeResourceOveruseListener(Landroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 570
    nop

    .line 571
    return-void

    .line 568
    :catch_9
    move-exception v0

    .line 569
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public blacklist addResourceOveruseListener(Ljava/util/concurrent/Executor;ILandroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;)V
    .registers 6

    .line 305
    const-string v0, "Listener must be non-null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    const-string v0, "Executor must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    if-lez p2, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "Must provide valid resource overuse flag"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 311
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_17
    new-instance v1, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;

    invoke-direct {v1, p3, p1, p2}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;-><init>(Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;Ljava/util/concurrent/Executor;I)V

    .line 314
    iget-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerInfos:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 317
    iget-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    invoke-virtual {p1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->hasListeners()Z

    move-result p1

    .line 318
    iget-object p3, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    invoke-virtual {p3, p2}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->maybeAppendFlag(I)Z

    move-result p2

    .line 319
    iget-object p3, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerInfos:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_49

    .line 321
    if-eqz p2, :cond_40

    .line 322
    if-eqz p1, :cond_3d

    .line 323
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->removeResourceOveruseListenerImpl()V

    .line 325
    :cond_3d
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->addResourceOveruseListenerImpl()V

    .line 327
    :cond_40
    return-void

    .line 315
    :cond_41
    :try_start_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add the listener as it is already added"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public blacklist addResourceOveruseListenerForSystem(Ljava/util/concurrent/Executor;ILandroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;)V
    .registers 6

    .line 380
    const-string v0, "Listener must be non-null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    const-string v0, "Executor must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    if-lez p2, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "Must provide valid resource overuse flag"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 386
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_17
    new-instance v1, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;

    invoke-direct {v1, p3, p1, p2}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;-><init>(Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;Ljava/util/concurrent/Executor;I)V

    .line 389
    iget-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemInfos:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 392
    iget-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    invoke-virtual {p1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->hasListeners()Z

    move-result p1

    .line 393
    iget-object p3, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    .line 394
    invoke-virtual {p3, p2}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->maybeAppendFlag(I)Z

    move-result p2

    .line 395
    iget-object p3, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemInfos:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_49

    .line 397
    if-eqz p2, :cond_40

    .line 398
    if-eqz p1, :cond_3d

    .line 399
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->removeResourceOveruseListenerForSystemImpl()V

    .line 401
    :cond_3d
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->addResourceOveruseListenerForSystemImpl()V

    .line 403
    :cond_40
    return-void

    .line 390
    :cond_41
    :try_start_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add the listener as it is already added"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 396
    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public blacklist getAllResourceOveruseStats(III)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseStats;",
            ">;"
        }
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->getAllResourceOveruseStats(III)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 234
    :catch_7
    move-exception p1

    .line 235
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getPackageKillableStatesAsUser(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/PackageKillableState;",
            ">;"
        }
    .end annotation

    .line 478
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    invoke-interface {v0, p1}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->getPackageKillableStatesAsUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 479
    :catch_7
    move-exception p1

    .line 480
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getResourceOveruseConfigurations(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;",
            ">;"
        }
    .end annotation

    .line 534
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    invoke-interface {v0, p1}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->getResourceOveruseConfigurations(I)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 535
    :catch_7
    move-exception p1

    .line 536
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getResourceOveruseStats(II)Landroid/media/tv/watchdogmanager/ResourceOveruseStats;
    .registers 4

    .line 204
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->getResourceOveruseStats(II)Landroid/media/tv/watchdogmanager/ResourceOveruseStats;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 205
    :catch_7
    move-exception p1

    .line 206
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getResourceOveruseStatsForUserPackage(Ljava/lang/String;Landroid/os/UserHandle;II)Landroid/media/tv/watchdogmanager/ResourceOveruseStats;
    .registers 6

    .line 260
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->getResourceOveruseStatsForUserPackage(Ljava/lang/String;Landroid/os/UserHandle;II)Landroid/media/tv/watchdogmanager/ResourceOveruseStats;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 262
    :catch_7
    move-exception p1

    .line 263
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeResourceOveruseListener(Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;)V
    .registers 7

    .line 335
    const-string v0, "Listener must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    nop

    .line 340
    const/4 v1, 0x0

    move v2, v1

    .line 341
    :goto_b
    :try_start_b
    iget-object v3, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_25

    .line 342
    iget-object v3, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;

    .line 343
    iget-object v4, v3, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->listener:Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;

    if-ne v4, p1, :cond_22

    .line 344
    iget v1, v3, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->resourceOveruseFlag:I

    .line 345
    goto :goto_25

    .line 341
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 348
    :cond_25
    :goto_25
    iget-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v2, p1, :cond_36

    .line 349
    sget-object p1, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->TAG:Ljava/lang/String;

    const-string v1, "Cannot remove the listener. It has not been added."

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v0

    return-void

    .line 352
    :cond_36
    iget-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerInfos:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 353
    iget-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    .line 354
    invoke-virtual {p1, v1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->maybeRemoveFlag(I)Z

    move-result p1

    .line 355
    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    invoke-virtual {v1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->hasListeners()Z

    move-result v1

    .line 356
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_53

    .line 357
    if-eqz p1, :cond_52

    .line 358
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->removeResourceOveruseListenerImpl()V

    .line 359
    if-eqz v1, :cond_52

    .line 360
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->addResourceOveruseListenerImpl()V

    .line 363
    :cond_52
    return-void

    .line 356
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public blacklist removeResourceOveruseListenerForSystem(Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;)V
    .registers 7

    .line 412
    const-string v0, "Listener must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    nop

    .line 417
    const/4 v1, 0x0

    move v2, v1

    .line 418
    :goto_b
    :try_start_b
    iget-object v3, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_25

    .line 419
    iget-object v3, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemInfos:Ljava/util/List;

    .line 420
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;

    .line 421
    iget-object v4, v3, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->listener:Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;

    if-ne v4, p1, :cond_22

    .line 422
    iget v1, v3, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->resourceOveruseFlag:I

    .line 423
    goto :goto_25

    .line 418
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 426
    :cond_25
    :goto_25
    iget-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v2, p1, :cond_36

    .line 427
    sget-object p1, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->TAG:Ljava/lang/String;

    const-string v1, "Cannot remove the listener. It has not been added."

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    monitor-exit v0

    return-void

    .line 430
    :cond_36
    iget-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemInfos:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 431
    iget-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    .line 432
    invoke-virtual {p1, v1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->maybeRemoveFlag(I)Z

    move-result p1

    .line 433
    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mResourceOveruseListenerForSystemImpl:Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;

    invoke-virtual {v1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->hasListeners()Z

    move-result v1

    .line 434
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_53

    .line 435
    if-eqz p1, :cond_52

    .line 436
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->removeResourceOveruseListenerForSystemImpl()V

    .line 437
    if-eqz v1, :cond_52

    .line 438
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->addResourceOveruseListenerForSystemImpl()V

    .line 441
    :cond_52
    return-void

    .line 434
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public blacklist setKillablePackageAsUser(Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 5

    .line 460
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->setKillablePackageAsUser(Ljava/lang/String;Landroid/os/UserHandle;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 463
    nop

    .line 464
    return-void

    .line 461
    :catch_7
    move-exception p1

    .line 462
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setResourceOveruseConfigurations(Ljava/util/List;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;",
            ">;I)I"
        }
    .end annotation

    .line 506
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->mService:Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/watchdogmanager/ITvWatchdogService;->setResourceOveruseConfigurations(Ljava/util/List;I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 507
    :catch_7
    move-exception p1

    .line 508
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
