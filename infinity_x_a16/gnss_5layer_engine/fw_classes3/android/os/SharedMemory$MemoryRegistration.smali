.class final Landroid/os/SharedMemory$MemoryRegistration;
.super Ljava/lang/Object;
.source "SharedMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryRegistration"
.end annotation


# instance fields
.field private greylist-max-o mReferenceCount:I

.field private greylist-max-o mSize:I


# direct methods
.method private constructor greylist-max-o <init>(I)V
    .registers 4

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    sget v0, Landroid/system/OsConstants;->_SC_PAGE_SIZE:I

    .line 384
    if-lez v0, :cond_d

    .line 385
    rem-int v1, p1, v0

    .line 386
    if-eqz v1, :cond_d

    .line 387
    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 390
    :cond_d
    iput p1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    .line 391
    const/4 p1, 0x1

    iput p1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 392
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object p1

    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    invoke-virtual {p1, v0}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 393
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/SharedMemory-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o acquire()Landroid/os/SharedMemory$MemoryRegistration;
    .registers 2

    monitor-enter p0

    .line 396
    :try_start_1
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 397
    monitor-exit p0

    return-object p0

    .line 395
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized greylist-max-o release()V
    .registers 3

    monitor-enter p0

    .line 401
    :try_start_1
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 402
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    if-nez v0, :cond_14

    .line 403
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 405
    :cond_14
    monitor-exit p0

    return-void

    .line 400
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
