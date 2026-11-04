.class public Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrequencyBucketCreator"
.end annotation


# instance fields
.field private final blacklist mBucketStartIndices:[I

.field private final blacklist mNumBuckets:I

.field private final blacklist mNumFrequencies:I


# direct methods
.method public constructor blacklist <init>([JI)V
    .registers 4

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    array-length v0, p1

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    .line 412
    invoke-static {p1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getClusterStartIndices([J)[I

    move-result-object p1

    .line 413
    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    .line 414
    invoke-static {p1, p2, v0}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getBucketStartIndices([III)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    .line 415
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    array-length p1, p1

    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    .line 416
    return-void
.end method

.method private static blacklist getBucketStartIndices([III)[I
    .registers 13

    .line 473
    array-length v0, p0

    .line 477
    const/4 v1, 0x0

    if-le v0, p1, :cond_9

    .line 478
    invoke-static {p0, v1, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    return-object p0

    .line 481
    :cond_9
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 482
    move v3, v1

    :goto_f
    if-ge v3, v0, :cond_40

    .line 483
    invoke-static {v3, p0}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getLowerBound(I[I)I

    move-result v4

    .line 484
    nop

    .line 485
    invoke-static {v3, p0, p2}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getUpperBound(I[II)I

    move-result v5

    .line 488
    add-int/lit8 v6, v0, -0x1

    if-eq v3, v6, :cond_21

    .line 489
    div-int v6, p1, v0

    goto :goto_26

    .line 493
    :cond_21
    div-int v7, p1, v0

    .line 494
    mul-int/2addr v7, v6

    sub-int v6, p1, v7

    .line 498
    :goto_26
    sub-int v7, v5, v4

    .line 501
    div-int/2addr v7, v6

    .line 502
    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 503
    move v8, v1

    :goto_2f
    if-ge v8, v6, :cond_3d

    .line 504
    mul-int v9, v8, v7

    add-int/2addr v9, v4

    .line 507
    if-lt v9, v5, :cond_37

    .line 508
    goto :goto_3d

    .line 510
    :cond_37
    invoke-virtual {v2, v9}, Landroid/util/IntArray;->add(I)V

    .line 503
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 482
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 513
    :cond_40
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getClusterStartIndices([J)[I
    .registers 7

    .line 460
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 461
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 462
    :cond_9
    :goto_9
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1c

    .line 463
    aget-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, p0, v1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    .line 464
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_9

    .line 467
    :cond_1c
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getLowerBound(I[I)I
    .registers 2

    .line 517
    aget p0, p1, p0

    return p0
.end method

.method private static blacklist getUpperBound(I[II)I
    .registers 4

    .line 521
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq p0, v0, :cond_a

    .line 522
    add-int/lit8 p0, p0, 0x1

    aget p0, p1, p0

    return p0

    .line 524
    :cond_a
    return p2
.end method


# virtual methods
.method public blacklist bucketFrequencies([J)[I
    .registers 7

    .line 444
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 445
    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    new-array v1, v0, [I

    .line 446
    nop

    :goto_11
    if-ge v2, v0, :cond_1f

    .line 447
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    aget v3, v3, v2

    aget-wide v3, p1, v3

    long-to-int v3, v3

    aput v3, v1, v2

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 449
    :cond_1f
    return-object v1
.end method

.method public blacklist bucketValues([J)[I
    .registers 10

    .line 428
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 429
    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    new-array v0, v0, [I

    .line 430
    nop

    :goto_11
    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    if-ge v2, v1, :cond_34

    .line 431
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    invoke-static {v2, v1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getLowerBound(I[I)I

    move-result v1

    .line 432
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    array-length v4, p1

    .line 433
    invoke-static {v2, v3, v4}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getUpperBound(I[II)I

    move-result v3

    .line 434
    nop

    :goto_23
    if-ge v1, v3, :cond_31

    .line 435
    aget v4, v0, v2

    int-to-long v4, v4

    aget-wide v6, p1, v1

    add-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v0, v2

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 430
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 438
    :cond_34
    return-object v0
.end method
