.class public Lcom/android/internal/os/BinderCallsStats;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallsStats$Injector;,
        Lcom/android/internal/os/BinderCallsStats$UidEntry;,
        Lcom/android/internal/os/BinderCallsStats$CallStat;,
        Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;,
        Lcom/android/internal/os/BinderCallsStats$SettingsObserver;,
        Lcom/android/internal/os/BinderCallsStats$OverflowBinder;,
        Lcom/android/internal/os/BinderCallsStats$CallStatKey;
    }
.end annotation


# static fields
.field private static final blacklist CALL_SESSIONS_POOL_SIZE:I = 0x64

.field private static final blacklist CALL_STATS_OBSERVER_DEBOUNCE_MILLIS:I = 0x1388

.field private static final blacklist DEBUG_ENTRY_PREFIX:Ljava/lang/String; = "__DEBUG_"

.field public static final blacklist DEFAULT_COLLECT_LATENCY_DATA:Z = true

.field public static final blacklist DEFAULT_IGNORE_BATTERY_STATUS:Z = false

.field public static final blacklist DEFAULT_TRACK_DIRECT_CALLING_UID:Z = true

.field public static final blacklist DEFAULT_TRACK_SCREEN_INTERACTIVE:Z = false

.field public static final blacklist DETAILED_TRACKING_DEFAULT:Z = true

.field public static final blacklist ENABLED_DEFAULT:Z = true

.field private static final blacklist EXCEPTION_COUNT_OVERFLOW_NAME:Ljava/lang/String; = "overflow"

.field public static final blacklist MAX_BINDER_CALL_STATS_COUNT_DEFAULT:I = 0x5dc

.field private static final blacklist MAX_EXCEPTION_COUNT_SIZE:I = 0x32

.field private static final blacklist OVERFLOW_BINDER:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist OVERFLOW_DIRECT_CALLING_UID:I = -0x1

.field private static final blacklist OVERFLOW_SCREEN_INTERACTIVE:Z = false

.field private static final blacklist OVERFLOW_TRANSACTION_CODE:I = -0x1

.field public static final blacklist PERIODIC_SAMPLING_INTERVAL_DEFAULT:I = 0x3e8

.field public static final blacklist SHARDING_MODULO_DEFAULT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "BinderCallsStats"


# instance fields
.field private blacklist mAddDebugEntries:Z

.field private blacklist mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

.field private final blacklist mCallSessionsPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BinderInternal$CallSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallStatsCount:J

.field private blacklist mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

.field private final blacklist mCallStatsObserverHandler:Landroid/os/Handler;

.field private blacklist mCallStatsObserverRunnable:Ljava/lang/Runnable;

.field private blacklist mCollectLatencyData:Z

.field private blacklist mDetailedTracking:Z

.field private blacklist mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

.field private final blacklist mExceptionCounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIgnoreBatteryStatus:Z

.field private blacklist mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMaxBinderCallStatsCount:I

.field private volatile blacklist mNativeTids:Landroid/util/IntArray;

.field private final blacklist mNativeTidsLock:Ljava/lang/Object;

.field private blacklist mPeriodicSamplingInterval:I

.field private final blacklist mRandom:Ljava/util/Random;

.field private blacklist mRecordingAllTransactionsForUid:Z

.field private blacklist mSendUidsToObserver:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShardingModulo:I

.field private blacklist mShardingOffset:I

.field private blacklist mStartCurrentTime:J

.field private blacklist mStartElapsedTime:J

.field private blacklist mTrackDirectCallingUid:Z

.field private blacklist mTrackScreenInteractive:Z

