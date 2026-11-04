.class public Lcom/android/internal/util/ViewCacheManager;
.super Ljava/lang/Object;
.source "ViewCacheManager.java"


# static fields
.field private static final blacklist ENABLED:Z

.field private static final blacklist TAG:Ljava/lang/String; = "ViewCacheManager"

.field private static volatile blacklist sInstance:Lcom/android/internal/util/ViewCacheManager;


# instance fields
.field private blacklist mActive:Z

.field private blacklist mCurrentActivity:Ljava/lang/String;

.field private blacklist mData:Lcom/android/internal/util/ViewCacheData;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mViewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2D9APW5jnV3r3VY66V7BEa0iZhM(Lcom/android/internal/util/ViewCacheManager;Landroid/content/Context;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/ViewCacheManager;->lambda$onActivityAttached$0(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    const-string v0, "persist.sys.perf.view_cache"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/ViewCacheManager;->ENABLED:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ViewCacheManager;->mViewCache:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ViewCacheManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/util/ViewCacheManager;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/util/ViewCacheManager;->sInstance:Lcom/android/internal/util/ViewCacheManager;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/android/internal/util/ViewCacheManager;

    invoke-direct {v0}, Lcom/android/internal/util/ViewCacheManager;-><init>()V

    sput-object v0, Lcom/android/internal/util/ViewCacheManager;->sInstance:Lcom/android/internal/util/ViewCacheManager;

    .line 47
    :cond_b
    sget-object v0, Lcom/android/internal/util/ViewCacheManager;->sInstance:Lcom/android/internal/util/ViewCacheManager;

    return-object v0
.end method

.method private synthetic blacklist lambda$onActivityAttached$0(Landroid/content/Context;Ljava/util/List;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/ViewCacheManager;->preInflateLayouts(Landroid/content/Context;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method private blacklist preInflateLayouts(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 75
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_47

    .line 77
    :cond_23
    iget-object v1, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/ViewCacheData;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_c

    .line 79
    :cond_30
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_32
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_3b

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/ViewCacheManager;->put(ILandroid/view/View;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3b} :catch_3c

    .line 87
    :cond_3b
    goto :goto_46

    .line 83
    :catch_3c
    move-exception v1

    .line 84
    iget-object v1, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    if-eqz v1, :cond_46

    .line 85
    iget-object v1, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/ViewCacheData;->recordDependUi(I)V

    .line 88
    :cond_46
    :goto_46
    goto :goto_c

    .line 89
    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public blacklist isEnable()Z
    .registers 2

    .line 51
    sget-boolean v0, Lcom/android/internal/util/ViewCacheManager;->ENABLED:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/util/ViewCacheManager;->mActive:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist onActivityAttached(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5

    .line 55
    sget-boolean v0, Lcom/android/internal/util/ViewCacheManager;->ENABLED:Z

    if-eqz v0, :cond_49

    if-nez p2, :cond_7

    goto :goto_49

    .line 56
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/ViewCacheManager;->mActive:Z

    .line 57
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/util/ViewCacheManager;->mCurrentActivity:Ljava/lang/String;

    .line 58
    iget-object p2, p0, Lcom/android/internal/util/ViewCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 59
    :try_start_13
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 60
    monitor-exit p2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_46

    .line 61
    iget-object p2, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    if-nez p2, :cond_24

    .line 62
    new-instance p2, Lcom/android/internal/util/ViewCacheData;

    invoke-direct {p2, p1}, Lcom/android/internal/util/ViewCacheData;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    .line 64
    :cond_24
    iget-object p2, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    iget-object v0, p0, Lcom/android/internal/util/ViewCacheManager;->mCurrentActivity:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/internal/util/ViewCacheData;->getLayoutsForActivity(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 65
    if-eqz p2, :cond_45

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_45

    .line 66
    :cond_35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/ViewCacheManager;->mActive:Z

    .line 67
    invoke-static {}, Landroid/view/ViewBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/ViewCacheManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/util/ViewCacheManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/ViewCacheManager;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void

    .line 65
    :cond_45
    :goto_45
    return-void

    .line 60
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1

    .line 55
    :cond_49
    :goto_49
    return-void
.end method

.method public blacklist onTraversalEnd(Landroid/view/ViewRootImpl;)V
    .registers 3

    .line 120
    iget-object p1, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    if-eqz p1, :cond_9

    .line 121
    iget-object p1, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    invoke-virtual {p1}, Lcom/android/internal/util/ViewCacheData;->sync()V

    .line 123
    :cond_9
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/util/ViewCacheManager;->mActive:Z

    .line 124
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/ViewCacheManager;->mCurrentActivity:Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lcom/android/internal/util/ViewCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 126
    :try_start_12
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 127
    monitor-exit p1

    .line 128
    return-void

    .line 127
    :catchall_19
    move-exception v0

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public blacklist put(ILandroid/view/View;)V
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/ViewCacheManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 105
    if-nez v1, :cond_17

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v2, p0, Lcom/android/internal/util/ViewCacheManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    :cond_17
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public blacklist recordLayoutRes(I)V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheManager;->mData:Lcom/android/internal/util/ViewCacheData;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ViewCacheData;->record(I)V

    .line 117
    :cond_9
    return-void
.end method

.method public blacklist tryGet(I)Landroid/view/View;
    .registers 5

    .line 92
    sget-boolean v0, Lcom/android/internal/util/ViewCacheManager;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_9
    iget-object v2, p0, Lcom/android/internal/util/ViewCacheManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 95
    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 96
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    monitor-exit v0

    return-object p1

    .line 98
    :cond_22
    monitor-exit v0

    .line 99
    return-object v1

    .line 98
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw p1
.end method
