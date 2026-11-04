.class public Lcom/android/internal/os/BatteryStatsHistory;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;,
        Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;,
        Lcom/android/internal/os/BatteryStatsHistory$EventLogger;,
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;,
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;,
        Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
    }
.end annotation


# static fields
.field static final blacklist BATTERY_LEVEL2_TEMP_MASK:I = -0x10000

.field static final blacklist BATTERY_LEVEL2_TEMP_SHIFT:I = 0x10

.field static final blacklist BATTERY_LEVEL2_VOLT_MASK:I = 0xffff

.field static final blacklist BATTERY_LEVEL2_VOLT_SHIFT:I = 0x0

.field static final blacklist BATTERY_LEVEL_DETAILS_FLAG:I = 0x1

.field static final blacklist BATTERY_LEVEL_LEVEL_MASK:I = -0x1000000

.field static final blacklist BATTERY_LEVEL_LEVEL_SHIFT:I = 0x18

.field static final blacklist BATTERY_LEVEL_OVERFLOW_FLAG:I = 0x2

.field static final blacklist BATTERY_LEVEL_TEMP_MASK:I = 0xff8000

.field static final blacklist BATTERY_LEVEL_TEMP_SHIFT:I = 0xf

.field static final blacklist BATTERY_LEVEL_VOLT_MASK:I = 0x7ffc

.field static final blacklist BATTERY_LEVEL_VOLT_SHIFT:I = 0x2

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_LOG_ENABLED:Z = false

.field private static final blacklist DEBUG_LOG_FILE:Ljava/lang/String; = "/data/system/battery-history/debuglog.txt"

.field static final blacklist DELTA_BATTERY_CHARGE_FLAG:I = 0x1000000

.field static final blacklist DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final blacklist DELTA_EVENT_FLAG:I = 0x800000

.field static final blacklist DELTA_STATE2_FLAG:I = 0x200000

.field static final blacklist DELTA_STATE_FLAG:I = 0x100000

.field static final blacklist DELTA_STATE_MASK:I = -0x2000000

.field static final blacklist DELTA_TIME_ABS:I = 0x7fffd

.field static final blacklist DELTA_TIME_INT:I = 0x7fffe

.field static final blacklist DELTA_TIME_LONG:I = 0x7ffff

.field static final blacklist DELTA_TIME_MASK:I = 0x7ffff

.field static final blacklist DELTA_WAKELOCK_FLAG:I = 0x400000

.field static final blacklist EXTENSION_POWER_STATS_DESCRIPTOR_FLAG:I = 0x1

.field static final blacklist EXTENSION_POWER_STATS_FLAG:I = 0x2

.field static final blacklist EXTENSION_PROCESS_STATE_CHANGE_FLAG:I = 0x4

.field private static final blacklist EXTRA_BUFFER_SIZE_WHEN_DIR_LOCKED:I = 0x186a0

.field static final blacklist HISTORY_TAG_INDEX_LIMIT:I = 0x7ffe

.field private static final blacklist MAX_HISTORY_TAG_STRING_LENGTH:I = 0x400

.field static final blacklist STATE1_TRACE_MASK:I = 0x3fffffff

.field static final blacklist STATE2_TRACE_MASK:I = -0x1

.field static final blacklist STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final blacklist STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final blacklist STATE_BATTERY_MASK:I = -0x1000000

.field static final blacklist STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final blacklist STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final blacklist STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final blacklist STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistory"

.field static final blacklist TAG_FIRST_OCCURRENCE_FLAG:I = 0x8000

.field private static final blacklist VERSION:I = 0xd6


# instance fields
.field private blacklist mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private blacklist mDebugLogBaseMonotonicTime:J

.field private blacklist mDebugLogBaseTimeUtc:J

.field private final blacklist mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

.field private blacklist mHaveBatteryLevel:Z

.field private final blacklist mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryBuffer:Landroid/os/Parcel;

.field private blacklist mHistoryBufferLastPos:I

.field private blacklist mHistoryBufferStartTime:J

.field private final blacklist mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private blacklist mHistoryMonotonicEndTime:J

.field private blacklist mHistoryParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIteratorCookie:I

.field private blacklist mMaxHistoryBufferSize:I

.field private final blacklist mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field private blacklist mMonotonicHistorySize:J

.field private blacklist mMutable:Z

.field private blacklist mNextHistoryTagIdx:I

.field private blacklist mNumHistoryTagChars:I

.field private blacklist mRecordingHistory:Z

.field private final blacklist mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

.field private blacklist mTraceLastState:I

.field private blacklist mTraceLastState2:I

.field private blacklist mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

.field private blacklist mTrackRunningHistoryElapsedRealtimeMs:J

.field private blacklist mTrackRunningHistoryUptimeMs:J

