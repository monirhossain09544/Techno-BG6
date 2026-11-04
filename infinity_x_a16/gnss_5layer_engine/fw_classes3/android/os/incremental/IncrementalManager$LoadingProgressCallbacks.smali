.class Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;
.super Landroid/os/incremental/IStorageLoadingProgressListener$Stub;
.source "IncrementalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/IncrementalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingProgressCallbacks"
.end annotation


# instance fields
.field private final blacklist mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageLoadingProgressCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 351
    invoke-direct {p0}, Landroid/os/incremental/IStorageLoadingProgressListener$Stub;-><init>()V

    .line 352
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/incremental/IncrementalManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist cleanUpCallbacks(Landroid/os/incremental/IncrementalStorage;)V
    .registers 5

    .line 357
    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v0

    .line 359
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 360
    :try_start_7
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 361
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1a

    .line 362
    if-nez v0, :cond_13

    .line 363
    return-void

    .line 366
    :cond_13
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 367
    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->unregisterLoadingProgressListener()Z

    .line 368
    return-void

    .line 361
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public blacklist onStorageLoadingProgressChanged(IF)V
    .registers 6

    .line 394
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;

    .line 396
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_29

    .line 397
    if-nez p1, :cond_f

    .line 399
    return-void

    .line 401
    :cond_f
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 403
    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_25

    .line 404
    nop

    .line 405
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IPackageLoadingProgressCallback;

    .line 407
    :try_start_1d
    invoke-interface {v2, p2}, Landroid/content/pm/IPackageLoadingProgressCallback;->onPackageLoadingProgressChanged(F)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    .line 409
    goto :goto_22

    .line 408
    :catch_21
    move-exception v2

    .line 403
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 411
    :cond_25
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 412
    return-void

    .line 396
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public blacklist registerCallback(Landroid/os/incremental/IncrementalStorage;Landroid/content/pm/IPackageLoadingProgressCallback;)Z
    .registers 7

    .line 372
    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v0

    .line 373
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 374
    :try_start_7
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    .line 375
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 376
    if-nez v2, :cond_1b

    .line 377
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 378
    iget-object v3, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    :cond_1b
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 383
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_27

    .line 385
    monitor-exit v1

    return v0

    .line 387
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_2d

    .line 388
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalStorage;->registerLoadingProgressListener(Landroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result p1

    return p1

    .line 387
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method
