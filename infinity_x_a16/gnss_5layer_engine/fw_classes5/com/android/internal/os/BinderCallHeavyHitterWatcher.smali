.class public final Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
.super Ljava/lang/Object;
.source "BinderCallHeavyHitterWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;,
        Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    }
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f

.field private static final blacklist TAG:Ljava/lang/String; = "BinderCallHeavyHitterWatcher"

.field private static blacklist sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mBatchStartTimeStamp:J

.field private blacklist mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

.field private blacklist mCachedCandidateContainersIndex:I

.field private final blacklist mCachedCandidateFrequencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCachedCandidateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCachedCandidateSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentInputSize:I

.field private blacklist mEnabled:Z

.field private final blacklist mHeavyHitterCandiates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/HeavyHitterSketch<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputSize:I

.field private blacklist mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mThreshold:F

.field private blacklist mTotalInputSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sLock:Ljava/lang/Object;

    .line 225
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist acquireHeavyHitterContainerLocked()Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .registers 2

    .line 231
    sget-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    sget-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    if-nez v1, :cond_e

    .line 233
    new-instance v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;-><init>()V

    sput-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 235
    :cond_e
    sget-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    monitor-exit v0

    return-object v1

    .line 236
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist initCachedCandidateContainersLocked(I)V
    .registers 5

    .line 310
    const/4 v0, 0x0

    if-lez p1, :cond_19

    .line 311
    new-array p1, p1, [Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iput-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    .line 312
    move p1, v0

    :goto_8
    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    array-length v1, v1

    if-ge p1, v1, :cond_1c

    .line 313
    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    new-instance v2, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;-><init>()V

    aput-object v2, v1, p1

    .line 312
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 316
    :cond_19
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    .line 318
    :cond_1c
    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    .line 319
    return-void
.end method

.method private blacklist releaseHeavyHitterContainerLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;)V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    aput-object p1, v0, v1

    .line 329
    return-void
.end method

.method private blacklist resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;",
            "Lcom/android/internal/util/HeavyHitterSketch<",
            "Ljava/lang/Integer;",
            ">;IIFI)V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    .line 295
    iput-object p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    .line 296
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 297
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 300
    iput p3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I

    .line 301
    iput p4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    .line 302
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    .line 303
    iput p5, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    .line 305
    invoke-direct {p0, p6}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->initCachedCandidateContainersLocked(I)V

    .line 306
    return-void
.end method