.field private final blacklist mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final blacklist mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final blacklist mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/os/PowerStats$Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 344
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 346
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 354
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    .line 356
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 357
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 358
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 359
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 360
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 361
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 362
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 363
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 372
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    .line 373
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 438
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 439
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 496
    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    .line 497
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    .line 498
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    .line 499
    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    invoke-direct {v3}, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    .line 500
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 501
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v3

    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 506
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    array-length v5, v3

    invoke-virtual {v4, v3, v1, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 508
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 509
    invoke-direct {p0, p1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    .line 510
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;)V
    .registers 17

    .line 450
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V

    .line 452
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V
    .registers 12

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 344
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 346
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    .line 356
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 357
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 358
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 360
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 361
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 362
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 363
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 372
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    .line 373
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 438
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 439
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 458
    iput p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 459
    iput-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    .line 460
    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    .line 461
    iput-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 462
    iput-object p7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    .line 463
    iput-object p8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 464
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz p2, :cond_6a

    .line 465
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 466
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-wide p4, p2, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 467
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-wide p4, p2, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    .line 470
    :cond_6a
    if-eqz p1, :cond_6f

    .line 471
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    goto :goto_78

    .line 473
    :cond_6f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 474
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    .line 477
    :goto_78
    if-eqz p8, :cond_7f

    .line 478
    iget-object p1, p8, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    goto :goto_9c

    .line 480
    :cond_7f
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    .line 481
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz p1, :cond_9c

    .line 482
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {p1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getLatestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object p1

    .line 483
    if-nez p1, :cond_99

    .line 484
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object p1

    .line 486
    :cond_99
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    .line 489
    :cond_9c
    :goto_9c
    return-void
.end method

.method private blacklist buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)I
    .registers 11

    .line 2142
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int/2addr v0, v1

    .line 2143
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    sub-int/2addr v1, v2

    .line 2144
    iget-short p1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short p2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    sub-int/2addr p1, p2

    .line 2145
    nop

    .line 2146
    const p2, 0xff8000

    const/4 v2, 0x2

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/os/BatteryStatsHistory;->signedValueFits(III)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/16 v6, 0x7ffc

    if-eqz v3, :cond_28

    .line 2147
    invoke-direct {p0, p1, v6, v5}, Lcom/android/internal/os/BatteryStatsHistory;->signedValueFits(III)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_28

    :cond_26
    move v3, v4

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v3, 0x1

    .line 2149
    :goto_29
    nop

    .line 2150
    shl-int/lit8 v0, v0, 0x18

    const/high16 v7, -0x1000000

    and-int/2addr v0, v7

    or-int/2addr v0, v4

    .line 2151
    if-eqz v3, :cond_35

    .line 2152
    or-int/lit8 p1, v0, 0x2

    goto :goto_3b

    .line 2154
    :cond_35
    shl-int/2addr v1, v5

    and-int/2addr p2, v1

    or-int/2addr p2, v0

    .line 2155
    shl-int/2addr p1, v2

    and-int/2addr p1, v6

    or-int/2addr p1, p2

    .line 2158
    :goto_3b
    return p1
.end method

.method private blacklist buildExtendedBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 4

    .line 2162
    nop

    .line 2163
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    .line 2164
    iget-short p1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    shl-int/lit8 p1, p1, 0x0

    const v1, 0xffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    .line 2165
    return p1
.end method

.method private blacklist buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 6

    .line 2169
    nop

    .line 2170
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x3

    if-eqz v0, :cond_9

    .line 2171
    goto :goto_19

    .line 2172
    :cond_9
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 2173
    goto :goto_19

    .line 2174
    :cond_10
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    .line 2175
    move v1, v2

    goto :goto_19

    .line 2174
    :cond_18
    const/4 v1, 0x0

    .line 2177
    :goto_19
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x1d

    iget-byte v3, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x1a

    or-int/2addr v0, v3

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iget p1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v1, 0xffffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    return p1
.end method

.method public static blacklist createFromBatteryUsageStatsParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsHistory;
    .registers 2

    .line 944
    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private blacklist debugLog(ILandroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;Ljava/lang/String;Z)V
    .registers 12

    .line 2519
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Landroid/util/LogWriter;

    const-string v2, "BatteryStatsHistory"

    invoke-direct {v0, p1, v2}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v1, v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHistory;->debugLog(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;Ljava/lang/String;Z)V

    .line 2521
    return-void
.end method

.method private blacklist debugLog(Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;Ljava/lang/String;Z)V
    .registers 5

    .line 2502
    return-void
.end method

.method private blacklist debugLog(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;Ljava/lang/String;Z)V
    .registers 16

    .line 2525
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mDebugLogBaseTimeUtc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 2526
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mDebugLogBaseTimeUtc:J

    .line 2527
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mDebugLogBaseMonotonicTime:J

    .line 2530
    :cond_18
    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 2532
    iget-wide v0, p3, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2533
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mDebugLogBaseTimeUtc:J

    iget-wide v5, p3, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mDebugLogBaseMonotonicTime:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p3, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2534
    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v5, 0x0

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 2535
    iput-wide v0, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2537
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2538
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mDebugLogBaseTimeUtc:J

    iget-wide v6, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mDebugLogBaseMonotonicTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2539
    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 2540
    iput-wide v0, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2544
    if-eqz p5, :cond_6c

    .line 2545
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Stack trace"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2547
    :cond_6c
    return-void
.end method

.method private blacklist ensureHistoryTagArray()V
    .registers 6

    .line 2381
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2382
    return-void

    .line 2385
    :cond_5
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    .line 2386
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2387
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, -0x8001

    and-int/2addr v3, v4

    .line 2388
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$HistoryTag;

    .line 2387
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2389
    goto :goto_1c

    .line 2390
    :cond_42
    return-void
.end method

.method private blacklist initHistoryBuffer()V
    .registers 4

    .line 513
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 514
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 515
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 517
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 518
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataSize(I)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 521
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 522
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 523
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 524
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 525
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 526
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 527
    return-void
.end method

.method private blacklist maybeFlushBufferAndWriteHistoryItem(Landroid/os/BatteryStats$HistoryItem;JJ)Z
    .registers 14

    .line 1757
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 1758
    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_c

    .line 1759
    return v3

    .line 1762
    :cond_c
    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const-string v4, "BatteryStatsHistory"

    if-nez v2, :cond_1b

    .line 1763
    const-string v2, "mMaxHistoryBufferSize should not be zero when writing history"

    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/16 v2, 0x400

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 1767
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->tryLock()Z

    move-result v2

    .line 1768
    if-nez v2, :cond_31

    .line 1770
    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const v6, 0x186a0

    add-int/2addr v5, v6

    if-ge v0, v5, :cond_2c

    .line 1771
    return v3

    .line 1776
    :cond_2c
    const-string v0, "History buffer overflow exceeds 100000 bytes"

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_31
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 1782
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1785
    :try_start_39
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFragment(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_51

    .line 1787
    if-eqz v2, :cond_43

    .line 1788
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 1793
    :cond_43
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    .line 1796
    const/4 v7, 0x0

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1797
    const/4 v0, 0x1

    return v0

    .line 1787
    :catchall_51
    move-exception v0

    if-eqz v2, :cond_59

    .line 1788
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 1790
    :cond_59
    throw v0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;Z)V
    .registers 7

    .line 989
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 991
    :cond_a
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 992
    if-eqz p2, :cond_17

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 993
    :goto_1b
    if-eqz v0, :cond_a

    array-length v1, v0

    if-nez v1, :cond_21

    .line 994
    goto :goto_a

    .line 996
    :cond_21
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 997
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 998
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 999
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    goto :goto_a

    .line 1004
    :cond_33
    return-void
.end method

.method private blacklist recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V
    .registers 11

    .line 1553
    xor-int/2addr p1, p2

    and-int/2addr p1, p3

    .line 1554
    if-nez p1, :cond_5

    return-void

    .line 1556
    :cond_5
    const/4 p3, 0x0

    move v0, p3

    :goto_7
    array-length v1, p4

    if-ge v0, v1, :cond_42

    .line 1557
    aget-object v1, p4, v0

    .line 1558
    iget v2, v1, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v2, p1

    if-nez v2, :cond_12

    goto :goto_3f

    .line 1561
    :cond_12
    iget v2, v1, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v2, :cond_1f

    .line 1562
    iget v2, v1, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_25

    :cond_1d
    move v2, p3

    goto :goto_25

    .line 1564
    :cond_1f
    iget v2, v1, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v2, p2

    iget v3, v1, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v2, v3

    .line 1566
    :goto_25
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "battery_stats."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceCounter(Ljava/lang/String;I)V

    .line 1556
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1568
    :cond_42
    return-void
.end method

.method private blacklist recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V
    .registers 7

    .line 1534
    if-nez p1, :cond_3

    return-void

    .line 1536
    :cond_3
    const v0, -0xc001

    and-int/2addr v0, p1

    .line 1537
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_10

    const-string p1, "+"

    goto :goto_19

    .line 1538
    :cond_10
    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_17

    const-string p1, "-"

    goto :goto_19

    :cond_17
    const-string p1, ""

    .line 1540
    :goto_19
    sget-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 1541
    if-ltz v0, :cond_6d

    array-length v2, v1

    if-lt v0, v2, :cond_21

    goto :goto_6d

    .line 1543
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "battery_stats."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1545
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-virtual {p2, v2, p1}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceInstantEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    return-void

    .line 1541
    :cond_6d
    :goto_6d
    return-void
.end method

.method private blacklist setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .registers 2

    .line 583
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 587
    return-void
.end method

.method private blacklist setBitField(IIII)I
    .registers 8

    .line 1571
    shl-int p3, p2, p3

    .line 1572
    not-int v0, p4

    and-int v1, p3, v0

    if-eqz v1, :cond_32

    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " does not fit in the bit field: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1574
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1573
    const-string v1, "BatteryStatsHistory"

    invoke-static {v1, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    and-int/2addr p3, p4

    .line 1577
    :cond_32
    and-int/2addr p1, v0

    or-int/2addr p1, p3

    return p1
.end method

.method private blacklist signedValueFits(III)Z
    .registers 4

    .line 2130
    ushr-int/2addr p2, p3

    .line 2135
    const/4 p3, 0x1

    ushr-int/2addr p2, p3

    not-int p2, p2

    .line 2136
    and-int/2addr p1, p2

    .line 2138
    if-eqz p1, :cond_b

    if-ne p1, p2, :cond_a

    goto :goto_b

    :cond_a
    const/4 p3, 0x0

    :cond_b
    :goto_b
    return p3
.end method

.method private blacklist startNextFragmentLocked(J)V
    .registers 5

    .line 601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 602
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistory(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide p1

    .line 608
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    .line 609
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 610
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 611
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 612
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 613
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 614
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 615
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 619
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 620
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    goto :goto_43

    .line 623
    :cond_65
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 624
    return-void
.end method

.method private blacklist verifyVersion(Landroid/os/Parcel;)Z
    .registers 4

    .line 810
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 812
    const/16 v1, 0xd6

    if-ne p1, v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private blacklist writeHistory(Z)V
    .registers 4

    .line 2249
    monitor-enter p0

    .line 2250
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2251
    const-string p1, "BatteryStatsHistory"

    const-string v0, "writeHistory: this instance instance is read-only"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    monitor-exit p0

    return-void

    .line 2257
    :cond_10
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->write()V

    .line 2259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_2f

    .line 2261
    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2262
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    .line 2267
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;Z)V
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_2a

    .line 2269
    :try_start_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2270
    nop

    .line 2271
    monitor-exit p0

    .line 2272
    return-void

    .line 2269
    :catchall_2a
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2270
    throw p1

    .line 2271
    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private blacklist writeHistoryBuffer(Landroid/os/Parcel;)V
    .registers 5

    .line 2314
    const/16 v0, 0xd6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2315
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2316
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2317
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2318
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 2324
    return-void
.end method

.method private blacklist writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 22

    .line 1925
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-wide v4, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    .line 1927
    if-eqz v3, :cond_1da

    iget-byte v1, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v1, :cond_14

    goto/16 :goto_1da

    .line 1933
    :cond_14
    nop

    .line 1934
    iget-wide v4, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v8, v4, v8

    .line 1935
    invoke-direct {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)I

    move-result v10

    .line 1936
    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v11

    .line 1939
    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    const v12, 0x7fffe

    if-ltz v1, :cond_3f

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v8, v4

    if-lez v1, :cond_34

    goto :goto_3f

    .line 1951
    :cond_34
    const-wide/32 v4, 0x7fffd

    cmp-long v1, v8, v4

    if-ltz v1, :cond_3d

    .line 1952
    move v1, v12

    goto :goto_68

    .line 1954
    :cond_3d
    long-to-int v1, v8

    goto :goto_68

    .line 1940
    :cond_3f
    :goto_3f
    nop

    .line 1946
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->reportOutOfOrderBatteryHistoryEvents()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected time delta: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHistory;->debugLog(ILandroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;Ljava/lang/String;Z)V

    .line 1949
    const-string v1, "BatteryStatsHistory"

    const-string v4, "Out-of-order battery history event. Check logcat for details"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_65
    const v1, 0x7ffff

    :goto_68
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, -0x2000000

    and-int/2addr v4, v5

    or-int/2addr v4, v1

    .line 1958
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v5, :cond_74

    .line 1959
    or-int/lit8 v10, v10, 0x1

    .line 1962
    :cond_74
    if-eqz v10, :cond_78

    const/4 v13, 0x1

    goto :goto_79

    :cond_78
    const/4 v13, 0x0

    .line 1963
    :goto_79
    if-eqz v13, :cond_7e

    .line 1964
    const/high16 v14, 0x80000

    or-int/2addr v4, v14

    .line 1966
    :cond_7e
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v14

    .line 1967
    if-eq v14, v11, :cond_86

    const/4 v11, 0x1

    goto :goto_87

    :cond_86
    const/4 v11, 0x0

    .line 1968
    :goto_87
    if-eqz v11, :cond_8c

    .line 1969
    const/high16 v15, 0x100000

    or-int/2addr v4, v15

    .line 1971
    :cond_8c
    iget-object v15, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v15, :cond_a1

    .line 1972
    nop

    .line 1973
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 1974
    const/4 v5, 0x3

    goto :goto_a2

    .line 1973
    :cond_9f
    const/4 v5, 0x2

    goto :goto_a2

    .line 1971
    :cond_a1
    const/4 v5, 0x0

    .line 1977
    :goto_a2
    iget-object v15, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v15, :cond_a8

    .line 1978
    or-int/lit8 v5, v5, 0x4

    .line 1980
    :cond_a8
    if-eqz v5, :cond_b3

    .line 1981
    iget v15, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v17, 0x20000

    or-int v15, v15, v17

    iput v15, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_bc

    .line 1983
    :cond_b3
    iget v15, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v17, -0x20001

    and-int v15, v15, v17

    iput v15, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1985
    :goto_bc
    iget v15, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v7, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v15, v7, :cond_c7

    if-eqz v5, :cond_c5

    goto :goto_c7

    :cond_c5
    const/4 v7, 0x0

    goto :goto_c8

    :cond_c7
    :goto_c7
    const/4 v7, 0x1

    .line 1986
    :goto_c8
    if-eqz v7, :cond_cd

    .line 1987
    const/high16 v15, 0x200000

    or-int/2addr v4, v15

    .line 1989
    :cond_cd
    iget-object v15, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v15, :cond_d5

    iget-object v15, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v15, :cond_d8

    .line 1990
    :cond_d5
    const/high16 v15, 0x400000

    or-int/2addr v4, v15

    .line 1992
    :cond_d8
    iget v15, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v15, :cond_df

    .line 1993
    const/high16 v15, 0x800000

    or-int/2addr v4, v15

    .line 1996
    :cond_df
    iget v15, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    if-eq v15, v3, :cond_e7

    const/4 v3, 0x1

    goto :goto_e8

    :cond_e7
    const/4 v3, 0x0

    .line 1997
    :goto_e8
    if-eqz v3, :cond_ed

    .line 1998
    const/high16 v15, 0x1000000

    or-int/2addr v4, v15

    .line 2000
    :cond_ed
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2006
    if-lt v1, v12, :cond_fc

    .line 2007
    if-ne v1, v12, :cond_f9

    .line 2009
    long-to-int v1, v8

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fc

    .line 2012
    :cond_f9
    invoke-virtual {v6, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 2015
    :cond_fc
    :goto_fc
    if-eqz v13, :cond_112

    .line 2016
    and-int/lit8 v1, v10, 0x2

    if-eqz v1, :cond_104

    const/4 v1, 0x1

    goto :goto_105

    :cond_104
    const/4 v1, 0x0

    .line 2017
    :goto_105
    nop

    .line 2019
    invoke-virtual {v6, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2020
    if-eqz v1, :cond_112

    .line 2021
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildExtendedBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v1

    .line 2022
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2036
    :cond_112
    if-eqz v11, :cond_117

    .line 2037
    invoke-virtual {v6, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 2047
    :cond_117
    if-eqz v7, :cond_11e

    .line 2048
    iget v1, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    :cond_11e
    const/4 v1, 0x0

    iput-boolean v1, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2055
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const v4, 0x8000

    const v7, 0xffff

    if-nez v1, :cond_12f

    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_16e

    .line 2058
    :cond_12f
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_13a

    .line 2059
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v1

    goto :goto_13b

    .line 2065
    :cond_13a
    move v1, v7

    .line 2067
    :goto_13b
    iget-object v8, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v8, :cond_146

    .line 2068
    iget-object v8, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v8}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v8

    goto :goto_147

    .line 2074
    :cond_146
    move v8, v7

    .line 2076
    :goto_147
    shl-int/lit8 v9, v8, 0x10

    or-int/2addr v9, v1

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2077
    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v9, :cond_15d

    and-int/2addr v1, v4

    if-eqz v1, :cond_15d

    .line 2079
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2080
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2082
    :cond_15d
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_16e

    and-int v1, v8, v4

    if-eqz v1, :cond_16e

    .line 2084
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2085
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2088
    :cond_16e
    iget v1, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_192

    .line 2089
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v1

    .line 2090
    iget v8, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/2addr v7, v8

    const/high16 v8, -0x10000

    const/16 v9, 0x10

    invoke-direct {v0, v7, v1, v9, v8}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v7

    .line 2091
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    and-int/2addr v1, v4

    if-eqz v1, :cond_192

    .line 2093
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2094
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2103
    :cond_192
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v1, :cond_19b

    .line 2104
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    .line 2107
    :cond_19b
    if-eqz v3, :cond_1a2

    .line 2109
    iget v1, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2111
    :cond_1a2
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {v6, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2112
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {v6, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2113
    if-eqz v5, :cond_1d9

    .line 2114
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2115
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v1, :cond_1d0

    .line 2116
    const/16 v16, 0x1

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_1cb

    .line 2118
    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v1, v6}, Lcom/android/internal/os/PowerStats$Descriptor;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 2119
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iget-object v1, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2121
    :cond_1cb
    iget-object v0, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v0, v6}, Lcom/android/internal/os/PowerStats;->writeToParcel(Landroid/os/Parcel;)V

    .line 2123
    :cond_1d0
    iget-object v0, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v0, :cond_1d9

    .line 2124
    iget-object v0, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$ProcessStateChange;->writeToParcel(Landroid/os/Parcel;)V

    .line 2127
    :cond_1d9
    return-void

    .line 1928
    :cond_1da
    :goto_1da
    const v0, 0x7fffd

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1929
    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1930
    return-void
.end method

.method private blacklist writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V
    .registers 15

    .line 1641
    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_2e

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without a name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsHistory"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    const/4 v1, -0x1

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->tracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1646
    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 1647
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iget v2, p5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0x3fffffff    # 1.9999999f

    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V

    .line 1649
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    iget v2, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v3, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V

    .line 1651
    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 1652
    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 1655
    :cond_5f
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v0, :cond_70

    :cond_67
    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-nez v0, :cond_70

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-nez v0, :cond_70

    .line 1658
    return-void

    .line 1661
    :cond_70
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_1ca

    .line 1665
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v2, v4

    .line 1667
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v4, p5, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v0, v4

    .line 1668
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v5, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int/2addr v4, v5

    .line 1669
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v5, v6

    .line 1670
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int/2addr v6, v7

    .line 1679
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    if-ltz v7, :cond_188

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v7, v7, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v7, :cond_188

    const-wide/16 v7, 0x3e8

    cmp-long v7, v2, v7

    if-gez v7, :cond_188

    and-int/2addr v0, v5

    if-nez v0, :cond_188

    and-int v0, v4, v6

    if-nez v0, :cond_188

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v0, v0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v0, :cond_188

    iget-boolean v0, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v0, :cond_188

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_ca

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_188

    :cond_ca
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_d4

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_188

    :cond_d4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-nez v0, :cond_188

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_e4

    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v0, :cond_188

    :cond_e4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v4, :cond_188

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v4, :cond_188

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v4, :cond_188

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v4, :cond_188

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v0, v4, :cond_188

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    if-ne v0, v4, :cond_188

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-nez v0, :cond_188

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-nez v0, :cond_188

    .line 1701
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    sub-int/2addr v0, v6

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 1702
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataSize(I)V

    .line 1703
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1704
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 1706
    sub-long/2addr p1, v2

    .line 1711
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_153

    .line 1712
    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1713
    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1718
    :cond_153
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_166

    .line 1719
    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1720
    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1725
    :cond_166
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_17f

    .line 1726
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1727
    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1728
    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1730
    :cond_17f
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    move-wide v3, p1

    goto :goto_189

    .line 1733
    :cond_188
    move-wide v3, p1

    :goto_189
    move-object v2, p0

    move-wide v6, p3

    move-wide v4, v3

    move-object v3, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->maybeFlushBufferAndWriteHistoryItem(Landroid/os/BatteryStats$HistoryItem;JJ)Z

    move-result p1

    move-object p2, v3

    move-wide v3, v4

    move-wide v5, v6

    if-eqz p1, :cond_197

    .line 1734
    return-void

    .line 1737
    :cond_197
    iget-object p1, v2, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    if-nez p1, :cond_1c3

    .line 1739
    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 1740
    invoke-virtual {v7, p2}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1741
    iget-object p1, v2, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, v7, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1742
    const/4 p1, 0x0

    iput-object p1, v7, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1743
    iput-object p1, v7, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1744
    const/4 p3, 0x0

    iput p3, v7, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1745
    iput-object p1, v7, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1746
    iput-boolean p3, v7, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1747
    iput-object p1, v7, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1748
    iput-object p1, v7, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1749
    const/4 v8, 0x7

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1751
    :cond_1c3
    const/4 v8, 0x0

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1752
    return-void

    .line 1662
    :cond_1ca
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string p2, "Battery history is not writable"

    invoke-direct {p1, p2}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V
    .registers 11

    .line 1803
    iget-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz p3, :cond_93

    .line 1806
    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result p3

    iput p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 1807
    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p3, p4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1808
    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean p3, p3, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    const/4 p4, 0x0

    if-nez p3, :cond_21

    iget-boolean p3, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-eqz p3, :cond_1f

    goto :goto_21

    :cond_1f
    move p3, p4

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p3, 0x1

    .line 1809
    :goto_22
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p6, p5}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 1810
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide p1, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v0, p6, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_67

    .line 1811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Significantly earlier event written to battery history: time="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " previous="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryStatsHistory"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_67
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iput-boolean p3, p1, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1816
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    .line 1817
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p3

    iget p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    sub-int/2addr p3, p6

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 1818
    const/4 p1, 0x0

    iput-object p1, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1819
    iput-object p1, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1820
    iput p4, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1821
    iput-object p1, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1822
    iput-boolean p4, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1823
    iput-object p1, p5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1824
    iput-object p1, p5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1830
    return-void

    .line 1804
    :cond_93
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string p2, "Battery history is not writable"

    invoke-direct {p1, p2}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .registers 7

    .line 2193
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v1, "BatteryStatsHistory"

    if-nez v0, :cond_f

    .line 2194
    const-string v0, "writeHistoryTag called with null name"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    const-string v0, ""

    iput-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2198
    :cond_f
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2199
    const/16 v2, 0x400

    if-le v0, v2, :cond_3a

    .line 2200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Long battery history tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2204
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2206
    const v2, 0x8000

    if-eqz v1, :cond_5d

    .line 2207
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2208
    and-int v1, v0, v2

    if-eqz v1, :cond_5c

    .line 2209
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    const v2, -0x8001

    and-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    :cond_5c
    return v0

    .line 2212
    :cond_5d
    iget v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    const/16 v3, 0x7ffe

    if-ge v1, v3, :cond_91

    .line 2213
    iget v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 2214
    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 2215
    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2216
    iput v1, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 2217
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    iget p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 2220
    iget p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 2221
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz p1, :cond_8e

    .line 2222
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2224
    :cond_8e
    or-int p1, v1, v2

    return p1

    .line 2226
    :cond_91
    const/4 v0, -0x1

    iput v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 2228
    const p1, 0xfffe

    return p1
.end method

.method private blacklist writeParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;Z)V
    .registers 7

    .line 2329
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2331
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2332
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-interface {v2, p2, p1, p3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->writeFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;[BZ)V

    .line 2333
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;->writeCommitSysConfigFile(J)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1e

    .line 2335
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2336
    nop

    .line 2337
    return-void

    .line 2335
    :catchall_1e
    move-exception p1

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2336
    throw p1
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;ZJ)V
    .registers 14

    .line 896
    const-string v0, "BatteryStatsHistory.writeToParcel"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->lock()V

    .line 899
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 900
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 901
    const/4 v3, 0x0

    move v4, v3

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_7d

    .line 902
    nop

    .line 903
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_33

    .line 904
    add-int/lit8 v5, v4, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide v7, v5, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    goto :goto_38

    .line 903
    :cond_33
    const-wide v7, 0x7fffffffffffffffL

    .line 907
    :goto_38
    cmp-long v5, v7, p3

    if-gez v5, :cond_3d

    .line 908
    goto :goto_7a

    .line 911
    :cond_3d
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-interface {v5, v7}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object v5

    .line 912
    if-nez v5, :cond_68

    .line 913
    const-string v5, "BatteryStatsHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading history fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    goto :goto_7a

    .line 917
    :cond_68
    array-length v7, v5

    if-nez v7, :cond_6c

    .line 918
    goto :goto_7a

    .line 921
    :cond_6c
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 922
    if-eqz p2, :cond_76

    .line 923
    array-length v6, v5

    invoke-virtual {p1, v5, v3, v6}, Landroid/os/Parcel;->writeBlob([BII)V

    goto :goto_7a

    .line 926
    :cond_76
    array-length v6, v5

    invoke-virtual {p1, v5, v3, v6}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 901
    :goto_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 929
    :cond_7d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_80
    .catchall {:try_start_d .. :try_end_80} :catchall_8a

    .line 934
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {p1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 935
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 936
    nop

    .line 937
    return-void

    .line 934
    :catchall_8a
    move-exception p1

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {p2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 935
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 936
    throw p1
.end method


# virtual methods
.method public blacklist commitCurrentHistoryBatchLocked()V
    .registers 3

    .line 2236
    monitor-enter p0

    .line 2237
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2238
    monitor-exit p0

    .line 2239
    return-void

    .line 2238
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public blacklist continueRecordingHistory()V
    .registers 9

    .line 1077
    monitor-enter p0

    .line 1078
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->hasCompletedFragments()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1079
    monitor-exit p0

    return-void

    .line 1082
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1083
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 1084
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v4

    .line 1085
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_30

    const/4 v7, 0x4

    move-object v1, p0

    :try_start_26
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1086
    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    .line 1087
    monitor-exit p0

    .line 1088
    return-void

    .line 1087
    :catchall_30
    move-exception v0

    move-object v1, p0

    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_34

    throw v0

    :catchall_34
    move-exception v0

    goto :goto_32
.end method

.method public blacklist copy()Lcom/android/internal/os/BatteryStatsHistory;
    .registers 13

    .line 557
    const-string v0, "BatteryStatsHistory.copy"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 559
    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_32

    .line 561
    :try_start_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 562
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 564
    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2c

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, p0

    :try_start_24
    invoke-direct/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_30

    .line 568
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 564
    return-object v3

    .line 566
    :catchall_2c
    move-exception v0

    move-object v11, p0

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_30

    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_32

    :catchall_30
    move-exception v0

    goto :goto_2e

    .line 568
    :catchall_32
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 569
    throw v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;JJ)V
    .registers 13

    .line 2406
    new-instance v0, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 2407
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object p2

    .line 2408
    :goto_9
    :try_start_9
    invoke-virtual {p2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 2409
    invoke-virtual {p2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v2

    .line 2410
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_27

    .line 2411
    move-object p1, v1

    goto :goto_9

    .line 2412
    :cond_1d
    move-object v1, p1

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 2413
    :cond_23
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 2414
    return-void

    .line 2407
    :catchall_27
    move-exception v0

    move-object p1, v0

    if-eqz p2, :cond_34

    :try_start_2b
    invoke-virtual {p2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_34

    :catchall_2f
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    throw p1
.end method

.method public blacklist forceRecordAllHistory()V
    .registers 2

    .line 1053
    monitor-enter p0

    .line 1054
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 1055
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1056
    monitor-exit p0

    .line 1057
    return-void

    .line 1056
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public blacklist getActiveFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .registers 2

    .line 1013
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    return-object v0
.end method

.method public blacklist getBatteryHistoryStore()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;
    .registers 2

    .line 1008
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    return-object v0
.end method

.method public blacklist getEstimatedItemCount()I
    .registers 4

    .line 540
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 541
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v1, :cond_13

    .line 542
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getMaxHistorySize()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 544
    :cond_13
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_31

    .line 545
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1f
    if-ltz v1, :cond_31

    .line 546
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 545
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 549
    :cond_31
    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getHistoryStringPoolBytes()I
    .registers 2

    .line 2352
    monitor-enter p0

    .line 2353
    :try_start_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    monitor-exit p0

    return v0

    .line 2354
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist getHistoryStringPoolSize()I
    .registers 2

    .line 2343
    monitor-enter p0

    .line 2344
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2345
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public blacklist getHistoryTagPoolString(I)Ljava/lang/String;
    .registers 3

    .line 2361
    monitor-enter p0

    .line 2362
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    .line 2363
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$HistoryTag;

    .line 2364
    if-eqz p1, :cond_11

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    monitor-exit p0

    return-object p1

    .line 2365
    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public blacklist getHistoryTagPoolUid(I)I
    .registers 3

    .line 2372
    monitor-enter p0

    .line 2373
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    .line 2374
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$HistoryTag;

    .line 2375
    if-eqz p1, :cond_11

    iget p1, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    goto :goto_12

    :cond_11
    const/4 p1, -0x1

    :goto_12
    monitor-exit p0

    return p1

    .line 2376
    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public blacklist getHistoryUsedSize()I
    .registers 4

    .line 1020
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getSize()I

    move-result v0

    .line 1021
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1022
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_2a

    .line 1023
    const/4 v1, 0x0

    :goto_12
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1024
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1027
    :cond_2a
    return v0
.end method

.method public blacklist getMonotonicHistorySize()J
    .registers 3

    .line 2397
    monitor-enter p0

    .line 2398
    :try_start_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    monitor-exit p0

    return-wide v0

    .line 2399
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method blacklist getParcelContainers(JJ)Ljava/util/Queue;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;",
            ">;"
        }
    .end annotation

    .line 709
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-nez v0, :cond_bb

    .line 713
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_10

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_15

    .line 714
    :cond_10
    const-wide p3, 0x7fffffffffffffffL

    .line 717
    :cond_15
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 719
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    .line 720
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 721
    move v3, v2

    :goto_26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_64

    .line 722
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 723
    iget-wide v5, v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    cmp-long v5, v5, p3

    if-ltz v5, :cond_39

    .line 724
    goto :goto_64

    .line 727
    :cond_39
    iget-wide v5, v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    iget-wide v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_42

    .line 730
    goto :goto_61

    .line 733
    :cond_42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_59

    add-int/lit8 v5, v3, 0x1

    .line 734
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide v5, v5, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    cmp-long v5, v5, p1

    if-gez v5, :cond_59

    .line 737
    goto :goto_61

    .line 740
    :cond_59
    new-instance v5, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    invoke-direct {v5, p0, v4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 721
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 744
    :cond_64
    :goto_64
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_a3

    .line 745
    move v1, v2

    :goto_69
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a3

    .line 746
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    .line 747
    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->verifyVersion(Landroid/os/Parcel;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 748
    goto :goto_a0

    .line 751
    :cond_80
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 752
    cmp-long v6, v4, p3

    if-ltz v6, :cond_89

    .line 753
    goto :goto_a0

    .line 756
    :cond_89
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 757
    cmp-long v6, v6, p1

    if-gez v6, :cond_92

    .line 758
    goto :goto_a0

    .line 762
    :cond_92
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    .line 764
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 766
    new-instance v6, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    invoke-direct {v6, p0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Landroid/os/Parcel;J)V

    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 745
    :goto_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 770
    :cond_a3
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_ba

    .line 771
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 772
    new-instance p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-wide p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Landroid/os/Parcel;J)V

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_ba
    return-object v0

    .line 710
    :cond_bb
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Iterating over a mutable battery history"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getStartTime()J
    .registers 3

    .line 656
    monitor-enter p0

    .line 657
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getEarliestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_d

    .line 659
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    monitor-exit p0

    return-wide v0

    .line 661
    :cond_d
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    monitor-exit p0

    return-wide v0

    .line 663
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public blacklist isReadOnly()Z
    .registers 2

    .line 576
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist isRecordingHistory()Z
    .registers 2

    .line 1043
    monitor-enter p0

    .line 1044
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    monitor-exit p0

    return v0

    .line 1045
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist isResetEnabled()Z
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->isLocked()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .registers 12

    .line 676
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    if-eqz v0, :cond_c

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    goto :goto_31

    .line 680
    :cond_c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_15

    .line 681
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->lock()V

    .line 683
    :cond_15
    new-instance v1, Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;-><init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 685
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, v2, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    .line 686
    const-string p1, "BatteryStatsHistory.iterate"

    iget p2, v2, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    const-wide/32 p3, 0x80000

    invoke-static {p3, p4, p1, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 688
    return-object v1

    .line 676
    :cond_2e
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 677
    :goto_31
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->copy()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object p1

    return-object p1
.end method

.method blacklist iteratorFinished()V
    .registers 5

    .line 695
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_14

    .line 697
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 699
    :cond_14
    const-string v0, "BatteryStatsHistory.iterate"

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 701
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    .line 702
    return-void
.end method

.method public blacklist maybeUpdateWakelockTag(JJLjava/lang/String;I)Z
    .registers 9

    .line 1263
    monitor-enter p0

    .line 1264
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v0, :cond_a

    .line 1265
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 1267
    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_2c

    .line 1269
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1270
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1271
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1272
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1273
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1275
    :cond_2c
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1276
    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public blacklist readFragmentToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)Z
    .registers 5

    .line 786
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0, p2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object p2

    .line 787
    const/4 v0, 0x0

    if-eqz p2, :cond_26

    array-length v1, p2

    if-nez v1, :cond_d

    goto :goto_26

    .line 790
    :cond_d
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 791
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 792
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->verifyVersion(Landroid/os/Parcel;)Z

    move-result p2

    if-nez p2, :cond_1b

    .line 793
    return v0

    .line 796
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 801
    const/4 p1, 0x1

    return p1

    .line 788
    :cond_26
    :goto_26
    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V

    .line 985
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    .line 986
    return-void
.end method

.method public blacklist readHistoryBuffer(Landroid/os/Parcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    .line 2278
    monitor-enter p0

    .line 2279
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2280
    const/16 v1, 0xd6

    if-eq v0, v1, :cond_33

    .line 2281
    const-string p1, "BatteryStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readHistoryBuffer: version got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; erasing old stats"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    monitor-exit p0

    return-void

    .line 2286
    :cond_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 2287
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    .line 2288
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 2290
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2291
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2294
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2295
    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    mul-int/lit8 v2, v2, 0x64

    if-ge v0, v2, :cond_86

    .line 2298
    and-int/lit8 v2, v0, -0x4

    if-ne v2, v0, :cond_6d

    .line 2306
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2, p1, v1, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 2307
    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2309
    monitor-exit p0

    .line 2310
    return-void

    .line 2299
    :cond_6d
    new-instance p1, Landroid/os/ParcelFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File corrupt: history data buffer not aligned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2296
    :cond_86
    new-instance p1, Landroid/os/ParcelFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File corrupt: history data buffer too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2309
    :catchall_9f
    move-exception p1

    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_1 .. :try_end_a1} :catchall_9f

    throw p1
.end method

.method public blacklist readSummary()Z
    .registers 6

    .line 951
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    const-string v1, "BatteryStatsHistory"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 952
    const-string v0, "readSummary: no history file associated with this instance"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return v2

    .line 956
    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 958
    :try_start_11
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-interface {v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_35
    .catchall {:try_start_11 .. :try_end_19} :catchall_33

    .line 959
    if-nez v3, :cond_20

    .line 960
    nop

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    return v2

    .line 963
    :cond_20
    :try_start_20
    array-length v4, v3

    if-lez v4, :cond_2d

    .line 964
    array-length v4, v3

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 965
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 966
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2d} :catch_35
    .catchall {:try_start_20 .. :try_end_2d} :catchall_33

    .line 973
    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    nop

    .line 975
    const/4 v0, 0x1

    return v0

    .line 973
    :catchall_33
    move-exception v1

    goto :goto_43

    .line 968
    :catch_35
    move-exception v3

    .line 969
    :try_start_36
    const-string v4, "Error reading battery history"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->reset()V
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_33

    .line 971
    nop

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    return v2

    .line 973
    :goto_43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    throw v1
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 838
    if-eqz v0, :cond_9

    .line 839
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;)V

    .line 842
    :cond_9
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 844
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 847
    nop

    :goto_18
    if-ge v0, v1, :cond_52

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 851
    new-instance v5, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 852
    iput-object v3, v5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 853
    iput v4, v5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 854
    iput v2, v5, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 855
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    if-lt v2, v3, :cond_42

    .line 857
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 859
    :cond_42
    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 861
    :cond_52
    return-void
.end method

.method public blacklist recordBatteryState(JJIZ)V
    .registers 8

    .line 1196
    monitor-enter p0

    .line 1197
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p5, p5

    iput-byte p5, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1198
    invoke-virtual {p0, p6}, Lcom/android/internal/os/BatteryStatsHistory;->setPluggedInState(Z)V

    .line 1203
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1204
    monitor-exit p0

    .line 1205
    return-void

    .line 1204
    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist recordCurrentTimeChange(JJJ)V
    .registers 15

    .line 1164
    monitor-enter p0

    .line 1165
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-nez v0, :cond_b

    .line 1166
    :try_start_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_7

    return-void

    .line 1173
    :catchall_7
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_23

    .line 1169
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1170
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_20

    const/4 v7, 0x5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    :try_start_15
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1172
    iget-object p1, v1, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1173
    monitor-exit p0

    .line 1174
    return-void

    .line 1173
    :catchall_20
    move-exception v0

    move-object v1, p0

    :goto_22
    move-object p1, v0

    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_25

    throw p1

    :catchall_25
    move-exception v0

    goto :goto_22
.end method

.method public blacklist recordDataConnectionTypeChangeEvent(JJI)V
    .registers 10

    .line 1481
    monitor-enter p0

    .line 1482
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v2, 0x9

    const/16 v3, 0x3e00

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1485
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1486
    monitor-exit p0

    .line 1487
    return-void

    .line 1486
    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public blacklist recordDeviceIdleEvent(JJI)V
    .registers 10

    .line 1445
    monitor-enter p0

    .line 1446
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x19

    const/high16 v3, 0x6000000

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1449
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1450
    monitor-exit p0

    .line 1451
    return-void

    .line 1450
    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public blacklist recordEvent(JJILjava/lang/String;I)V
    .registers 9

    .line 1151
    monitor-enter p0

    .line 1152
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1153
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1154
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, p5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1155
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1156
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1157
    monitor-exit p0

    .line 1158
    return-void

    .line 1157
    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public blacklist recordGpsSignalQualityEvent(JJI)V
    .registers 10

    .line 1433
    monitor-enter p0

    .line 1434
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v2, 0x7

    const/16 v3, 0x180

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1437
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1438
    monitor-exit p0

    .line 1439
    return-void

    .line 1438
    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public blacklist recordHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;JJ)V
    .registers 7

    .line 1585
    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryStepDetails;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1586
    return-void

    .line 1588
    :cond_7
    monitor-enter p0

    .line 1589
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1590
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1591
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 p2, 0x0

    iput-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1592
    monitor-exit p0

    .line 1593
    return-void

    .line 1592
    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public blacklist recordNrStateChangeEvent(JJI)V
    .registers 10

    .line 1494
    monitor-enter p0

    .line 1495
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x9

    const/16 v3, 0x600

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1498
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1499
    monitor-exit p0

    .line 1500
    return-void

    .line 1499
    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public blacklist recordPhoneStateChangeEvent(JJIIII)V
    .registers 12

    .line 1458
    monitor-enter p0

    .line 1459
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr p5, v1

    not-int p6, p6

    and-int/2addr p5, p6

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1460
    const/4 p5, -0x1

    if-eq p7, p5, :cond_1e

    .line 1461
    iget-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1462
    const/4 v1, 0x6

    const/16 v2, 0x1c0

    invoke-direct {p0, v0, p7, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p7

    iput p7, p6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1466
    :cond_1e
    if-eq p8, p5, :cond_2f

    .line 1467
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget p6, p6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1468
    const/4 p7, 0x3

    const/16 v0, 0x38

    invoke-direct {p0, p6, p8, p7, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p6

    iput p6, p5, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1472
    :cond_2f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1473
    monitor-exit p0

    .line 1474
    return-void

    .line 1473
    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist recordPowerStats(JJLcom/android/internal/os/PowerStats;)V
    .registers 8

    .line 1212
    monitor-enter p0

    .line 1213
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1214
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1215
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1216
    monitor-exit p0

    .line 1217
    return-void

    .line 1216
    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public blacklist recordProcessStateChange(JJII)V
    .registers 9

    .line 1224
    monitor-enter p0

    .line 1225
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1226
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput p5, v0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    .line 1227
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput p6, p5, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    .line 1228
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget p6, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v0, 0x20000

    or-int/2addr p6, v0

    iput p6, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1229
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1230
    monitor-exit p0

    .line 1231
    return-void

    .line 1230
    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public blacklist recordScreenBrightnessEvent(JJI)V
    .registers 10

    .line 1420
    monitor-enter p0

    .line 1421
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1424
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1425
    monitor-exit p0

    .line 1426
    return-void

    .line 1425
    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public blacklist recordShutdownEvent(JJJ)V
    .registers 15

    .line 1180
    monitor-enter p0

    .line 1181
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-nez v0, :cond_b

    .line 1182
    :try_start_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_7

    return-void

    .line 1188
    :catchall_7
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_24

    .line 1185
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1186
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_21

    const/16 v7, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    :try_start_16
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1187
    iget-object p1, v1, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1188
    monitor-exit p0

    .line 1189
    return-void

    .line 1188
    :catchall_21
    move-exception v0

    move-object v1, p0

    :goto_23
    move-object p1, v0

    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_26

    throw p1

    :catchall_26
    move-exception v0

    goto :goto_23
.end method

.method public blacklist recordState2StartEvent(JJI)V
    .registers 8

    .line 1357
    monitor-enter p0

    .line 1358
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1359
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1360
    monitor-exit p0

    .line 1361
    return-void

    .line 1360
    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist recordState2StartEvent(JJIILjava/lang/String;)V
    .registers 10

    .line 1368
    monitor-enter p0

    .line 1369
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1370
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const v0, 0x8015

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1371
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1372
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1373
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, p5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1374
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1375
    monitor-exit p0

    .line 1376
    return-void

    .line 1375
    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public blacklist recordState2StopEvent(JJI)V
    .registers 8

    .line 1397
    monitor-enter p0

    .line 1398
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int p5, p5

    and-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1399
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1400
    monitor-exit p0

    .line 1401
    return-void

    .line 1400
    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist recordState2StopEvent(JJIILjava/lang/String;)V
    .registers 10

    .line 1383
    monitor-enter p0

    .line 1384
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int p5, p5

    and-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1385
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v0, 0x4015

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1386
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1387
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1388
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, p5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1389
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1390
    monitor-exit p0

    .line 1391
    return-void

    .line 1390
    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public blacklist recordStateChangeEvent(JJII)V
    .registers 9

    .line 1347
    monitor-enter p0

    .line 1348
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr p5, v1

    not-int p6, p6

    and-int/2addr p5, p6

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1349
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1350
    monitor-exit p0

    .line 1351
    return-void

    .line 1350
    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public blacklist recordStateStartEvent(JJI)V
    .registers 8

    .line 1296
    monitor-enter p0

    .line 1297
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1298
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1299
    monitor-exit p0

    .line 1300
    return-void

    .line 1299
    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist recordStateStartEvent(JJIILjava/lang/String;)V
    .registers 10

    .line 1307
    monitor-enter p0

    .line 1308
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1309
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const v0, 0x8015

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1310
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1311
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1312
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, p5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1313
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1314
    monitor-exit p0

    .line 1315
    return-void

    .line 1314
    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public blacklist recordStateStopEvent(JJI)V
    .registers 8

    .line 1321
    monitor-enter p0

    .line 1322
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int p5, p5

    and-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1323
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1324
    monitor-exit p0

    .line 1325
    return-void

    .line 1324
    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist recordStateStopEvent(JJIILjava/lang/String;)V
    .registers 10

    .line 1332
    monitor-enter p0

    .line 1333
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int p5, p5

    and-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1334
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v0, 0x4015

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1335
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1336
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1337
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, p5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1338
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1339
    monitor-exit p0

    .line 1340
    return-void

    .line 1339
    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public blacklist recordWakelockStartEvent(JJLjava/lang/String;I)V
    .registers 14

    .line 1250
    monitor-enter p0

    .line 1251
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1252
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1253
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    .line 1254
    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    :try_start_1a
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJI)V

    .line 1255
    monitor-exit p0

    .line 1256
    return-void

    .line 1255
    :catchall_1f
    move-exception v0

    move-object v1, p0

    :goto_21
    move-object p1, v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_24

    throw p1

    :catchall_24
    move-exception v0

    goto :goto_21
.end method

.method public blacklist recordWakelockStopEvent(JJLjava/lang/String;I)V
    .registers 14

    .line 1284
    monitor-enter p0

    .line 1285
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1286
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz p5, :cond_10

    goto :goto_12

    :cond_10
    const-string p5, ""

    :goto_12
    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1287
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_24

    .line 1288
    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    :try_start_1f
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    .line 1289
    monitor-exit p0

    .line 1290
    return-void

    .line 1289
    :catchall_24
    move-exception v0

    move-object v1, p0

    :goto_26
    move-object p1, v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_29

    throw p1

    :catchall_29
    move-exception v0

    goto :goto_26
.end method

.method public blacklist recordWakeupEvent(JJLjava/lang/String;)V
    .registers 8

    .line 1407
    monitor-enter p0

    .line 1408
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1409
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1410
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v0, 0x0

    iput v0, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1411
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1412
    monitor-exit p0

    .line 1413
    return-void

    .line 1412
    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist recordWifiConsumedCharge(JJD)V
    .registers 10

    .line 1239
    monitor-enter p0

    .line 1240
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    add-double/2addr v1, p5

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 1241
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1242
    monitor-exit p0

    .line 1243
    return-void

    .line 1242
    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist recordWifiSignalStrengthChangeEvent(JJI)V
    .registers 10

    .line 1521
    monitor-enter p0

    .line 1522
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1523
    const/4 v2, 0x4

    const/16 v3, 0x70

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1526
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1527
    monitor-exit p0

    .line 1528
    return-void

    .line 1527
    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public blacklist recordWifiSupplicantStateChangeEvent(JJI)V
    .registers 10

    .line 1507
    monitor-enter p0

    .line 1508
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1509
    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1512
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1513
    monitor-exit p0

    .line 1514
    return-void

    .line 1513
    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public blacklist reset()V
    .registers 4

    .line 639
    monitor-enter p0

    .line 641
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/battery-history/debuglog.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 643
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 644
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    .line 645
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_26

    .line 646
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->reset()V

    .line 647
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    .line 649
    :cond_26
    monitor-exit p0

    .line 650
    return-void

    .line 649
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public blacklist setBatteryState(IIIIIII)V
    .registers 9

    .line 1108
    monitor-enter p0

    .line 1109
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 1110
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p1, p1

    iput-byte p1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1111
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p2

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1112
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p3

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 1113
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p4

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 1114
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short p2, p5

    iput-short p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 1115
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short p2, p6

    iput-short p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 1116
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p7, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 1117
    monitor-exit p0

    .line 1118
    return-void

    .line 1117
    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public blacklist setBatteryState(ZIII)V
    .registers 6

    .line 1094
    monitor-enter p0

    .line 1095
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->setChargingState(Z)V

    .line 1097
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p2

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1098
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p3

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1099
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p4, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 1100
    monitor-exit p0

    .line 1101
    return-void

    .line 1100
    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public blacklist setChargingState(Z)V
    .registers 4

    .line 1137
    monitor-enter p0

    .line 1138
    if-eqz p1, :cond_d

    .line 1139
    :try_start_3
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_17

    .line 1141
    :cond_d
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1143
    :goto_17
    monitor-exit p0

    .line 1144
    return-void

    .line 1143
    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public blacklist setHistoryRecordingEnabled(Z)V
    .registers 2

    .line 1034
    monitor-enter p0

    .line 1035
    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1036
    monitor-exit p0

    .line 1037
    return-void

    .line 1036
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public blacklist setMaxHistoryBufferSize(I)V
    .registers 2

    .line 533
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 534
    return-void
.end method

.method public blacklist setPluggedInState(Z)V
    .registers 4

    .line 1124
    monitor-enter p0

    .line 1125
    if-eqz p1, :cond_d

    .line 1126
    :try_start_3
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_17

    .line 1128
    :cond_d
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1130
    :goto_17
    monitor-exit p0

    .line 1131
    return-void

    .line 1130
    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public blacklist startNextFragment(J)V
    .registers 3

    .line 594
    monitor-enter p0

    .line 595
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFragmentLocked(J)V

    .line 596
    monitor-exit p0

    .line 597
    return-void

    .line 596
    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public blacklist startRecordingHistory(JJZ)V
    .registers 16

    .line 1064
    monitor-enter p0

    .line 1065
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1066
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1067
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_24

    .line 1068
    if-eqz p5, :cond_14

    const/4 p5, 0x7

    goto :goto_15

    :cond_14
    const/4 p5, 0x5

    :goto_15
    move v9, p5

    .line 1067
    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    :try_start_19
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1069
    iget-object p1, v3, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1070
    monitor-exit p0

    .line 1071
    return-void

    .line 1070
    :catchall_24
    move-exception v0

    move-object v3, p0

    :goto_26
    move-object p1, v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_29

    throw p1

    :catchall_29
    move-exception v0

    goto :goto_26
.end method

.method public blacklist writeAllHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V
    .registers 7

    .line 1604
    monitor-enter p0

    .line 1605
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    move-object p1, p0

    .line 1606
    :try_start_5
    monitor-exit p0

    .line 1607
    return-void

    .line 1606
    :catchall_7
    move-exception v0

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object p1, p0

    :goto_b
    move-object p2, v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_7

    throw p2
.end method

.method public blacklist writeHistory()V
    .registers 2

    .line 2245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistory(Z)V

    .line 2246
    return-void
.end method

.method public blacklist writeHistoryItem(JJ)V
    .registers 14

    .line 1613
    monitor-enter p0

    .line 1614
    :try_start_1
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4e

    .line 1615
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    sub-long v2, p1, v2

    .line 1617
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    sub-long v4, p3, v4

    .line 1618
    const-wide/16 v7, 0x14

    sub-long v7, v2, v7

    cmp-long v0, v4, v7

    if-gez v0, :cond_4e

    .line 1619
    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    .line 1621
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1622
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1623
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1624
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1625
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1626
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput v5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1627
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    iput v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1628
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1629
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 1632
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1633
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 1634
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 1635
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 1636
    monitor-exit p0

    .line 1637
    return-void

    .line 1636
    :catchall_65
    move-exception v0

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_65

    throw v0
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .registers 5

    .line 819
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 820
    if-eqz p2, :cond_8

    .line 821
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;)V

    .line 824
    :cond_8
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 826
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$HistoryTag;

    .line 827
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget-object v0, v1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 829
    iget v0, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    goto :goto_1b

    .line 831
    :cond_45
    return-void
.end method

.method public blacklist writeToBatteryUsageStatsParcel(Landroid/os/Parcel;J)V
    .registers 6

    .line 885
    monitor-enter p0

    .line 886
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 887
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_15

    .line 888
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    sub-long/2addr v0, p2

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;ZJ)V

    .line 891
    :cond_15
    monitor-exit p0

    .line 892
    return-void

    .line 891
    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 870
    monitor-enter p0

    .line 871
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_e

    .line 873
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;ZJ)V

    .line 875
    :cond_e
    monitor-exit p0

    .line 876
    return-void

    .line 875
    :catchall_10
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p1
.end method
