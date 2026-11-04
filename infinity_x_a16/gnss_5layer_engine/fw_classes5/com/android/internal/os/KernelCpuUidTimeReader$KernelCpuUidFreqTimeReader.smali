.class public Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;
.super Lcom/android/internal/os/KernelCpuUidTimeReader;
.source "KernelCpuUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidFreqTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelCpuUidTimeReader<",
        "[J>;"
    }
.end annotation


# static fields
.field private static final blacklist MAX_ERROR_COUNT:I = 0x5

.field private static final blacklist UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private blacklist mAllUidTimesAvailable:Z

.field private blacklist mBuffer:[J

.field private blacklist mCpuFreqs:[J

.field private blacklist mCurTimes:[J

.field private blacklist mDeltaTimes:[J

.field private blacklist mErrors:I

.field private blacklist mFreqCount:I

.field private blacklist mPerClusterTimesAvailable:Z

.field private final blacklist mProcFilePath:Ljava/nio/file/Path;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;Z)V
    .registers 11

    .line 365
    sget-object v5, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Ljava/lang/String;Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 366
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V
    .registers 6

    .line 370
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 348
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    .line 349
    iput p2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mErrors:I

    .line 371
    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mProcFilePath:Ljava/nio/file/Path;

    .line 372
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3

    .line 354
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(ZLcom/android/internal/os/Clock;)V

    .line 355
    return-void
.end method

.method public constructor blacklist <init>(ZLcom/android/internal/os/Clock;)V
    .registers 9

    .line 358
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcStringReader;->getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;

    move-result-object v2

    .line 359
    invoke-static {}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    move-result-object v3

    .line 358
    const-string v1, "/proc/uid_time_in_state"

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Ljava/lang/String;Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 360
    return-void
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z
    .registers 5

    .line 545
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_20

    .line 549
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object p1

    .line 550
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 551
    return v2

    .line 553
    :cond_14
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readFreqs(Ljava/lang/String;)[J

    move-result-object p1

    if-eqz p1, :cond_1f

    move v0, v2

    :cond_1f
    return v0

    .line 547
    :cond_20
    :goto_20
    return v0
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z
    .registers 4

    .line 533
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 534
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    .line 535
    return v0

    .line 537
    :cond_6
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    .line 538
    return v1

    .line 540
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readFreqsThroughBpf()[J

    move-result-object p1

    if-eqz p1, :cond_13

    move v0, v1

    :cond_13
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    .line 541
    iget-boolean p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    return p1
.end method

.method private blacklist copyToCurTimes()V
    .registers 9

    .line 526
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0xa

    .line 527
    :goto_9
    const/4 v2, 0x0

    :goto_a
    iget v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    if-ge v2, v3, :cond_1b

    .line 528
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    add-int/lit8 v5, v2, 0x1

    aget-wide v6, v4, v5

    mul-long/2addr v6, v0

    aput-wide v6, v3, v2

    .line 527
    move v2, v5

    goto :goto_a

    .line 530
    :cond_1b
    return-void
.end method

.method private blacklist extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;
    .registers 10

    .line 567
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 568
    nop

    .line 569
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    iget v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    if-ge v2, v4, :cond_27

    .line 570
    add-int/lit8 v3, v3, 0x1

    .line 571
    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    if-eq v4, v5, :cond_21

    iget-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    aget-wide v5, v5, v4

    iget-object v7, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    aget-wide v7, v7, v2

    cmp-long v2, v5, v7

    if-gtz v2, :cond_25

    .line 572
    :cond_21
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 573
    move v3, v1

    .line 569
    :cond_25
    move v2, v4

    goto :goto_9

    .line 576
    :cond_27
    return-object v0
.end method

.method private blacklist processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v0, v2

    .line 444
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 445
    if-nez v2, :cond_19

    .line 446
    iget v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    new-array v2, v2, [J

    .line 447
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->copyToCurTimes()V

    .line 450
    nop

    .line 451
    move v3, v1

    move v4, v3

    :goto_1f
    iget v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    if-ge v3, v5, :cond_48

    .line 453
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    aget-wide v6, v6, v3

    aget-wide v8, v2, v3

    sub-long/2addr v6, v8

    aput-wide v6, v5, v3

    .line 454
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    aget-wide v5, v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_39

    .line 457
    return-void

    .line 459
    :cond_39
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    aget-wide v5, v5, v3

    cmp-long v5, v5, v7

    if-lez v5, :cond_43

    const/4 v5, 0x1

    goto :goto_44

    :cond_43
    move v5, v1

    :goto_44
    or-int/2addr v4, v5

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 461
    :cond_48
    if-eqz v4, :cond_58

    .line 462
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    iget v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    if-eqz p1, :cond_58

    .line 464
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    invoke-interface {p1, v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V

    .line 467
    :cond_58
    return-void
.end method

.method private blacklist readFreqs(Ljava/lang/String;)[J
    .registers 7

    .line 423
    const/4 v0, 0x0

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_66

    .line 426
    :cond_e
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 427
    array-length v2, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_31

    .line 428
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed freq line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-object v0

    .line 431
    :cond_31
    array-length p1, v1

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    .line 432
    iget p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    .line 433
    iget p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    .line 434
    iget p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    .line 435
    iget p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    add-int/2addr p1, v3

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    .line 436
    const/4 p1, 0x0

    :goto_4f
    iget v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    if-ge p1, v0, :cond_63

    .line 437
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v2, p1, 0x1

    aget-object v3, v1, v2

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    aput-wide v3, v0, p1

    .line 436
    move p1, v2

    goto :goto_4f

    .line 439
    :cond_63
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    return-object p1

    .line 424
    :cond_66
    :goto_66
    return-object v0
.end method

.method private blacklist readFreqsThroughBpf()[J
    .registers 3

    .line 408
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    if-nez v0, :cond_a

    goto :goto_33

    .line 411
    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getDataDimensions()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    .line 412
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    if-nez v0, :cond_17

    .line 413
    return-object v1

    .line 415
    :cond_17
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    .line 416
    iget v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    .line 417
    iget v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    .line 418
    iget v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    .line 419
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    return-object v0

    .line 409
    :cond_33
    :goto_33
    return-object v1
.end method


# virtual methods
.method public blacklist allUidTimesAvailable()Z
    .registers 2

    .line 397
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mAllUidTimesAvailable:Z

    return v0
.end method

.method public blacklist getAllUidCpuFreqTimeMs()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mLastTimes:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist isFastCpuTimesReader()Z
    .registers 2

    .line 580
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    return v0
.end method

.method public blacklist onSystemReady()V
    .registers 2

    .line 378
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    if-nez v0, :cond_14

    .line 379
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readFreqsThroughBpf()[J

    .line 382
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mAllUidTimesAvailable:Z

    .line 384
    :cond_14
    return-void
.end method

.method public blacklist perClusterTimesAvailable()Z
    .registers 2

    .line 390
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    return v0
.end method

.method blacklist readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 498
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 499
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mThrottle:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    .line 500
    :try_start_f
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 501
    :goto_15
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 502
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->copyToCurTimes()V

    .line 503
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    aget-wide v2, v2, v1

    long-to-int v2, v2

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    invoke-interface {p1, v2, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_37

    goto :goto_15

    .line 507
    :cond_2b
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 505
    :cond_30
    return-void

    .line 507
    :cond_31
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_43

    .line 499
    :catchall_37
    move-exception p1

    if-eqz v0, :cond_42

    :try_start_3a
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw p1

    .line 509
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mThrottle:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 510
    :try_start_4d
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z

    move-result v2
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_9b

    if-nez v2, :cond_59

    .line 522
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 511
    :cond_58
    return-void

    .line 514
    :cond_59
    :goto_59
    :try_start_59
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v2

    if-eqz v2, :cond_95

    .line 515
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    invoke-static {v2, v3}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    array-length v4, v4

    if-eq v3, v4, :cond_87

    .line 516
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    goto :goto_59

    .line 519
    :cond_87
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->copyToCurTimes()V

    .line 520
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    aget-wide v2, v2, v1

    long-to-int v2, v2

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    invoke-interface {p1, v2, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_94
    .catchall {:try_start_59 .. :try_end_94} :catchall_9b

    goto :goto_59

    .line 522
    :cond_95
    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 523
    :cond_9a
    return-void

    .line 509
    :catchall_9b
    move-exception p1

    if-eqz v0, :cond_a6

    :try_start_9e
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_a6

    :catchall_a2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a6
    :goto_a6
    throw p1
.end method

.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;Z)V"
        }
    .end annotation

    .line 471
    iget-boolean p2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    if-eqz p2, :cond_38

    .line 472
    iget-object p2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mThrottle:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object p2

    .line 473
    :try_start_e
    invoke-direct {p0, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 474
    :goto_14
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    invoke-virtual {p2, v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 475
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_2c

    goto :goto_14

    .line 479
    :cond_20
    if-eqz p2, :cond_25

    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 477
    :cond_25
    return-void

    .line 479
    :cond_26
    if-eqz p2, :cond_38

    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_38

    .line 472
    :catchall_2c
    move-exception p1

    if-eqz p2, :cond_37

    :try_start_2f
    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    throw p1

    .line 481
    :cond_38
    :goto_38
    iget-object p2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mThrottle:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object p2

    .line 482
    :try_start_42
    invoke-direct {p0, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z

    move-result v0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_86

    if-nez v0, :cond_4e

    .line 493
    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 483
    :cond_4d
    return-void

    .line 486
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 487
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    array-length v2, v2

    if-eq v1, v2, :cond_7c

    .line 488
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    goto :goto_4e

    .line 491
    :cond_7c
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_7f
    .catchall {:try_start_4e .. :try_end_7f} :catchall_86

    goto :goto_4e

    .line 493
    :cond_80
    if-eqz p2, :cond_85

    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 494
    :cond_85
    return-void

    .line 481
    :catchall_86
    move-exception p1

    if-eqz p2, :cond_91

    :try_start_89
    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_91
    :goto_91
    throw p1
.end method