.field private final blacklist mUidEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$YZ_MvQpXqsFJ8ZTpGKTiHFfrDMM(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$glVOinHoNXA5oSPdo2KZ5VIlmMY(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallStatsObserver(Lcom/android/internal/os/BinderCallsStats;)Lcom/android/internal/os/BinderInternal$CallStatsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/os/BinderCallsStats;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSendUidsToObserver(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUidEntries(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnoteCallsStatsDelayed(Lcom/android/internal/os/BinderCallsStats;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetOVERFLOW_BINDER()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    const-class v0, Lcom/android/internal/os/BinderCallsStats$OverflowBinder;

    sput-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats$Injector;)V
    .registers 3

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    .line 182
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V
    .registers 6

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 93
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    .line 94
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    .line 95
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    .line 97
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    .line 99
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    .line 104
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    .line 113
    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    .line 123
    new-instance v0, Landroid/util/ArraySet;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    .line 125
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BinderCallsStats$1;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 185
    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getRandomGenerator()Ljava/util/Random;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    .line 187
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BinderCallsStats$Injector;->getLatencyObserver(I)Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    .line 188
    iget-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    iget p2, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    .line 189
    return-void
.end method

.method private blacklist canCollect()Z
    .registers 4

    .line 436
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 437
    return v1

    .line 439
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eqz v0, :cond_b

    .line 440
    return v1

    .line 442
    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 443
    return v2

    .line 445
    :cond_11
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 446
    return v2

    .line 448
    :cond_1a
    return v1
.end method

.method private static blacklist compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 4

    .line 1156
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1157
    if-eqz v0, :cond_b

    .line 1158
    goto :goto_13

    .line 1159
    :cond_b
    iget p0, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget p1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1157
    :goto_13
    return v0
.end method

.method private static blacklist compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 4

    .line 1151
    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide p0, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private blacklist createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .registers 8

    .line 575
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 576
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 577
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 578
    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 579
    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 580
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 581
    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "__DEBUG_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 583
    iput-wide p2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 584
    return-object v1
.end method

.method private blacklist dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .registers 26

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v3, v5, :cond_e

    .line 605
    move v6, v4

    goto :goto_10

    .line 604
    :cond_e
    move/from16 v6, p4

    .line 607
    :goto_10
    const-string v7, "Start time: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    const-string v7, "yyyy-MM-dd HH:mm:ss"

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 609
    const-string v7, "On battery time (ms): "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    iget-object v7, v0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v7, :cond_30

    iget-object v7, v0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v7}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v10

    goto :goto_32

    :cond_30
    const-wide/16 v10, 0x0

    :goto_32
    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->println(J)V

    .line 611
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sampling interval period: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sharding modulo: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const-string v7, ""

    if-eqz v6, :cond_6b

    move-object v10, v7

    goto :goto_6d

    :cond_6b
    const-string v10, "(top 90% by cpu time) "

    .line 615
    :goto_6d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Per-UID raw data "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(package/uid, worksource, call_desc, screen_interactive, cpu_time_micros, max_cpu_time_micros, latency_time_micros, max_latency_time_micros, exception_count, max_request_size_bytes, max_reply_size_bytes, recorded_call_count, call_count):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    if-eq v3, v5, :cond_95

    .line 624
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_99

    .line 626
    :cond_95
    invoke-virtual {v0, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v12

    .line 628
    :goto_99
    new-instance v13, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;

    invoke-direct {v13}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v12, v13}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 629
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_17d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 630
    iget-object v15, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    if-eqz v15, :cond_c3

    iget-object v15, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    const-wide/16 v16, 0x0

    const-string v8, "__DEBUG_"

    invoke-virtual {v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 632
    goto :goto_a5

    .line 630
    :cond_c3
    const-wide/16 v16, 0x0

    .line 634
    :cond_c5
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 635
    const-string v8, "    "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 636
    invoke-virtual {v2, v9}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 637
    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 638
    invoke-virtual {v2, v14}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 639
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 640
    const/16 v14, 0x23

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 641
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 642
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 643
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 644
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 645
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 646
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v14, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const-wide/16 v18, 0x5f

    if-eqz v14, :cond_13d

    iget-wide v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    goto :goto_13f

    :cond_13d
    move-wide/from16 v14, v18

    :goto_13f
    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 647
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v14, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v14, :cond_14e

    iget-wide v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    goto :goto_150

    :cond_14e
    move-wide/from16 v14, v18

    :goto_150
    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 648
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v14, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v14, :cond_15f

    iget-wide v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    goto :goto_161

    :cond_15f
    move-wide/from16 v14, v18

    :goto_161
    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 649
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v14, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 650
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v13, v13, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 652
    goto/16 :goto_a5

    .line 653
    :cond_17d
    const-wide/16 v16, 0x0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 654
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 655
    nop

    .line 656
    nop

    .line 657
    nop

    .line 659
    if-eq v3, v5, :cond_1a0

    .line 660
    invoke-direct {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v9

    .line 661
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    iget-wide v11, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v11, v11, v16

    .line 663
    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v13, v13, v16

    .line 664
    iget-wide v4, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long v4, v4, v16

    .line 665
    goto :goto_1de

    .line 666
    :cond_1a0
    iget-object v4, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 667
    move v5, v14

    move-wide/from16 v11, v16

    move-wide v13, v11

    :goto_1aa
    if-ge v5, v4, :cond_1ca

    .line 668
    iget-object v9, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 669
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    move/from16 p4, v4

    move/from16 v19, v5

    iget-wide v4, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v16, v16, v4

    .line 671
    iget-wide v4, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long/2addr v11, v4

    .line 672
    iget-wide v4, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v13, v4

    .line 667
    add-int/lit8 v5, v19, 0x1

    move/from16 v4, p4

    goto :goto_1aa

    .line 674
    :cond_1ca
    new-instance v4, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;-><init>()V

    .line 675
    invoke-static {v4}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v4

    .line 674
    invoke-interface {v8, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move-wide v4, v13

    move-wide v13, v11

    move-wide/from16 v11, v16

    .line 678
    :goto_1de
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Per-UID Summary "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(cpu_time, % of total cpu_time, recorded_call_count, call_count, package/uid):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    if-eqz v6, :cond_1fd

    goto :goto_20b

    .line 681
    :cond_1fd
    new-instance v6, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;-><init>()V

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    invoke-static {v8, v6, v9, v10}, Lcom/android/internal/os/BinderCallsStats;->getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;

    move-result-object v8

    .line 682
    :goto_20b
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_20f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_259

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 683
    iget v9, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v2, v9}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v9

    .line 684
    move-wide v15, v4

    iget-wide v4, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 685
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v10, v6

    iget-wide v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v5, v5

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v19

    move-wide/from16 v19, v5

    long-to-double v5, v11

    div-double v5, v19, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v17, v7

    iget-wide v6, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 686
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7, v9}, [Ljava/lang/Object;

    move-result-object v4

    .line 684
    const-string v5, "  %10d %3.0f%% %8d %8d %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    move-object v6, v10

    move-wide v4, v15

    move-object/from16 v7, v17

    goto :goto_20f

    .line 688
    :cond_259
    move-wide v15, v4

    move-object/from16 v17, v7

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 689
    const/4 v2, -0x1

    if-ne v3, v2, :cond_282

    .line 690
    nop

    .line 692
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    long-to-double v4, v11

    long-to-double v6, v13

    div-double/2addr v4, v6

    .line 693
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 690
    const-string v3, "  Summary: total_cpu_time=%d, calls_count=%d, avg_call_cpu_time=%.0f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 697
    :cond_282
    const-string v2, "Exceptions thrown (exception_count, class_name):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 701
    iget-object v3, v0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 703
    new-instance v3, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 704
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 705
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %6d %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    goto :goto_2aa

    .line 708
    :cond_2c8
    iget v0, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    const/4 v15, 0x1

    if-eq v0, v15, :cond_2d7

    .line 709
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    const-string v0, "/!\\ Displayed data is sampled. See sampling interval at the top."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    :cond_2d7
    return-void
.end method

.method private blacklist getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .registers 6

    .line 531
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 532
    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 533
    iget p1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 534
    iget-object p1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 535
    iget-object p1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    .line 536
    iget p1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    .line 537
    iget-boolean p1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    .line 538
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 539
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 540
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 541
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 542
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 543
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 544
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 545
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 546
    iget-wide p1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    .line 547
    return-object v0
.end method

.method public static blacklist getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/ToDoubleFunction<",
            "TT;>;D)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1132
    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1133
    nop

    .line 1134
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1135
    invoke-interface {p1, v5}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 1136
    goto :goto_18

    .line 1137
    :cond_28
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    nop

    .line 1139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1140
    mul-double v6, p2, v3

    cmpl-double v6, v1, v6

    if-lez v6, :cond_43

    .line 1141
    goto :goto_4c

    .line 1143
    :cond_43
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    invoke-interface {p1, v5}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 1145
    goto :goto_32

    .line 1146
    :cond_4c
    :goto_4c
    return-object p0
.end method

.method private blacklist getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 376
    if-nez v0, :cond_14

    .line 377
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    .line 378
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    :cond_14
    return-object v0
.end method

.method static synthetic blacklist lambda$dumpLocked$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .registers 3

    .line 675
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$dumpLocked$1(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .registers 3

    .line 681
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$dumpLocked$2(Ljava/util/List;Ljava/util/Map$Entry;)V
    .registers 3

    .line 702
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$dumpLocked$3(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 2

    .line 703
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private blacklist noteBinderThreadNativeIds()V
    .registers 3

    .line 428
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-nez v0, :cond_5

    .line 429
    return-void

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTids()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/os/BinderInternal$CallStatsObserver;->noteBinderThreadNativeIds([I)V

    .line 433
    return-void
.end method

.method private blacklist noteCallsStatsDelayed()V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_14

    .line 213
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_14
    return-void
.end method

.method private blacklist noteNativeThreadId()V
    .registers 7

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTid()I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v1

    .line 407
    if-ltz v1, :cond_d

    .line 408
    return-void

    .line 413
    :cond_d
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_10
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 415
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v3

    .line 416
    if-gez v3, :cond_2e

    .line 417
    new-instance v4, Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/IntArray;-><init>(I)V

    .line 418
    invoke-virtual {v4, v2}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 419
    neg-int v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2, v0}, Landroid/util/IntArray;->add(II)V

    .line 420
    iput-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 422
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_33

    .line 424
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    .line 425
    return-void

    .line 422
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method private blacklist obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderInternal$CallSession;

    .line 249
    if-nez v0, :cond_f

    new-instance v0, Lcom/android/internal/os/BinderInternal$CallSession;

    invoke-direct {v0}, Lcom/android/internal/os/BinderInternal$CallSession;-><init>()V

    :cond_f
    return-object v0
.end method

.method private blacklist processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .registers 29

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-boolean v3, v0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v3, :cond_f

    .line 269
    iget-object v3, v0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/BinderLatencyObserver;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;)V

    .line 273
    :cond_f
    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v3

    if-nez v3, :cond_16

    .line 274
    return-void

    .line 277
    :cond_16
    nop

    .line 279
    iget-boolean v3, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_1e

    .line 280
    const/4 v3, 0x1

    goto :goto_2a

    .line 281
    :cond_1e
    iget-boolean v3, v0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-eqz v3, :cond_29

    .line 282
    invoke-direct {v0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v6

    .line 283
    iget-boolean v3, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    goto :goto_2a

    .line 285
    :cond_29
    const/4 v3, 0x0

    .line 290
    :goto_2a
    if-eqz v3, :cond_3b

    .line 291
    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    sub-long/2addr v9, v11

    .line 292
    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    sub-long/2addr v11, v13

    goto :goto_40

    .line 294
    :cond_3b
    nop

    .line 295
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 297
    :goto_40
    iget-boolean v13, v0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eqz v13, :cond_4d

    .line 298
    iget-object v13, v0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v13}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v13

    move/from16 v18, v13

    goto :goto_4f

    .line 299
    :cond_4d
    const/16 v18, 0x0

    .line 300
    :goto_4f
    iget-boolean v13, v0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eqz v13, :cond_59

    .line 301
    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->getCallingUid()I

    move-result v13

    move v15, v13

    goto :goto_5b

    .line 302
    :cond_59
    const/4 v13, -0x1

    move v15, v13

    .line 304
    :goto_5b
    iget-object v13, v0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 306
    :try_start_5e
    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v14

    if-nez v14, :cond_66

    .line 307
    monitor-exit v13

    return-void

    .line 310
    :cond_66
    if-nez v6, :cond_6e

    .line 311
    invoke-direct {v0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v6

    move-object v14, v6

    goto :goto_6f

    .line 310
    :cond_6e
    move-object v14, v6

    .line 314
    :goto_6f
    iget-wide v4, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    iput-wide v4, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    .line 315
    iget-wide v4, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    add-long v4, v4, v20

    iput-wide v4, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    .line 316
    if-eqz v3, :cond_10e

    .line 317
    iget-wide v3, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v3, v9

    iput-wide v3, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 318
    iget-wide v3, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v3, v3, v20

    iput-wide v3, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 320
    iget-object v3, v1, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v4, v1, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    const-wide/16 v22, 0x0

    iget-wide v6, v0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    iget v8, v0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    move-wide/from16 v16, v6

    int-to-long v5, v8

    cmp-long v5, v16, v5

    if-ltz v5, :cond_9e

    const/16 v19, 0x1

    goto :goto_a0

    :cond_9e
    const/16 v19, 0x0

    :goto_a0
    move-object/from16 v16, v3

    move/from16 v17, v4

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getOrCreate(ILjava/lang/Class;IZZ)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v3

    .line 324
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    cmp-long v4, v4, v22

    if-nez v4, :cond_b0

    const/4 v4, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v4, 0x0

    .line 325
    :goto_b1
    if-eqz v4, :cond_b9

    .line 326
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    add-long v4, v4, v20

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 329
    :cond_b9
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v4, v4, v20

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 330
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v4, v4, v20

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 331
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long v4, v4, v20

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 332
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v9

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 333
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    .line 334
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v4, v11

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    .line 335
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 336
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 337
    iget-boolean v4, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v4, :cond_10d

    .line 338
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-boolean v1, v1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    if-eqz v1, :cond_f2

    move-wide/from16 v7, v20

    goto :goto_f4

    :cond_f2
    move-wide/from16 v7, v22

    :goto_f4
    add-long/2addr v4, v7

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    .line 339
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    move/from16 v1, p2

    int-to-long v6, v1

    .line 340
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    .line 341
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    move/from16 v1, p3

    int-to-long v6, v1

    .line 342
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    .line 344
    :cond_10d
    goto :goto_126

    .line 347
    :cond_10e
    move/from16 v5, v18

    iget-object v3, v1, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v1, v1, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    invoke-virtual {v14, v15, v3, v1, v5}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->get(ILjava/lang/Class;IZ)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_126

    .line 351
    iget-wide v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v3, v3, v20

    iput-wide v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 352
    iget-wide v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v3, v3, v20

    iput-wide v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 355
    :cond_126
    :goto_126
    iget-object v1, v0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v1, :cond_139

    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-nez v1, :cond_139

    .line 356
    iget-object v0, v0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_139
    monitor-exit v13

    .line 359
    return-void

    .line 358
    :catchall_13b
    move-exception v0

    monitor-exit v13
    :try_end_13d
    .catchall {:try_start_5e .. :try_end_13d} :catchall_13b

    throw v0
.end method

.method private blacklist resolveBinderMethodNames(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;)V"
        }
    .end annotation

    .line 553
    nop

    .line 554
    nop

    .line 555
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 556
    new-instance v0, Lcom/android/internal/os/BinderTransactionNameResolver;

    invoke-direct {v0}, Lcom/android/internal/os/BinderTransactionNameResolver;-><init>()V

    .line 557
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 558
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_32

    iget-object v6, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 559
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    goto :goto_32

    :cond_30
    move v6, v4

    goto :goto_33

    :cond_32
    :goto_32
    move v6, v5

    .line 560
    :goto_33
    if-eqz v1, :cond_3b

    iget v1, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v7, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    if-eq v1, v7, :cond_3c

    :cond_3b
    move v4, v5

    .line 563
    :cond_3c
    if-nez v6, :cond_42

    if-eqz v4, :cond_41

    goto :goto_42

    .line 566
    :cond_41
    goto :goto_4b

    .line 564
    :cond_42
    :goto_42
    iget-object v1, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    iget v2, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 568
    :goto_4b
    nop

    .line 569
    iput-object v2, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 570
    nop

    .line 571
    move-object v1, v3

    goto :goto_15

    .line 572
    :cond_51
    return-void
.end method

.method private blacklist shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z
    .registers 5

    .line 362
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 363
    return v0

    .line 366
    :cond_4
    iget-object p2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    .line 367
    mul-int/lit8 p2, p2, 0x1f

    iget v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    add-int/2addr p2, v1

    .line 368
    mul-int/lit8 p2, p2, 0x1f

    iget v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    add-int/2addr p2, v1

    .line 369
    mul-int/lit8 p2, p2, 0x1f

    iget-boolean p1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    if-eqz p1, :cond_1d

    const/16 p1, 0x4cf

    goto :goto_1f

    :cond_1d
    const/16 p1, 0x4d5

    :goto_1f
    add-int/2addr p2, p1

    .line 371
    iget p1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    add-int/2addr p2, p1

    iget p1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    rem-int/2addr p2, p1

    if-nez p2, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public static blacklist startForBluetooth(Landroid/content/Context;)V
    .registers 5

    .line 1164
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;

    new-instance v1, Lcom/android/internal/os/BinderCallsStats;

    new-instance v2, Lcom/android/internal/os/BinderCallsStats$Injector;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$Injector;-><init>()V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;)V

    .line 1170
    return-void
.end method


# virtual methods
.method public blacklist callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .registers 5

    .line 255
    if-nez p1, :cond_3

    .line 256
    return-void

    .line 259
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 261
    iget-object p2, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    const/16 p3, 0x64

    if-ge p2, p3, :cond_15

    .line 262
    iget-object p2, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_15
    return-void
.end method

.method public blacklist callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;
    .registers 5

    .line 221
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteNativeThreadId()V

    .line 223
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result p3

    .line 225
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-nez v0, :cond_f

    if-nez p3, :cond_f

    .line 226
    const/4 p1, 0x0

    return-object p1

    .line 229
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v0

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    .line 231
    iput p2, v0, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    .line 232
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    .line 233
    const-wide/16 p1, -0x1

    iput-wide p1, v0, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    .line 234
    iput-wide p1, v0, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->shouldRecordDetailedData()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    .line 237
    if-eqz p3, :cond_41

    iget-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-nez p1, :cond_34

    iget-boolean p1, v0, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz p1, :cond_41

    .line 238
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    goto :goto_4b

    .line 240
    :cond_41
    iget-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz p1, :cond_4b

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    .line 244
    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public blacklist callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V
    .registers 6

    .line 385
    if-nez p1, :cond_3

    .line 386
    return-void

    .line 388
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    .line 390
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 391
    iget-object p2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_11} :catch_3b

    .line 392
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1d

    .line 393
    const-string p1, "overflow"

    .line 395
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 396
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    if-nez v1, :cond_2a

    goto :goto_2f

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    monitor-exit p2

    .line 401
    goto :goto_43

    .line 397
    :catchall_38
    move-exception p1

    monitor-exit p2
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p1
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3b} :catch_3b

    .line 398
    :catch_3b
    move-exception p1

    .line 400
    const-string p1, "BinderCallsStats"

    const-string p2, "Unexpected exception while updating mExceptionCounts"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_43
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .registers 6

    .line 597
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V

    .line 599
    monitor-exit v0

    .line 600
    return-void

    .line 599
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method protected blacklist getCallingUid()I
    .registers 2

    .line 719
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public blacklist getCollectLatencyData()Z
    .registers 2

    .line 867
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    return v0
.end method

.method protected blacklist getElapsedRealtimeMicro()J
    .registers 5

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getExceptionCounts()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getExportedCallStats()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExportedCallStats(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getExportedCallStats(IZ)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 517
    invoke-direct {p0, p1, v3}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v3

    .line 518
    invoke-direct {p0, v3, p2}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 519
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_2d
    goto :goto_14

    .line 522
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_33

    .line 525
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 527
    return-object v0

    .line 522
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public blacklist getExportedCallStats(Z)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 465
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-nez v0, :cond_a

    .line 466
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 469
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_12
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 472
    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_4a

    .line 473
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 474
    invoke-virtual {v4}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 475
    iget v7, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {p0, v7, v6}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v6

    .line 476
    invoke-direct {p0, v6, p1}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 477
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_46
    goto :goto_2b

    .line 472
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 481
    :cond_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_12 .. :try_end_4b} :catchall_96

    .line 484
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 487
    iget-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz p1, :cond_95

    .line 488
    const-string p1, "start_time_millis"

    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const-string p1, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const-string p1, "battery_time_millis"

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 491
    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object p1

    .line 490
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const-string p1, "sampling_interval"

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    const-string p1, "sharding_modulo"

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_95
    return-object v0

    .line 481
    :catchall_96
    move-exception p1

    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p1
.end method

.method public blacklist getExportedExceptionStats()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object v1

    .line 591
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;
    .registers 2

    .line 1125
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    return-object v0
.end method

.method protected blacklist getNativeTid()I
    .registers 2

    .line 723
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public blacklist getNativeTids()[I
    .registers 2

    .line 730
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getThreadTimeMicro()J
    .registers 3

    .line 715
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUidEntries()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist recordAllCallsForWorkSourceUid(I)V
    .registers 5

    .line 797
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording all Binder calls for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BinderCallsStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object p1

    .line 801
    iput-boolean v0, p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    .line 802
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    .line 803
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 871
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    const-wide/16 v1, 0x0

    :try_start_5
    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 873
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 874
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    .line 876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    .line 877
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_26

    .line 878
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->reset()V

    .line 880
    :cond_26
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    .line 883
    monitor-exit v0

    .line 884
    return-void

    .line 883
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist setAddDebugEntries(Z)V
    .registers 2

    .line 806
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    .line 807
    return-void
.end method

.method public blacklist setCallStatsObserver(Lcom/android/internal/os/BinderInternal$CallStatsObserver;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    .line 206
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    .line 207
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    .line 208
    return-void
.end method

.method public blacklist setCollectLatencyData(Z)V
    .registers 2

    .line 861
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    .line 862
    return-void
.end method

.method public blacklist setDetailedTracking(Z)V
    .registers 4

    .line 745
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eq p1, v1, :cond_c

    .line 747
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 750
    :cond_c
    monitor-exit v0

    .line 751
    return-void

    .line 750
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_9

    .line 193
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->close()V

    .line 195
    :cond_9
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/os/CachedDeviceState$Readonly;->createTimeOnBatteryStopwatch()Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 197
    return-void
.end method

.method public blacklist setIgnoreBatteryStatus(Z)V
    .registers 4

    .line 781
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eq p1, v1, :cond_c

    .line 783
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    .line 784
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 786
    :cond_c
    monitor-exit v0

    .line 787
    return-void

    .line 786
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist setMaxBinderCallStats(I)V
    .registers 5

    .line 813
    if-gtz p1, :cond_1b

    .line 814
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid max value (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-void

    .line 819
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    if-eq p1, v1, :cond_27

    .line 821
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    .line 822
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 824
    :cond_27
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public blacklist setSamplingInterval(I)V
    .registers 5

    .line 828
    if-gtz p1, :cond_1b

    .line 829
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sampling interval (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return-void

    .line 834
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    if-eq p1, v1, :cond_27

    .line 836
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    .line 837
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 839
    :cond_27
    monitor-exit v0

    .line 840
    return-void

    .line 839
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public blacklist setShardingModulo(I)V
    .registers 5

    .line 844
    if-gtz p1, :cond_1b

    .line 845
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sharding modulo (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void

    .line 850
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    if-eq p1, v1, :cond_2f

    .line 852
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    .line 853
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    .line 854
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 856
    :cond_2f
    monitor-exit v0

    .line 857
    return-void

    .line 856
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_31

    throw p1
.end method

.method public blacklist setTrackDirectCallerUid(Z)V
    .registers 4

    .line 769
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eq p1, v1, :cond_c

    .line 771
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    .line 772
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 774
    :cond_c
    monitor-exit v0

    .line 775
    return-void

    .line 774
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist setTrackScreenInteractive(Z)V
    .registers 4

    .line 757
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eq p1, v1, :cond_c

    .line 759
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    .line 760
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 762
    :cond_c
    monitor-exit v0

    .line 763
    return-void

    .line 762
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method protected blacklist shouldRecordDetailedData()Z
    .registers 3

    .line 738
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
