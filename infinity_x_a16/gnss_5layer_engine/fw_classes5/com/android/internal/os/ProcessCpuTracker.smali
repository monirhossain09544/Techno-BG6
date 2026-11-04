.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;,
        Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOAD_AVERAGE_FORMAT:[I

.field private static final blacklist PROCESS_FULL_STATS_FORMAT:[I

.field static final blacklist PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final blacklist PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final blacklist PROCESS_FULL_STAT_STIME:I = 0x4

.field static final blacklist PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final blacklist PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final blacklist PROCESS_SCHEDSTATS_FORMAT:[I

.field static final blacklist PROCESS_SCHEDSTAT_CPU_DELAY_TIME:I = 0x1

.field static final blacklist PROCESS_SCHEDSTAT_CPU_TIME:I = 0x0

.field private static final blacklist PROCESS_STATS_FORMAT:[I

.field static final blacklist PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final blacklist PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final blacklist PROCESS_STAT_STIME:I = 0x3

.field static final blacklist PROCESS_STAT_UTIME:I = 0x2

.field private static final blacklist SYSTEM_CPU_FORMAT:[I

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final blacklist localLOGV:Z = false

.field private static final blacklist sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBaseIdleTime:J

.field private blacklist mBaseIoWaitTime:J

.field private blacklist mBaseIrqTime:J

.field private blacklist mBaseSoftIrqTime:J

.field private blacklist mBaseSystemTime:J

.field private blacklist mBaseUserTime:J

.field private blacklist mCurPids:[I

.field private blacklist mCurThreadPids:[I

.field private blacklist mCurrentSampleRealTime:J

.field private blacklist mCurrentSampleTime:J

.field private blacklist mCurrentSampleWallTime:J

.field private blacklist mFirst:Z

.field private final blacklist mIncludeThreads:Z

.field private final blacklist mJiffyMillis:J

.field private blacklist mLastSampleRealTime:J

.field private blacklist mLastSampleTime:J

.field private blacklist mLastSampleWallTime:J

.field private blacklist mLoad1:F

.field private blacklist mLoad15:F

.field private blacklist mLoad5:F

.field private final blacklist mLoadAverageData:[F

.field private final blacklist mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProcessFullStatsData:[J

.field private final blacklist mProcessFullStatsStringData:[Ljava/lang/String;

.field private final blacklist mProcessStatsData:[J

.field private blacklist mRelIdleTime:I

.field private blacklist mRelIoWaitTime:I

.field private blacklist mRelIrqTime:I

.field private blacklist mRelSoftIrqTime:I

.field private blacklist mRelStatsAreGood:Z

.field private blacklist mRelSystemTime:I

.field private blacklist mRelUserTime:I

.field private final blacklist mSystemCpuData:[J

.field private final blacklist mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWorkingProcsSorted:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 83
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 118
    const/16 v0, 0x2020

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_SCHEDSTATS_FORMAT:[I

    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 139
    const/16 v0, 0x4020

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 299
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_34
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_56
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_88
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor greylist <init>(Z)V
    .registers 6

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 115
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 116
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 137
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 145
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 153
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 154
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 320
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 321
    sget p1, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {p1}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 322
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 323
    return-void
.end method

.method private blacklist collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .line 447
    move-object/from16 v0, p0

    move-object/from16 v7, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v1, v2}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v8

    .line 448
    const/4 v9, 0x0

    if-nez v8, :cond_11

    move v10, v9

    goto :goto_13

    :cond_11
    array-length v1, v8

    move v10, v1

    .line 449
    :goto_13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 450
    nop

    .line 451
    move v11, v1

    move v1, v9

    move v12, v1

    :goto_1b
    const/4 v13, 0x1

    if-ge v12, v10, :cond_231

    .line 452
    aget v2, v8, v12

    .line 453
    if-gez v2, :cond_29

    .line 454
    nop

    .line 455
    move-object/from16 v23, v8

    move/from16 v18, v11

    goto/16 :goto_235

    .line 457
    :cond_29
    const/4 v3, 0x0

    if-ge v1, v11, :cond_34

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-object v14, v4

    goto :goto_35

    :cond_34
    move-object v14, v3

    .line 459
    :goto_35
    if-eqz v14, :cond_142

    iget v15, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v15, v2, :cond_142

    .line 461
    iput-boolean v9, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 462
    iput-boolean v9, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 463
    add-int/lit8 v15, v1, 0x1

    .line 468
    iget-boolean v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_12e

    .line 469
    move/from16 p1, v9

    move/from16 p4, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 471
    iget-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 472
    const/16 v16, 0x3

    iget-object v4, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x2

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    invoke-static {v4, v5, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-nez v3, :cond_69

    .line 474
    move-object/from16 v23, v8

    move/from16 v18, v11

    move/from16 v19, v12

    goto/16 :goto_136

    .line 477
    :cond_69
    aget-wide v3, v1, p1

    .line 478
    move-wide/from16 v18, v3

    aget-wide v3, v1, v13

    .line 479
    aget-wide v20, v1, v17

    move-object/from16 v22, v14

    iget-wide v13, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v13, v13, v20

    .line 480
    aget-wide v16, v1, v16

    move v5, v2

    iget-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v16, v16, v1

    .line 482
    move-wide/from16 v20, v3

    move-object/from16 v1, v22

    iget-wide v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    cmp-long v2, v13, v2

    if-nez v2, :cond_ae

    iget-wide v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v2, v16, v2

    if-nez v2, :cond_ae

    .line 483
    move/from16 v2, p1

    iput v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 484
    iput v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 485
    iput v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 486
    iput v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 487
    iget-boolean v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v3, :cond_a6

    .line 488
    iput-boolean v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    move-object/from16 v23, v8

    move/from16 v18, v11

    move/from16 v19, v12

    goto/16 :goto_136

    .line 487
    :cond_a6
    move-object/from16 v23, v8

    move/from16 v18, v11

    move/from16 v19, v12

    goto/16 :goto_136

    .line 493
    :cond_ae
    iget-boolean v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v2, :cond_b5

    .line 494
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 497
    :cond_b5
    if-gez p2, :cond_ef

    .line 498
    iget-object v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 499
    iget-object v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v2, :cond_e1

    .line 500
    iget-object v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    move-object v3, v2

    move v2, v5

    iget-object v5, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v22, v1

    move-object v1, v3

    const/4 v3, 0x0

    move-object/from16 v23, v8

    move-wide/from16 v6, v16

    move-object/from16 v8, v22

    move-wide/from16 v24, v18

    move/from16 v18, v11

    move/from16 v19, v12

    move-wide/from16 v11, v24

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_fc

    .line 499
    :cond_e1
    move-object/from16 v23, v8

    move-wide/from16 v6, v16

    move-object v8, v1

    move-wide/from16 v24, v18

    move/from16 v18, v11

    move/from16 v19, v12

    move-wide/from16 v11, v24

    goto :goto_fc

    .line 497
    :cond_ef
    move-object/from16 v23, v8

    move-wide/from16 v6, v16

    move-object v8, v1

    move-wide/from16 v24, v18

    move/from16 v18, v11

    move/from16 v19, v12

    move-wide/from16 v11, v24

    .line 511
    :goto_fc
    iget-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v1, v9, v1

    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 512
    iput-wide v9, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 513
    iget-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v1, v13, v1

    long-to-int v1, v1

    iput v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 514
    iget-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v1, v6, v1

    long-to-int v1, v1

    iput v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 515
    iput-wide v13, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 516
    iput-wide v6, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 517
    iget-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v3, v11, v1

    long-to-int v1, v3

    iput v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 518
    iget-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v3, v20, v1

    long-to-int v1, v3

    iput v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 519
    iput-wide v11, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 520
    move-wide/from16 v1, v20

    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 521
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 522
    goto :goto_136

    .line 468
    :cond_12e
    move-object/from16 v23, v8

    move/from16 p4, v10

    move/from16 v18, v11

    move/from16 v19, v12

    .line 451
    :goto_136
    move/from16 v8, p2

    move-object/from16 v7, p5

    move v1, v15

    move/from16 v11, v18

    move/from16 v12, v19

    const/4 v2, 0x1

    goto/16 :goto_229

    .line 459
    :cond_142
    move-object/from16 v23, v8

    move/from16 p4, v10

    move/from16 v18, v11

    move/from16 v19, v12

    move-object v8, v14

    const/16 v16, 0x3

    const/16 v17, 0x2

    .line 527
    if-eqz v8, :cond_174

    iget v4, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-le v4, v2, :cond_158

    move-object/from16 v7, p5

    goto :goto_176

    .line 595
    :cond_158
    const/4 v2, 0x0

    iput v2, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 596
    iput v2, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 597
    iput v2, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 598
    iput v2, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 599
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 600
    iput-boolean v2, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 601
    move-object/from16 v7, p5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 602
    add-int/lit8 v11, v18, -0x1

    .line 608
    add-int/lit8 v12, v19, -0x1

    .line 609
    move/from16 v8, p2

    const/4 v2, 0x1

    goto/16 :goto_229

    .line 527
    :cond_174
    move-object/from16 v7, p5

    .line 529
    :goto_176
    new-instance v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    move/from16 v8, p2

    invoke-direct {v6, v2, v8, v4}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    .line 530
    invoke-virtual {v7, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 531
    add-int/lit8 v9, v1, 0x1

    .line 532
    add-int/lit8 v11, v18, 0x1

    .line 537
    iget-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 538
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 540
    iget-object v5, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 542
    sget-object v10, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v5, v10, v1, v4, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 548
    const/4 v3, 0x5

    aget-wide v12, v4, v3

    iput-wide v12, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 550
    const/4 v3, 0x1

    iput-boolean v3, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 551
    const/4 v5, 0x0

    aget-object v1, v1, v5

    iput-object v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 552
    aget-wide v12, v4, v3

    iput-wide v12, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 553
    aget-wide v12, v4, v17

    iput-wide v12, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 554
    aget-wide v12, v4, v16

    iget-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v12, v14

    iput-wide v12, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 555
    const/4 v1, 0x4

    aget-wide v3, v4, v1

    iget-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v3, v12

    iput-wide v3, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    goto :goto_1e9

    .line 562
    :cond_1c3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unknown process pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ProcessCpuTracker"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v1, "<unknown>"

    iput-object v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 564
    const-wide/16 v3, 0x0

    iput-wide v3, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    iput-wide v3, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 565
    iput-wide v3, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    iput-wide v3, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 568
    :goto_1e9
    if-gez v8, :cond_202

    .line 569
    iget-object v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v0, v6, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 570
    iget-object v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v1, :cond_212

    .line 571
    iget-object v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v5, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_212

    .line 574
    :cond_202
    iget-boolean v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_212

    .line 575
    iget-object v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 576
    iget-object v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 583
    :cond_212
    :goto_212
    const/4 v2, 0x0

    iput v2, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 584
    iput v2, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 585
    iput v2, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 586
    iput v2, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 587
    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 588
    if-nez p3, :cond_226

    iget-boolean v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_226

    .line 589
    iput-boolean v2, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 451
    :cond_226
    move v1, v9

    move/from16 v12, v19

    :goto_229
    add-int/2addr v12, v2

    move/from16 v10, p4

    move-object/from16 v8, v23

    const/4 v9, 0x0

    goto/16 :goto_1b

    :cond_231
    move-object/from16 v23, v8

    move/from16 v18, v11

    .line 612
    :goto_235
    move/from16 v11, v18

    :goto_237
    if-ge v1, v11, :cond_253

    .line 614
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 615
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 616
    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 617
    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 618
    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 619
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 620
    iput-boolean v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 621
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 622
    add-int/lit8 v11, v11, -0x1

    .line 624
    goto :goto_237

    .line 626
    :cond_253
    return-object v23
.end method

.method private static blacklist dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .registers 9

    .line 812
    const-wide v0, 0x20b00000010L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 813
    const-wide v2, 0x10500000001L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 814
    const-wide v2, 0x10500000002L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 815
    const-wide v2, 0x10900000003L

    iget-object v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 816
    const-wide v2, 0x10800000004L

    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 817
    const-wide v2, 0x10800000005L

    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 818
    const-wide v2, 0x10500000006L

    iget-wide v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 819
    const-wide v2, 0x10500000007L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 820
    const-wide v2, 0x10500000008L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 821
    const-wide v2, 0x10500000009L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 822
    const-wide v2, 0x1050000000aL

    iget p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 823
    if-eqz p2, :cond_79

    .line 824
    const-wide v2, 0x1050000000bL

    iget p1, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 826
    :cond_79
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 827
    return-void
.end method

.method private blacklist getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .registers 6

    .line 983
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 984
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 985
    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 986
    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 987
    const-string v2, "usap32"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 988
    const-string v2, "usap64"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 989
    :cond_2e
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object p2

    .line 990
    if-eqz p2, :cond_54

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_54

    .line 991
    nop

    .line 992
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 993
    if-lez v0, :cond_53

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_53

    .line 994
    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    goto :goto_54

    .line 997
    :cond_53
    move-object v0, p2

    :cond_54
    :goto_54
    if-nez v0, :cond_58

    .line 998
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 1001
    :cond_58
    iget-object p2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz p2, :cond_64

    iget-object p2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6e

    .line 1002
    :cond_64
    iput-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 1003
    iget-object p2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 1005
    :cond_6e
    return-void
.end method

.method private blacklist printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .registers 27

    .line 937
    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    if-nez p5, :cond_17

    const/4 v0, 0x1

    goto :goto_19

    :cond_17
    move/from16 v0, p5

    .line 939
    :goto_19
    add-int v1, v7, v8

    add-int/2addr v1, v9

    add-int/2addr v1, v10

    add-int/2addr v1, v11

    int-to-long v2, v1

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 940
    const-string v0, "% "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    if-ltz v6, :cond_34

    .line 942
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 943
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 945
    :cond_34
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    int-to-long v2, v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 948
    const-string v0, "% user + "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    int-to-long v2, v8

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v2

    move-wide/from16 p6, v4

    invoke-direct/range {p2 .. p7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 950
    const-string v0, "% kernel"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    const-string v0, " + "

    if-lez v9, :cond_72

    .line 952
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    int-to-long v2, v9

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v2

    move-wide/from16 p6, v4

    invoke-direct/range {p2 .. p7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 954
    const-string v2, "% iowait"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 956
    :cond_72
    if-lez v10, :cond_88

    .line 957
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 958
    int-to-long v2, v10

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v2

    move-wide/from16 p6, v4

    invoke-direct/range {p2 .. p7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 959
    const-string v2, "% irq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    :cond_88
    if-lez v11, :cond_9e

    .line 962
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 963
    int-to-long v2, v11

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v2

    move-wide/from16 p6, v4

    invoke-direct/range {p2 .. p7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 964
    const-string v0, "% softirq"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    :cond_9e
    if-gtz v12, :cond_a2

    if-lez v13, :cond_c3

    .line 967
    :cond_a2
    const-string v0, " / faults:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    const-string v0, " "

    if-lez v12, :cond_b6

    .line 969
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 971
    const-string v2, " minor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 973
    :cond_b6
    if-lez v13, :cond_c3

    .line 974
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 976
    const-string v0, " major"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    :cond_c3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 980
    return-void
.end method

.method private blacklist printRatio(Ljava/io/PrintWriter;JJ)V
    .registers 9

    .line 922
    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    div-long/2addr p2, p4

    .line 923
    const-wide/16 p4, 0xa

    div-long v0, p2, p4

    .line 924
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 925
    cmp-long v2, v0, p4

    if-gez v2, :cond_1f

    .line 926
    mul-long/2addr v0, p4

    sub-long/2addr p2, v0

    .line 927
    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-eqz p4, :cond_1f

    .line 928
    const/16 p4, 0x2e

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    .line 929
    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 932
    :cond_1f
    return-void
.end method

.method private blacklist updateLocked()V
    .registers 27

    .line 348
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 352
    iget-object v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 353
    sget-object v8, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const-string v9, "/proc/stat"

    const/4 v10, 0x0

    invoke-static {v9, v8, v10, v7, v10}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v8, :cond_95

    .line 356
    aget-wide v13, v7, v12

    aget-wide v15, v7, v11

    add-long/2addr v13, v15

    move v8, v12

    move-wide v15, v13

    iget-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v13, v15, v12

    .line 358
    aget-wide v15, v7, v9

    move/from16 v17, v8

    move v12, v9

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v8, v15

    .line 360
    const/4 v15, 0x3

    aget-wide v15, v7, v15

    move-wide/from16 v18, v13

    move v14, v12

    iget-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v12, v15

    .line 362
    const/4 v15, 0x4

    aget-wide v15, v7, v15

    move/from16 v20, v14

    move-wide/from16 v21, v15

    iget-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v14, v14, v21

    .line 363
    const/16 v16, 0x5

    aget-wide v21, v7, v16

    iget-wide v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v10, v10, v21

    .line 364
    const/16 v21, 0x6

    aget-wide v21, v7, v21

    move-wide/from16 v24, v5

    iget-wide v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v5, v5, v21

    .line 371
    move-wide/from16 v21, v3

    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    sub-long v3, v18, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 372
    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v3, v8, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 373
    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v3, v14, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 374
    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v3, v10, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 375
    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v3, v5, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 376
    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v3, v12, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 377
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    .line 389
    move-wide/from16 v3, v18

    iput-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 390
    iput-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 391
    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 392
    iput-wide v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 393
    iput-wide v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 394
    iput-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    goto :goto_9d

    .line 353
    :cond_95
    move-wide/from16 v21, v3

    move-wide/from16 v24, v5

    move/from16 v20, v9

    move/from16 v17, v12

    .line 409
    :goto_9d
    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iput-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 410
    iput-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 411
    iget-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iput-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 412
    move-wide/from16 v1, v21

    iput-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 413
    iget-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    iput-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    .line 414
    move-wide/from16 v1, v24

    iput-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    .line 416
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 418
    :try_start_b7
    const-string v1, "/proc"

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_c6
    .catchall {:try_start_b7 .. :try_end_c6} :catchall_101

    .line 420
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 421
    nop

    .line 423
    iget-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 424
    const-string v2, "/proc/loadavg"

    sget-object v3, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4, v1}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 426
    aget v2, v1, v17

    .line 427
    const/16 v23, 0x1

    aget v3, v1, v23

    .line 428
    aget v1, v1, v20

    .line 429
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_f1

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_f1

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_fa

    .line 430
    :cond_f1
    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 431
    iput v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 432
    iput v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 433
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    .line 440
    :cond_fa
    move/from16 v8, v17

    iput-boolean v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 441
    iput-boolean v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 442
    return-void

    .line 420
    :catchall_101
    move-exception v0

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 421
    throw v0
.end method


# virtual methods
.method final blacklist buildWorkingProcs()V
    .registers 9

    .line 714
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_66

    .line 715
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 716
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 717
    const/4 v1, 0x0

    move v2, v1

    :goto_11
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5d

    .line 718
    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 719
    iget-boolean v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v5, :cond_5a

    .line 720
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_5a

    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_5a

    .line 722
    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 723
    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 724
    move v5, v1

    :goto_3d
    if-ge v5, v3, :cond_53

    .line 725
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 726
    iget-boolean v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v7, :cond_50

    .line 727
    iget-object v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 730
    :cond_53
    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 717
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 734
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 735
    iput-boolean v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 737
    :cond_66
    return-void
.end method

.method public final blacklist countStats()I
    .registers 2

    .line 740
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final greylist-max-r countWorkingStats()I
    .registers 2

    .line 761
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 762
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final blacklist dumpProto(Ljava/io/FileDescriptor;)V
    .registers 9

    .line 772
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 773
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 774
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 775
    const-wide v5, 0x10200000001L

    iget p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v2, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 776
    const-wide v5, 0x10200000002L

    iget p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v2, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 777
    const-wide v5, 0x10200000003L

    iget p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v2, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 778
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 780
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 782
    const-wide v3, 0x10300000002L

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 783
    const-wide v0, 0x10300000003L

    iget-wide v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 784
    const-wide v0, 0x10300000004L

    iget-wide v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 785
    const-wide v0, 0x10300000005L

    iget-wide v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 786
    const-wide v0, 0x10300000006L

    iget-wide v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 787
    const-wide v0, 0x10300000007L

    iget-wide v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 788
    const-wide v0, 0x10300000008L

    iget-wide v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 790
    const-wide v0, 0x10500000009L

    iget p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 791
    const-wide v0, 0x1050000000aL

    iget p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 792
    const-wide v0, 0x1050000000bL

    iget p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 793
    const-wide v0, 0x1050000000cL

    iget p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 794
    const-wide v0, 0x1050000000dL

    iget p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 795
    const-wide v0, 0x1050000000eL

    iget p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 796
    iget p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr p1, v0

    .line 798
    const-wide v0, 0x1050000000fL

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 800
    iget-object p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 801
    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    .line 802
    iget-boolean v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v1, :cond_103

    iget-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v1, :cond_103

    .line 803
    iget-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_103

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 804
    invoke-static {v2, v3, v0}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    .line 805
    goto :goto_f3

    .line 807
    :cond_103
    goto :goto_d5

    .line 808
    :cond_104
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 809
    return-void
.end method

.method public blacklist getCpuDelayTimeForPid(I)J
    .registers 6

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/schedstat"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 651
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 652
    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_SCHEDSTATS_FORMAT:[I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 654
    const/4 p1, 0x1

    aget-wide v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0

    .line 656
    :cond_2d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getCpuTimeForPid(I)J
    .registers 7

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/stat"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 635
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 636
    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 638
    const/4 p1, 0x2

    aget-wide v1, v0, p1

    const/4 p1, 0x3

    aget-wide v3, v0, p1

    add-long/2addr v1, v3

    .line 640
    iget-wide v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v1, v3

    return-wide v1

    .line 642
    :cond_30
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final blacklist getLastIdleTime()I
    .registers 2

    .line 698
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final blacklist getLastIoWaitTime()I
    .registers 2

    .line 677
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final blacklist getLastIrqTime()I
    .registers 2

    .line 684
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final blacklist getLastSoftIrqTime()I
    .registers 2

    .line 691
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final blacklist getLastSystemTime()I
    .registers 2

    .line 670
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final blacklist getLastUserTime()I
    .registers 2

    .line 663
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final blacklist getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .registers 3

    .line 744
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object p1
.end method

.method public final blacklist getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/ProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 749
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 750
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_28

    .line 751
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 752
    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcessCpuTracker$FilterStats;->needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 753
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 756
    :cond_28
    return-object v0
.end method

.method public final blacklist getTotalCpuPercent()F
    .registers 4

    .line 706
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v0, v1

    .line 707
    if-gtz v0, :cond_f

    .line 708
    const/4 v0, 0x0

    return v0

    .line 710
    :cond_f
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public final greylist-max-r getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .registers 3

    .line 767
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object p1
.end method

.method public final blacklist hasGoodLastStats()Z
    .registers 2

    .line 702
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public blacklist init()V
    .registers 2

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 336
    return-void
.end method

.method public blacklist onLoadChanged(FFF)V
    .registers 4

    .line 326
    return-void
.end method

.method public blacklist onMeasureProcessName(Ljava/lang/String;)I
    .registers 2

    .line 329
    const/4 p1, 0x0

    return p1
.end method

.method public final blacklist printCurrentLoad()Ljava/lang/String;
    .registers 5

    .line 830
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 831
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 832
    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 833
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 834
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    iget v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 836
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 838
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 839
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist printCurrentState(J)Ljava/lang/String;
    .registers 4

    .line 847
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist printCurrentState(JI)Ljava/lang/String;
    .registers 25

    .line 855
    move-object/from16 v0, p0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 859
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 860
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/16 v3, 0x400

    const/4 v14, 0x0

    invoke-direct {v2, v13, v14, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 862
    const-string v3, "CPU usage from "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v3, p1, v3

    const-string v4, "ms to "

    if-lez v3, :cond_3d

    .line 864
    iget-wide v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v5, p1, v5

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 865
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 867
    const-string v3, "ms ago"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_53

    .line 869
    :cond_3d
    iget-wide v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v5, v5, p1

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 870
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v3, v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 872
    const-string v3, "ms later"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 874
    :goto_53
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 876
    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 877
    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long/2addr v3, v5

    .line 881
    iget-wide v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long/2addr v5, v7

    .line 882
    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    const-wide/16 v9, 0x64

    if-lez v1, :cond_93

    mul-long/2addr v3, v9

    div-long v7, v3, v5

    .line 883
    :cond_93
    cmp-long v1, v7, v9

    if-eqz v1, :cond_a4

    .line 884
    const-string v1, " with "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v2, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 886
    const-string v1, "% awake"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 888
    :cond_a4
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    iget v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v3

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v1, v3

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v3

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v1, v3

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v15, v1, v3

    .line 896
    iget-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v3, p3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 897
    move v3, v14

    :goto_c8
    if-ge v3, v1, :cond_16a

    .line 898
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 899
    iget-boolean v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v5, :cond_d9

    const-string v5, " +"

    goto :goto_e2

    :cond_d9
    iget-boolean v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v5, :cond_e0

    const-string v5, " -"

    goto :goto_e2

    :cond_e0
    const-string v5, "  "

    :goto_e2
    move v6, v3

    iget v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v8, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v8, v8

    move v9, v6

    iget v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object v10, v7

    iget v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iget v11, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iget v12, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move/from16 v16, v1

    move-object v1, v2

    move-object v2, v5

    move v5, v8

    const/4 v8, 0x0

    move/from16 v17, v9

    const/4 v9, 0x0

    move-object/from16 v18, v4

    move-object v4, v10

    const/4 v10, 0x0

    move-object/from16 v14, v18

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 902
    iget-boolean v0, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v0, :cond_160

    iget-object v0, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_160

    .line 903
    iget-object v0, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 904
    const/4 v2, 0x0

    :goto_115
    if-ge v2, v0, :cond_15d

    .line 905
    iget-object v3, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 906
    nop

    .line 907
    iget-boolean v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v4, :cond_127

    const-string v4, "   +"

    goto :goto_130

    :cond_127
    iget-boolean v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v4, :cond_12e

    const-string v4, "   -"

    goto :goto_130

    :cond_12e
    const-string v4, "    "

    :goto_130
    iget v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move v6, v2

    move-object v2, v4

    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v7, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v7, v7

    move v8, v6

    iget v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v3, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 906
    move v9, v8

    const/4 v8, 0x0

    move v10, v9

    const/4 v9, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v12, v11

    const/4 v11, 0x0

    move/from16 v19, v12

    const/4 v12, 0x0

    move/from16 v20, v7

    move v7, v3

    move v3, v5

    move/from16 v5, v20

    move/from16 v20, v19

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 904
    add-int/lit8 v2, v20, 0x1

    move/from16 v0, v19

    goto :goto_115

    :cond_15d
    move-object/from16 v0, p0

    goto :goto_162

    .line 902
    :cond_160
    move-object/from16 v0, p0

    .line 897
    :goto_162
    add-int/lit8 v3, v17, 0x1

    move-object v2, v1

    move/from16 v1, v16

    const/4 v14, 0x0

    goto/16 :goto_c8

    .line 914
    :cond_16a
    move-object v1, v2

    iget v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, "TOTAL"

    move v5, v15

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 917
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 918
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist update()V
    .registers 2

    .line 340
    monitor-enter p0

    .line 341
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTracker;->updateLocked()V

    .line 342
    monitor-exit p0

    .line 343
    return-void

    .line 342
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method