# virtual methods
.method public blacklist onTransaction(ILjava/lang/Class;I)V
    .registers 14

    .line 340
    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_3
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    if-nez v0, :cond_9

    .line 342
    monitor-exit v1

    return-void

    .line 345
    :cond_9
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    .line 346
    if-nez v0, :cond_f

    .line 347
    monitor-exit v1

    return-void

    .line 355
    :cond_f
    invoke-static {p1, p2, p3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->hashCode(ILjava/lang/Class;I)I

    move-result v2

    .line 357
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/internal/util/HeavyHitterSketch;->add(Ljava/lang/Object;)V

    .line 358
    iget v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    .line 359
    iget v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I

    if-ne v3, v4, :cond_39

    .line 361
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Lcom/android/internal/util/HeavyHitterSketch;->getCandidates(Ljava/util/List;)Ljava/util/List;

    .line 362
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 363
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_ee

    .line 364
    :cond_39
    iget v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I

    if-le v3, v4, :cond_6b

    iget v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ge v3, v4, :cond_6b

    .line 366
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 368
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 369
    if-gez v0, :cond_69

    .line 371
    nop

    .line 372
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->acquireHeavyHitterContainerLocked()Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    move-result-object v0

    .line 373
    iput p1, v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    .line 374
    iput-object p2, v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    .line 375
    iput p3, v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    .line 376
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    :cond_69
    goto/16 :goto_ee

    .line 379
    :cond_6b
    iget p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ne p1, p2, :cond_ee

    .line 381
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_cb

    .line 382
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-interface {v0, p2, p1, p3}, Lcom/android/internal/util/HeavyHitterSketch;->getTopHeavyHitters(ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 384
    if-eqz p1, :cond_cb

    .line 385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 386
    if-lez p3, :cond_cb

    .line 387
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 388
    move v0, p2

    :goto_8c
    if-ge v0, p3, :cond_bb

    .line 389
    iget-object v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    .line 390
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 389
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    .line 391
    if-eqz v2, :cond_b8

    .line 392
    new-instance v4, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    invoke-direct {v4, v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;-><init>(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;)V

    .line 394
    iget-object v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v4, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    .line 395
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 398
    :cond_bb
    iget-object v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    iget v4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    iget v5, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    sub-long/2addr v6, v8

    .line 398
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;->onHeavyHit(Ljava/util/List;IFJ)V

    .line 404
    :cond_cb
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    invoke-interface {p1}, Lcom/android/internal/util/HeavyHitterSketch;->reset()V

    .line 405
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 406
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 407
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 408
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 409
    iput p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    .line 410
    iput p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    .line 413
    :cond_ee
    :goto_ee
    monitor-exit v1

    .line 414
    return-void

    .line 413
    :catchall_f0
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_3 .. :try_end_f3} :catchall_f0

    throw p1
.end method

.method public blacklist setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    .registers 14

    .line 250
    iget-object v7, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 251
    if-nez p1, :cond_18

    .line 252
    :try_start_5
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    if-eqz v1, :cond_16

    .line 253
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V

    .line 254
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    .line 256
    :cond_16
    monitor-exit v7

    return-void

    .line 258
    :cond_18
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    .line 260
    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, p3, v1

    if-ltz v2, :cond_88

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p3, v2

    if-lez v3, :cond_29

    goto :goto_88

    .line 264
    :cond_29
    iget v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ne p2, v3, :cond_3d

    iget v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    sub-float v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v1, v3, v1

    if-gez v1, :cond_3d

    .line 266
    iput-object p4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    .line 267
    monitor-exit v7

    return-void

    .line 270
    :cond_3d
    div-float v3, v2, p3

    float-to-int v6, v3

    .line 271
    move v3, v2

    invoke-static {}, Lcom/android/internal/util/HeavyHitterSketch;->newDefault()Lcom/android/internal/util/HeavyHitterSketch;

    move-result-object v2

    .line 272
    invoke-interface {v2}, Lcom/android/internal/util/HeavyHitterSketch;->getRequiredValidationInputRatio()F

    move-result v5

    .line 273
    nop

    .line 274
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_8a

    if-nez v8, :cond_55

    .line 275
    int-to-float v8, p2

    sub-float/2addr v3, v5

    mul-float/2addr v8, v3

    float-to-int v3, v8

    goto :goto_56

    .line 274
    :cond_55
    move v3, p2

    .line 278
    :goto_56
    :try_start_56
    invoke-interface {v2, p2, v6}, Lcom/android/internal/util/HeavyHitterSketch;->setConfig(II)V
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_59} :catch_63
    .catchall {:try_start_56 .. :try_end_59} :catchall_8a

    .line 284
    nop

    .line 286
    move-object v0, p0

    move v4, p2

    move v5, p3

    move-object v1, p4

    :try_start_5e
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V

    .line 287
    monitor-exit v7

    .line 288
    return-void

    .line 279
    :catch_63
    move-exception v0

    .line 281
    const-string v0, "BinderCallHeavyHitterWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter to heavy hitter watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v7

    return-void

    .line 261
    :cond_88
    :goto_88
    monitor-exit v7

    return-void

    .line 287
    :catchall_8a
    move-exception v0

    monitor-exit v7
    :try_end_8c
    .catchall {:try_start_5e .. :try_end_8c} :catchall_8a

    throw v0
.end method
