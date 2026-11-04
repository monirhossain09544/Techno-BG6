.class final Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;
.super Landroid/media/tv/watchdogmanager/IResourceOveruseListener$Stub;
.source "TvWatchdogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/watchdogmanager/TvWatchdogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IResourceOveruseListenerImpl"
.end annotation


# static fields
.field private static final blacklist RESOURCE_OVERUSE_FLAGS:[I


# instance fields
.field private final blacklist mIsSystem:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/watchdogmanager/TvWatchdogManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNumListenersByResource:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 642
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->RESOURCE_OVERUSE_FLAGS:[I

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/tv/watchdogmanager/TvWatchdogManager;Z)V
    .registers 4

    .line 652
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IResourceOveruseListener$Stub;-><init>()V

    .line 647
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mLock:Ljava/lang/Object;

    .line 653
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mManager:Ljava/lang/ref/WeakReference;

    .line 654
    iput-boolean p2, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mIsSystem:Z

    .line 655
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mNumListenersByResource:Landroid/util/SparseIntArray;

    .line 656
    return-void
.end method


# virtual methods
.method public blacklist hasListeners()Z
    .registers 3

    .line 667
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mNumListenersByResource:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 669
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist maybeAppendFlag(I)Z
    .registers 11

    .line 673
    nop

    .line 674
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_4
    sget-object v1, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->RESOURCE_OVERUSE_FLAGS:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_a
    if-ge v4, v2, :cond_28

    aget v6, v1, v4

    .line 676
    and-int v7, p1, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_14

    .line 677
    goto :goto_25

    .line 679
    :cond_14
    iget-object v5, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mNumListenersByResource:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 680
    add-int/2addr v5, v8

    if-ne v5, v8, :cond_1e

    goto :goto_1f

    :cond_1e
    move v8, v3

    .line 681
    :goto_1f
    iget-object v7, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mNumListenersByResource:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    move v5, v8

    .line 675
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 683
    :cond_28
    monitor-exit v0

    .line 684
    return v5

    .line 683
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public blacklist maybeRemoveFlag(I)Z
    .registers 11

    .line 688
    nop

    .line 689
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_4
    sget-object v1, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->RESOURCE_OVERUSE_FLAGS:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_a
    if-ge v4, v2, :cond_31

    aget v6, v1, v4

    .line 691
    and-int v7, p1, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_14

    .line 692
    goto :goto_2e

    .line 694
    :cond_14
    iget-object v7, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mNumListenersByResource:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 695
    if-nez v7, :cond_1d

    .line 696
    goto :goto_2e

    .line 698
    :cond_1d
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_29

    .line 699
    nop

    .line 700
    iget-object v5, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mNumListenersByResource:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->delete(I)V

    move v5, v8

    goto :goto_2e

    .line 702
    :cond_29
    iget-object v8, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mNumListenersByResource:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 690
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 705
    :cond_31
    monitor-exit v0

    .line 706
    return v5

    .line 705
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public blacklist onOveruse(Landroid/media/tv/watchdogmanager/ResourceOveruseStats;)V
    .registers 4

    .line 660
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/watchdogmanager/TvWatchdogManager;

    .line 661
    if-eqz v0, :cond_f

    .line 662
    iget-boolean v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mIsSystem:Z

    invoke-static {v0, p1, v1}, Landroid/media/tv/watchdogmanager/TvWatchdogManager;->-$$Nest$monResourceOveruse(Landroid/media/tv/watchdogmanager/TvWatchdogManager;Landroid/media/tv/watchdogmanager/ResourceOveruseStats;Z)V

    .line 664
    :cond_f
    return-void
.end method

.method public blacklist resourceOveruseFlag()I
    .registers 6

    .line 710
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    nop

    .line 712
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    :try_start_7
    iget-object v4, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mNumListenersByResource:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_24

    .line 713
    nop

    .line 714
    iget-object v4, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mNumListenersByResource:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-lez v4, :cond_1f

    .line 715
    iget-object v4, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$IResourceOveruseListenerImpl;->mNumListenersByResource:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    goto :goto_20

    .line 716
    :cond_1f
    move v4, v1

    :goto_20
    or-int/2addr v3, v4

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 718
    :cond_24
    monitor-exit v0

    return v3

    .line 719
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v1
.end method
