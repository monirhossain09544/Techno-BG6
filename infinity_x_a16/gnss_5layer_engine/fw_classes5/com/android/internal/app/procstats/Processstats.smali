.class public final Lcom/android/internal/app/procstats/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessStats$PackageState;,
        Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    }
.end annotation


# static fields
.field public static final blacklist ADD_PSS_EXTERNAL:I = 0x3

.field public static final blacklist ADD_PSS_EXTERNAL_SLOW:I = 0x4

.field public static final blacklist ADD_PSS_INTERNAL_ALL_MEM:I = 0x1

.field public static final blacklist ADD_PSS_INTERNAL_ALL_POLL:I = 0x2

.field public static final blacklist ADD_PSS_INTERNAL_SINGLE:I = 0x0

.field public static final blacklist ADJ_COUNT:I = 0x8

.field public static final blacklist ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final blacklist ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final blacklist ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final blacklist ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final blacklist ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final blacklist ADJ_NOTHING:I = -0x1

.field public static final blacklist ADJ_SCREEN_MOD:I = 0x4

.field public static final blacklist ADJ_SCREEN_OFF:I = 0x0

.field public static final blacklist ADJ_SCREEN_ON:I = 0x4

.field public static final blacklist ALL_MEM_ADJ:[I

.field public static final blacklist ALL_PROC_STATES:[I

.field public static final blacklist ALL_SCREEN_ADJ:[I

.field static final blacklist ASSOCIATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist BACKGROUND_PROC_STATES:[I

.field static final blacklist BAD_TABLE:[I

.field public static blacklist COMMIT_PERIOD:J = 0x0L

.field public static blacklist COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DEBUG:Z = false

.field static final blacklist DEBUG_PARCEL:Z = false

.field public static final blacklist FLAG_COMPLETE:I = 0x1

.field public static final blacklist FLAG_SHUTDOWN:I = 0x2

.field public static final blacklist FLAG_SYSPROPS:I = 0x4

.field private static final blacklist INVERSE_PROC_STATE_WARNING_MIN_INTERVAL_MS:J = 0x2710L

.field private static final blacklist MAGIC:I = 0x50535454

.field public static final blacklist NON_CACHED_PROC_STATES:[I

.field public static final blacklist OPTIONS:[I

.field public static final blacklist OPTIONS_STR:[Ljava/lang/String;

.field private static final blacklist PARCEL_VERSION:I = 0x29

.field public static final blacklist PSS_AVERAGE:I = 0x2

.field public static final blacklist PSS_COUNT:I = 0xa

.field public static final blacklist PSS_MAXIMUM:I = 0x3

.field public static final blacklist PSS_MINIMUM:I = 0x1

.field public static final blacklist PSS_RSS_AVERAGE:I = 0x8

.field public static final blacklist PSS_RSS_MAXIMUM:I = 0x9

.field public static final blacklist PSS_RSS_MINIMUM:I = 0x7

.field public static final blacklist PSS_SAMPLE_COUNT:I = 0x0

.field public static final blacklist PSS_USS_AVERAGE:I = 0x5

.field public static final blacklist PSS_USS_MAXIMUM:I = 0x6

.field public static final blacklist PSS_USS_MINIMUM:I = 0x4

.field public static final blacklist REPORT_ALL:I = 0x1f

.field public static final blacklist REPORT_PKG_ASC_STATS:I = 0x8

.field public static final blacklist REPORT_PKG_PROC_STATS:I = 0x2

.field public static final blacklist REPORT_PKG_STATS:I = 0xe

.field public static final blacklist REPORT_PKG_SVC_STATS:I = 0x4

.field public static final blacklist REPORT_PROC_STATS:I = 0x1

.field public static final blacklist REPORT_UID_STATS:I = 0x10

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final blacklist STATE_BACKUP:I = 0x7

.field public static final blacklist STATE_BOUND_FGS:I = 0x4

.field public static final blacklist STATE_BOUND_TOP:I = 0x2

.field public static final blacklist STATE_CACHED:I = 0xe

.field public static final blacklist STATE_COUNT:I = 0x10

.field public static final blacklist STATE_FGS:I = 0x3

.field public static final blacklist STATE_FROZEN:I = 0xf

.field public static final blacklist STATE_HEAVY_WEIGHT:I = 0xb

.field public static final blacklist STATE_HOME:I = 0xc

.field public static final blacklist STATE_IMPORTANT_BACKGROUND:I = 0x6

.field public static final blacklist STATE_IMPORTANT_FOREGROUND:I = 0x5

.field public static final blacklist STATE_LAST_ACTIVITY:I = 0xd

.field public static final blacklist STATE_NOTHING:I = -0x1

.field public static final blacklist STATE_PERSISTENT:I = 0x0

.field public static final blacklist STATE_RECEIVER:I = 0xa

.field public static final blacklist STATE_SERVICE:I = 0x8

.field public static final blacklist STATE_SERVICE_RESTARTING:I = 0x9

.field public static final blacklist STATE_TOP:I = 0x1

.field public static final blacklist SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final blacklist SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final blacklist SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final blacklist SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final blacklist SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final blacklist SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final blacklist SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final blacklist SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final blacklist SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final blacklist SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final blacklist SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final blacklist SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final blacklist SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final blacklist SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final blacklist SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final blacklist SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final blacklist SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field public static final blacklist TAG:Ljava/lang/String; = "ProcessStats"

.field private static final blacklist sPageTypeRegex:Ljava/util/regex/Pattern;


# instance fields
.field blacklist mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mExternalPssCount:J

.field public blacklist mExternalPssTime:J

.field public blacklist mExternalSlowPssCount:J

.field public blacklist mExternalSlowPssTime:J

.field public blacklist mFlags:I

.field blacklist mHasSwappedOutPss:Z

.field blacklist mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mInternalAllMemPssCount:J

.field public blacklist mInternalAllMemPssTime:J

.field public blacklist mInternalAllPollPssCount:J

.field public blacklist mInternalAllPollPssTime:J

.field public blacklist mInternalSinglePssCount:J

.field public blacklist mInternalSinglePssTime:J

.field public blacklist mMemFactor:I

.field public final blacklist mMemFactorDurations:[J

.field private blacklist mNextInverseProcStateWarningUptime:J

.field public blacklist mNumAggregated:I

.field public final blacklist mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPageTypeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPageTypeNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPageTypeSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mPageTypeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mReadError:Ljava/lang/String;

.field blacklist mRunning:Z

.field blacklist mRuntime:Ljava/lang/String;

.field private blacklist mSkippedInverseProcStateWarningCount:I

.field public blacklist mStartTime:J

.field public final blacklist mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

.field public final blacklist mSysMemUsageArgs:[J

.field public final blacklist mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

.field public blacklist mTimePeriodEndRealtime:J

.field public blacklist mTimePeriodEndUptime:J

.field public blacklist mTimePeriodStartClock:J

.field public blacklist mTimePeriodStartClockStr:Ljava/lang/String;

.field public blacklist mTimePeriodStartRealtime:J

.field public blacklist mTimePeriodStartUptime:J

.field public final blacklist mTrackingAssociations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/app/procstats/UidState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$940oCJNS9O9a7ABpooZvC3Q491o(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/StatsEventOutput;ILcom/android/internal/app/procstats/AssociationState;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceState;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/app/procstats/ProcessStats;->lambda$dumpProcessAssociation$2(Lcom/android/internal/app/procstats/StatsEventOutput;ILcom/android/internal/app/procstats/AssociationState;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rf6qIY3ET1fZSKJ5VGd1lx0Fg8U(Lcom/android/internal/app/procstats/ProcessStats;ILcom/android/internal/app/procstats/StatsEventOutput;Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->lambda$dumpProcessState$1(ILcom/android/internal/app/procstats/StatsEventOutput;Lcom/android/internal/app/procstats/ProcessState;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 74
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    .line 79
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    .line 151
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 154
    const/4 v0, 0x4

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 156
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 163
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_88

    sput-object v1, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    .line 168
    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_9a

    sput-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 191
    new-array v0, v0, [I

    fill-array-data v0, :array_be

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    .line 194
    const-string v8, "uid"

    const-string v9, "all"

    const-string v3, "proc"

    const-string v4, "pkg-proc"

    const-string v5, "pkg-svc"

    const-string v6, "pkg-asc"

    const-string v7, "pkg-all"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    .line 261
    const-string v0, "^Node\\s+(\\d+),.* zone\\s+(\\w+),.* type\\s+(\\w+)\\s+([\\s\\d]+?)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    .line 442
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 679
    new-array v0, v2, [I

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BAD_TABLE:[I

    .line 1576
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ASSOCIATION_COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_6c
    .array-data 4
        0x0
        0x1
        0x3
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x2
        0x4
    .end array-data

    :array_88
    .array-data 4
        0x5
        0x6
        0x7
        0xb
        0x8
        0x9
        0xa
    .end array-data

    :array_9a
    .array-data 4
        0x0
        0x1
        0x3
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x2
        0x4
        0xf
    .end array-data

    :array_be
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0xe
        0x10
        0x1f
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 292
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 207
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    .line 213
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    .line 250
    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 252
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 253
    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 283
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 4

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 207
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    .line 213
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    .line 250
    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 252
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 253
    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 269
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 271
    if-eqz p1, :cond_76

    .line 274
    new-instance p1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {p1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 275
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 276
    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 278
    :cond_76
    return-void
.end method

.method private blacklist buildTimePeriodStartClockStr()V
    .registers 4

    .line 675
    const-string v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 676
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 677
    return-void
.end method

.method private blacklist collectProcessPackageMaps(Ljava/lang/String;ZLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2501
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2502
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 2503
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_14
    if-ltz v4, :cond_b4

    .line 2504
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2505
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 2506
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v5

    :goto_27
    if-ltz v8, :cond_af

    .line 2507
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    .line 2508
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_34
    if-ltz v10, :cond_aa

    .line 2509
    invoke-virtual {v9, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2510
    if-eqz v0, :cond_47

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_45

    goto :goto_47

    :cond_45
    const/4 v12, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    move v12, v5

    .line 2511
    :goto_48
    iget-object v13, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    sub-int/2addr v13, v5

    :goto_4f
    if-ltz v13, :cond_a6

    .line 2512
    iget-object v14, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    .line 2513
    if-nez v12, :cond_66

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_66

    .line 2514
    goto :goto_a2

    .line 2516
    :cond_66
    if-eqz p2, :cond_6f

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v15

    if-nez v15, :cond_6f

    .line 2517
    goto :goto_a2

    .line 2520
    :cond_6f
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v15

    .line 2521
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v14

    .line 2522
    invoke-virtual {v1, v15, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    .line 2523
    if-nez v16, :cond_88

    .line 2524
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2525
    invoke-virtual {v1, v15, v14, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    .line 2523
    :cond_88
    move-object/from16 v5, v16

    .line 2527
    :goto_8a
    invoke-virtual {v5, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2528
    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 2529
    if-nez v5, :cond_9d

    .line 2530
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2531
    invoke-virtual {v2, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2533
    :cond_9d
    iget-object v14, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2511
    :goto_a2
    add-int/lit8 v13, v13, -0x1

    const/4 v5, 0x1

    goto :goto_4f

    .line 2508
    :cond_a6
    add-int/lit8 v10, v10, -0x1

    const/4 v5, 0x1

    goto :goto_34

    .line 2506
    :cond_aa
    add-int/lit8 v8, v8, -0x1

    const/4 v5, 0x1

    goto/16 :goto_27

    .line 2503
    :cond_af
    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    goto/16 :goto_14

    .line 2538
    :cond_b4
    return-void
.end method

.method private blacklist dumpFragmentationLocked(Ljava/io/PrintWriter;)V
    .registers 10

    .line 1989
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1990
    const-string v0, "Available pages by page size:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1992
    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_55

    .line 1993
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 1994
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 1993
    const-string v4, "Node %3d Zone %7s  %14s "

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1995
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1996
    if-nez v3, :cond_39

    move v4, v1

    goto :goto_3a

    :cond_39
    array-length v4, v3

    .line 1997
    :goto_3a
    move v5, v1

    :goto_3b
    if-ge v5, v4, :cond_4f

    .line 1998
    aget v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%6d"

    invoke-virtual {p1, v7, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1997
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 2000
    :cond_4f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1992
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2002
    :cond_55
    return-void
.end method

.method private blacklist dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V
    .registers 10

    .line 2470
    const-wide v0, 0x10300000001L

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2471
    nop

    .line 2472
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_16

    :cond_14
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 2471
    :goto_16
    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2473
    const-wide v0, 0x10300000003L

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2474
    const-wide v0, 0x10300000004L

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2475
    const-wide v0, 0x10900000005L

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2476
    const-wide v0, 0x10800000006L

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2477
    nop

    .line 2478
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide v4, 0x20e00000007L

    if-eqz v0, :cond_5a

    .line 2479
    const/4 v0, 0x3

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2480
    move v0, v2

    goto :goto_5b

    .line 2478
    :cond_5a
    move v0, v3

    .line 2482
    :goto_5b
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_65

    .line 2483
    invoke-virtual {p1, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2484
    move v0, v2

    .line 2486
    :cond_65
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_6e

    .line 2487
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2488
    goto :goto_6f

    .line 2486
    :cond_6e
    move v2, v0

    .line 2490
    :goto_6f
    if-eqz v2, :cond_74

    .line 2491
    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2493
    :cond_74
    return-void
.end method

.method private synthetic blacklist lambda$dumpProcessAssociation$2(Lcom/android/internal/app/procstats/StatsEventOutput;ILcom/android/internal/app/procstats/AssociationState;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceState;)V
    .registers 20

    .line 2452
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    iget-object v3, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    .line 2456
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 2458
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    long-to-int v6, v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 2459
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    long-to-int v7, v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v10, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v8, v10

    .line 2461
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    long-to-int v8, v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v9, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 2463
    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    long-to-int v9, v9

    iget v10, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    .line 2465
    invoke-virtual {p3}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v11

    .line 2452
    move-object v0, p1

    move v1, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/procstats/StatsEventOutput;->write(IILjava/lang/String;ILjava/lang/String;IIIIILjava/lang/String;)V

    .line 2466
    return-void
.end method

.method private synthetic blacklist lambda$dumpProcessState$1(ILcom/android/internal/app/procstats/StatsEventOutput;Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 5

    .line 2440
    invoke-virtual {p3}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2441
    invoke-virtual {p3}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    if-eq v0, p3, :cond_d

    .line 2442
    return-void

    .line 2444
    :cond_d
    invoke-virtual {p3, p1, p0, p2}, Lcom/android/internal/app/procstats/ProcessState;->dumpStateDurationToStatsd(ILcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/StatsEventOutput;)V

    .line 2445
    return-void
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;)I
    .registers 9

    .line 1577
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1578
    if-eqz v0, :cond_13

    .line 1579
    return v0

    .line 1581
    :cond_13
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    .line 1582
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    iget-wide p0, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    cmp-long p0, v3, p0

    if-lez p0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1

    .line 1584
    :cond_28
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3b

    .line 1585
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    iget-wide p0, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    cmp-long p0, v3, p0

    if-lez p0, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    return v1

    .line 1587
    :cond_3b
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    .line 1588
    if-eqz p0, :cond_4e

    .line 1589
    return p0

    .line 1591
    :cond_4e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .registers 5

    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eq p1, p2, :cond_27

    .line 1028
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1029
    const/4 p1, 0x0

    return p1

    .line 1031
    :cond_27
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .registers 10

    .line 798
    const/16 v0, 0xa

    if-gt p2, v0, :cond_8

    .line 799
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 800
    return-void

    .line 802
    :cond_8
    array-length p2, p3

    .line 803
    if-gt p4, p2, :cond_32

    .line 807
    const/4 v0, 0x0

    :goto_c
    if-ge v0, p4, :cond_28

    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 809
    if-ltz v1, :cond_18

    .line 810
    int-to-long v1, v1

    aput-wide v1, p3, v0

    goto :goto_25

    .line 812
    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 813
    not-int v1, v1

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    int-to-long v1, v2

    or-long/2addr v1, v3

    aput-wide v1, p3, v0

    .line 807
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 816
    :cond_28
    :goto_28
    if-ge v0, p2, :cond_31

    .line 817
    const-wide/16 v1, 0x0

    aput-wide v1, p3, v0

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 820
    :cond_31
    return-void

    .line 804
    :cond_32
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad array lengths: got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " array is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist readFully(Ljava/io/InputStream;[I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    nop

    .line 1036
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 1037
    if-lez v0, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_a
    const/16 v0, 0x4000

    :goto_c
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 1039
    :goto_10
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1042
    if-gez v3, :cond_1b

    .line 1045
    aput v2, p1, v1

    .line 1046
    return-object v0

    .line 1048
    :cond_1b
    add-int/2addr v2, v3

    .line 1049
    array-length v3, v0

    if-lt v2, v3, :cond_27

    .line 1050
    add-int/lit16 v3, v2, 0x4000

    new-array v3, v3, [B

    .line 1053
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1054
    move-object v0, v3

    .line 1056
    :cond_27
    goto :goto_10
.end method

.method private blacklist resetCommon()V
    .registers 5

    .line 636
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 638
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 641
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 642
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 643
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 644
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 645
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 646
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 647
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 648
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 649
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 650
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    .line 651
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->reset()V

    .line 652
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 653
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->resetTable()V

    .line 654
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 655
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 656
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 657
    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 658
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->updateFragmentation()V

    .line 659
    return-void
.end method

.method private static blacklist splitAndParseNumbers(Ljava/lang/String;)[I
    .registers 13

    .line 736
    nop

    .line 737
    nop

    .line 738
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 740
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_a
    const/16 v5, 0x39

    const/16 v6, 0x30

    const/4 v7, 0x1

    if-ge v2, v0, :cond_24

    .line 741
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 742
    if-lt v8, v6, :cond_20

    if-gt v8, v5, :cond_20

    .line 743
    if-nez v4, :cond_21

    .line 744
    nop

    .line 745
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_21

    .line 748
    :cond_20
    move v4, v1

    .line 740
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 752
    :cond_24
    new-array v2, v3, [I

    .line 753
    nop

    .line 754
    nop

    .line 755
    move v8, v1

    move v9, v8

    move v10, v9

    :goto_2b
    if-ge v8, v0, :cond_4e

    .line 756
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 757
    if-lt v11, v6, :cond_42

    if-gt v11, v5, :cond_42

    .line 758
    if-nez v4, :cond_3c

    .line 759
    nop

    .line 760
    add-int/lit8 v9, v11, -0x30

    move v4, v7

    goto :goto_4b

    .line 762
    :cond_3c
    mul-int/lit8 v9, v9, 0xa

    .line 763
    add-int/lit8 v11, v11, -0x30

    add-int/2addr v9, v11

    goto :goto_4b

    .line 766
    :cond_42
    if-eqz v4, :cond_4b

    .line 767
    nop

    .line 768
    add-int/lit8 v4, v10, 0x1

    aput v9, v2, v10

    move v10, v4

    move v4, v1

    .line 755
    :cond_4b
    :goto_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 772
    :cond_4e
    if-lez v3, :cond_53

    .line 773
    sub-int/2addr v3, v7

    aput v9, v2, v3

    .line 775
    :cond_53
    return-object v2
.end method

.method private blacklist writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .registers 11

    .line 780
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_47

    .line 781
    aget-wide v1, p2, v0

    .line 782
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_24

    .line 783
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time val negative: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    move-wide v1, v3

    .line 786
    :cond_24
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_30

    .line 787
    long-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 789
    :cond_30
    const/16 v5, 0x20

    shr-long v5, v1, v5

    and-long/2addr v3, v5

    long-to-int v3, v3

    not-int v3, v3

    .line 790
    const-wide v4, 0xffffffffL

    and-long/2addr v1, v4

    long-to-int v1, v1

    .line 791
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    :goto_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 795
    :cond_47
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/ProcessStats;)V
    .registers 25

    .line 295
    move-object/from16 v7, p1

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 296
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    .line 297
    const/4 v10, 0x0

    :goto_9
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v10, v0, :cond_146

    .line 298
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 299
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/util/SparseArray;

    .line 300
    const/4 v12, 0x0

    :goto_1e
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_13c

    .line 301
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 302
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/util/LongSparseArray;

    .line 303
    const/4 v14, 0x0

    :goto_30
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v14, v0, :cond_12e

    .line 304
    invoke-virtual {v13, v14}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 305
    invoke-virtual {v13, v14}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 306
    iget-object v0, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 307
    iget-object v0, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 308
    iget-object v5, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 309
    const/4 v9, 0x0

    :goto_54
    if-ge v9, v6, :cond_d2

    .line 310
    move/from16 v16, v0

    iget-object v0, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 311
    move-object/from16 v17, v1

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    if-eq v1, v0, :cond_ae

    .line 314
    nop

    .line 315
    move v1, v5

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    .line 314
    move-object/from16 v18, v8

    move/from16 v8, v16

    move/from16 v16, v9

    move v9, v1

    move-object/from16 v1, v17

    move/from16 v17, v6

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    .line 316
    move/from16 v19, v10

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v10

    if-ne v10, v5, :cond_a6

    .line 318
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    .line 319
    move-object/from16 v20, v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 320
    move/from16 v21, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v12

    .line 322
    invoke-virtual {v5, v10, v11}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    .line 323
    iget-object v10, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aa

    .line 316
    :cond_a6
    move-object/from16 v20, v11

    move/from16 v21, v12

    .line 325
    :goto_aa
    invoke-virtual {v5, v6}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    goto :goto_c1

    .line 311
    :cond_ae
    move-object/from16 v0, p0

    move-object/from16 v18, v8

    move/from16 v19, v10

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v8, v16

    move-object/from16 v1, v17

    move/from16 v17, v6

    move/from16 v16, v9

    move v9, v5

    .line 309
    :goto_c1
    add-int/lit8 v5, v16, 0x1

    move v0, v9

    move v9, v5

    move v5, v0

    move v0, v8

    move/from16 v6, v17

    move-object/from16 v8, v18

    move/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v12, v21

    goto :goto_54

    .line 328
    :cond_d2
    move v9, v5

    move-object/from16 v18, v8

    move/from16 v19, v10

    move-object/from16 v20, v11

    move/from16 v21, v12

    move v8, v0

    move-object/from16 v0, p0

    const/4 v10, 0x0

    :goto_df
    if-ge v10, v8, :cond_ff

    .line 329
    iget-object v5, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/android/internal/app/procstats/ServiceState;

    .line 332
    nop

    .line 333
    invoke-virtual {v11}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 332
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v5

    .line 334
    invoke-virtual {v5, v11}, Lcom/android/internal/app/procstats/ServiceState;->add(Lcom/android/internal/app/procstats/ServiceState;)V

    .line 328
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_df

    .line 336
    :cond_ff
    const/4 v8, 0x0

    :goto_100
    if-ge v8, v9, :cond_120

    .line 337
    iget-object v0, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/internal/app/procstats/AssociationState;

    .line 340
    nop

    .line 341
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 340
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getAssociationStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v5

    .line 342
    invoke-virtual {v5, v10}, Lcom/android/internal/app/procstats/AssociationState;->add(Lcom/android/internal/app/procstats/AssociationState;)V

    .line 336
    add-int/lit8 v8, v8, 0x1

    goto :goto_100

    .line 303
    :cond_120
    move-object/from16 v0, p0

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v18

    move/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v12, v21

    goto/16 :goto_30

    .line 300
    :cond_12e
    move-object/from16 v0, p0

    move-object/from16 v18, v8

    move/from16 v19, v10

    move-object/from16 v20, v11

    move/from16 v21, v12

    add-int/lit8 v12, v21, 0x1

    goto/16 :goto_1e

    .line 297
    :cond_13c
    move-object/from16 v0, p0

    move-object/from16 v18, v8

    move/from16 v19, v10

    add-int/lit8 v10, v19, 0x1

    goto/16 :goto_9

    .line 348
    :cond_146
    move-object/from16 v0, p0

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 349
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14f
    if-ge v3, v2, :cond_17b

    .line 350
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 351
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/UidState;

    .line 352
    if-nez v5, :cond_16f

    .line 353
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/UidState;->clone()Lcom/android/internal/app/procstats/UidState;

    move-result-object v5

    .line 354
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_178

    .line 356
    :cond_16f
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v5, v4}, Lcom/android/internal/app/procstats/UidState;->add(Lcom/android/internal/app/procstats/UidState;)V

    .line 349
    :goto_178
    add-int/lit8 v3, v3, 0x1

    goto :goto_14f

    .line 360
    :cond_17b
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    .line 361
    const/4 v9, 0x0

    :goto_182
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v9, v1, :cond_1fe

    .line 362
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/util/SparseArray;

    .line 363
    const/4 v11, 0x0

    :goto_190
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_1fa

    .line 364
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 365
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 366
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 367
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v4

    .line 369
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v6, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 371
    if-nez v1, :cond_1db

    .line 373
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    .line 374
    move-object/from16 v22, v2

    move-object v2, v1

    move-object/from16 v1, v22

    iget-object v13, v2, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v6, v3, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v1

    .line 376
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d9

    .line 377
    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_1d9
    move-object v1, v0

    goto :goto_1dc

    .line 371
    :cond_1db
    move-object v2, v0

    .line 380
    :goto_1dc
    invoke-virtual {v1, v12}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 381
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/UidState;

    .line 382
    if-nez v0, :cond_1f3

    .line 383
    new-instance v0, Lcom/android/internal/app/procstats/UidState;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 384
    iget-object v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    :cond_1f3
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/UidState;->addProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 363
    add-int/lit8 v11, v11, 0x1

    move-object v0, v2

    goto :goto_190

    .line 361
    :cond_1fa
    move-object v2, v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_182

    .line 390
    :cond_1fe
    move-object v2, v0

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_206
    if-ge v1, v0, :cond_218

    .line 391
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/UidState;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_206

    .line 394
    :cond_218
    const/4 v9, 0x0

    :goto_219
    const/16 v0, 0x8

    if-ge v9, v0, :cond_22b

    .line 398
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v3, v0, v9

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v5, v1, v9

    add-long/2addr v3, v5

    aput-wide v3, v0, v9

    .line 394
    add-int/lit8 v9, v9, 0x1

    goto :goto_219

    .line 401
    :cond_22b
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V

    .line 403
    iget v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    iget v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    .line 405
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_249

    .line 406
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 407
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 409
    :cond_249
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v5, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 410
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v5, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 412
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 413
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 414
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 415
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 416
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 417
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 418
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 419
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 420
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 421
    iget-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    .line 423
    iget-boolean v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    iget-boolean v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    or-int/2addr v0, v1

    iput-boolean v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 424
    return-void
.end method

.method public blacklist addSysMemUsage(JJJJJ)V
    .registers 17

    .line 428
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    .line 429
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    mul-int/lit8 v0, v0, 0x10

    .line 430
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 431
    move v1, v4

    :goto_11
    const/4 v2, 0x3

    if-ge v1, v2, :cond_34

    .line 432
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v1, 0x1

    aput-wide p1, v2, v3

    .line 433
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v5, v1, 0x4

    aput-wide p3, v2, v5

    .line 434
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v5, v1, 0x7

    aput-wide p5, v2, v5

    .line 435
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v5, v1, 0xa

    aput-wide p7, v2, v5

    .line 436
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v1, v1, 0xd

    aput-wide p9, v2, v1

    .line 431
    move v1, v3

    goto :goto_11

    .line 438
    :cond_34
    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    invoke-virtual {p1, v0, p2, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    .line 440
    :cond_3b
    return-void
.end method

.method public blacklist collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation

    .line 2101
    move-object/from16 v0, p7

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2102
    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2103
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 2104
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_82

    .line 2105
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2106
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 2107
    const/4 v7, 0x0

    :goto_23
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_7f

    .line 2108
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    .line 2109
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    .line 2110
    const/4 v10, 0x0

    :goto_34
    if-ge v10, v9, :cond_7c

    .line 2111
    invoke-virtual {v8, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2112
    iget-object v12, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 2113
    if-eqz v0, :cond_4d

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v13, 0x0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v13, 0x1

    .line 2114
    :goto_4e
    const/4 v14, 0x0

    :goto_4f
    if-ge v14, v12, :cond_79

    .line 2115
    iget-object v15, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/procstats/ProcessState;

    .line 2116
    if-nez v13, :cond_66

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 2117
    goto :goto_76

    .line 2119
    :cond_66
    if-eqz p8, :cond_6f

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v3

    if-nez v3, :cond_6f

    .line 2120
    goto :goto_76

    .line 2122
    :cond_6f
    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2114
    :goto_76
    add-int/lit8 v14, v14, 0x1

    goto :goto_4f

    .line 2110
    :cond_79
    add-int/lit8 v10, v10, 0x1

    goto :goto_34

    .line 2107
    :cond_7c
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 2104
    :cond_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2127
    :cond_82
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2128
    const/4 v3, 0x0

    :goto_8c
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v3, v2, :cond_c3

    .line 2129
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 2130
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    move-result-wide v10

    const-wide/16 v5, 0x0

    cmp-long v2, v10, v5

    if-lez v2, :cond_be

    .line 2131
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2132
    move-object/from16 v2, p3

    move-object/from16 v7, p4

    if-eq v2, v7, :cond_c0

    .line 2133
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    goto :goto_c0

    .line 2130
    :cond_be
    move-object/from16 v2, p3

    .line 2128
    :cond_c0
    :goto_c0
    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    .line 2137
    :cond_c3
    sget-object v1, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2138
    return-object v0
.end method

.method public blacklist computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .registers 16

    .line 454
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 455
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/16 v4, 0x10

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_1f

    .line 456
    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aput-wide v5, v4, v3

    .line 457
    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    aput-wide v0, v4, v3

    .line 458
    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aput-wide v0, v4, v3

    .line 459
    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aput v2, v4, v3

    .line 455
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 461
    :cond_1f
    move v3, v2

    :goto_20
    if-ge v3, v4, :cond_29

    .line 462
    iget-object v7, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    aput-wide v0, v7, v3

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 464
    :cond_29
    iput-wide v5, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 465
    iput-wide v5, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 466
    iput-wide v5, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 467
    iput-wide v5, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 468
    iput-wide v5, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 469
    iput v2, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 470
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getTotalMemUsage()[J

    move-result-object v0

    .line 471
    move v1, v2

    :goto_3c
    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    array-length v3, v3

    if-ge v1, v3, :cond_d7

    .line 472
    move v3, v2

    :goto_42
    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    array-length v4, v4

    if-ge v3, v4, :cond_d3

    .line 473
    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    aget v4, v4, v1

    iget-object v5, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    aget v5, v5, v3

    add-int/2addr v4, v5

    .line 474
    mul-int/lit8 v5, v4, 0x10

    .line 475
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v6, v6, v4

    .line 476
    iget v8, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-ne v8, v4, :cond_5f

    .line 477
    iget-wide v8, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    .line 479
    :cond_5f
    iget-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    add-long/2addr v8, v6

    iput-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 480
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKey(B)I

    move-result v4

    .line 481
    nop

    .line 482
    nop

    .line 483
    const/4 v5, -0x1

    if-eq v4, v5, :cond_8b

    .line 484
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v5, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v5

    .line 485
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v4

    .line 486
    add-int/lit8 v8, v4, 0x0

    aget-wide v8, v5, v8

    const-wide/16 v10, 0x3

    cmp-long v8, v8, v10

    if-ltz v8, :cond_8b

    .line 487
    iget-object v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    invoke-static {v8, v2, v0, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 488
    nop

    .line 489
    goto :goto_8d

    .line 492
    :cond_8b
    move-object v5, v0

    move v4, v2

    :goto_8d
    iget-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-int/lit8 v10, v4, 0x2

    aget-wide v10, v5, v10

    long-to-double v10, v10

    long-to-double v6, v6

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 494
    iget-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    add-int/lit8 v10, v4, 0x5

    aget-wide v10, v5, v10

    long-to-double v10, v10

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 496
    iget-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-int/lit8 v10, v4, 0x8

    aget-wide v10, v5, v10

    long-to-double v10, v10

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 498
    iget-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    add-int/lit8 v10, v4, 0xb

    aget-wide v10, v5, v10

    long-to-double v10, v10

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 500
    iget-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-int/lit8 v10, v4, 0xe

    aget-wide v10, v5, v10

    long-to-double v10, v10

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 502
    iget v6, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    int-to-long v6, v6

    add-int/2addr v4, v2

    aget-wide v4, v5, v4

    add-long/2addr v6, v4

    long-to-int v4, v6

    iput v4, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_42

    .line 471
    :cond_d3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3c

    .line 505
    :cond_d7
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    iput-boolean v0, p1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    .line 506
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 507
    move v1, v2

    :goto_e2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_104

    .line 508
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 509
    move v4, v2

    :goto_ef
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_101

    .line 510
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    .line 511
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 509
    add-int/lit8 v4, v4, 0x1

    goto :goto_ef

    .line 507
    :cond_101
    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    .line 514
    :cond_104
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V
    .registers 22

    .line 2359
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2360
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V

    .line 2362
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 2363
    new-instance v12, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v12}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 2364
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 2365
    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v12, v13}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessPackageMaps(Ljava/lang/String;ZLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V

    .line 2367
    move v4, v2

    move v14, v4

    :goto_20
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v14, v5, :cond_96

    .line 2368
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 2369
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, p2

    if-lez v5, :cond_61

    .line 2370
    add-int/lit8 v4, v4, 0x1

    .line 2371
    array-length v5, v1

    if-lt v4, v5, :cond_5a

    .line 2373
    nop

    .line 2374
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 2373
    const-string v3, "Dropping process indices from %d to %d from statsd proto (too large)"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ProcessStats"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    goto :goto_96

    .line 2377
    :cond_5a
    aget-object v5, v1, v4

    invoke-direct {v0, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V

    move v15, v4

    goto :goto_62

    .line 2369
    :cond_61
    move v15, v4

    .line 2380
    :goto_62
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 2381
    move v5, v2

    :goto_69
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_92

    .line 2382
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 2383
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessState;

    .line 2384
    move v7, v5

    aget-object v5, v1, v15

    move-object v11, v4

    move-object v4, v6

    move v10, v7

    const-wide v6, 0x20b00000008L

    move/from16 v17, v10

    move-object/from16 v16, v11

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/app/procstats/ProcessState;->dumpAggregatedProtoForStatsd(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V

    .line 2381
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v4, v16

    goto :goto_69

    .line 2367
    :cond_92
    add-int/lit8 v14, v14, 0x1

    move v4, v15

    goto :goto_20

    .line 2391
    :cond_96
    :goto_96
    nop

    :goto_97
    if-gt v2, v4, :cond_a1

    .line 2392
    aget-object v0, v1, v2

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2391
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    .line 2394
    :cond_a1
    return-void
.end method

.method public blacklist dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 29

    .line 2145
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2146
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2147
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    .line 2148
    const-string v1, "vers,5"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    const-string v1, "period,"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2150
    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2151
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_35

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    goto :goto_37

    :cond_35
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_37
    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2152
    nop

    .line 2153
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v14, 0x1

    if-eqz v1, :cond_49

    .line 2154
    const-string v1, ",shutdown"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2155
    const/4 v1, 0x0

    goto :goto_4a

    .line 2153
    :cond_49
    move v1, v14

    .line 2157
    :goto_4a
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_56

    .line 2158
    const-string v1, ",sysprops"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2159
    const/4 v1, 0x0

    .line 2161
    :cond_56
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/2addr v3, v14

    if-eqz v3, :cond_61

    .line 2162
    const-string v1, ",complete"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2163
    const/4 v1, 0x0

    .line 2165
    :cond_61
    if-eqz v1, :cond_68

    .line 2166
    const-string v1, ",partial"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2168
    :cond_68
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v1, :cond_71

    .line 2169
    const-string v1, ",swapped-out-pss"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    :cond_71
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2172
    const-string v1, "config,"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2174
    and-int/lit8 v1, p3, 0xe

    if-eqz v1, :cond_1c5

    .line 2175
    const/4 v15, 0x0

    :goto_83
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v15, v1, :cond_1c2

    .line 2176
    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 2177
    if-eqz v10, :cond_9e

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 2178
    move-object/from16 v22, v11

    move/from16 v18, v14

    goto/16 :goto_1b6

    .line 2180
    :cond_9e
    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2181
    const/4 v4, 0x0

    :goto_a5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1b2

    .line 2182
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2183
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/LongSparseArray;

    .line 2184
    const/4 v7, 0x0

    :goto_b6
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    if-ge v7, v13, :cond_1a2

    .line 2185
    invoke-virtual {v6, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 2186
    invoke-virtual {v6, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2187
    move/from16 v18, v14

    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 2188
    move-object/from16 v19, v1

    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2189
    move/from16 v20, v1

    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2190
    and-int/lit8 v21, p3, 0x2

    if-eqz v21, :cond_139

    .line 2191
    const/4 v10, 0x0

    :goto_e3
    if-ge v10, v14, :cond_128

    .line 2192
    move/from16 v21, v1

    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 2193
    move-object/from16 v22, v1

    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 2194
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2193
    move/from16 v23, v7

    move-object v7, v1

    move-object/from16 v1, v22

    move-object/from16 v22, v11

    move/from16 v11, v21

    move/from16 v21, v10

    move/from16 v10, v20

    move/from16 v20, v23

    move-wide/from16 v23, v16

    move/from16 v16, v4

    move v4, v5

    move-object/from16 v17, v6

    move-wide/from16 v5, v23

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 2191
    add-int/lit8 v1, v21, 0x1

    move-object/from16 v2, p1

    move/from16 v7, v20

    move/from16 v20, v10

    move v10, v1

    move v1, v11

    move-object/from16 v11, v22

    move v5, v4

    move/from16 v4, v16

    move-object/from16 v6, v17

    move-wide/from16 v16, v23

    goto :goto_e3

    :cond_128
    move-object/from16 v22, v11

    move/from16 v10, v20

    move v11, v1

    move/from16 v20, v7

    move-wide/from16 v23, v16

    move/from16 v16, v4

    move v4, v5

    move-object/from16 v17, v6

    move-wide/from16 v5, v23

    goto :goto_149

    .line 2190
    :cond_139
    move-object/from16 v22, v11

    move/from16 v10, v20

    move v11, v1

    move/from16 v20, v7

    move-wide/from16 v23, v16

    move/from16 v16, v4

    move v4, v5

    move-object/from16 v17, v6

    move-wide/from16 v5, v23

    .line 2197
    :goto_149
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_16c

    .line 2198
    const/4 v14, 0x0

    :goto_14e
    if-ge v14, v10, :cond_16c

    .line 2199
    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 2200
    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2199
    invoke-static {v3, v1}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2201
    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    .line 2202
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 2198
    add-int/lit8 v14, v14, 0x1

    goto :goto_14e

    .line 2205
    :cond_16c
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_18f

    .line 2206
    const/4 v10, 0x0

    :goto_171
    if-ge v10, v11, :cond_18f

    .line 2207
    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    .line 2208
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2207
    invoke-static {v3, v1}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2209
    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState;

    .line 2210
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/AssociationState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 2206
    add-int/lit8 v10, v10, 0x1

    goto :goto_171

    .line 2184
    :cond_18f
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move v5, v4

    move/from16 v4, v16

    move-object/from16 v6, v17

    move/from16 v14, v18

    move-object/from16 v1, v19

    move-object/from16 v11, v22

    goto/16 :goto_b6

    .line 2181
    :cond_1a2
    move-object/from16 v19, v1

    move/from16 v16, v4

    move-object/from16 v22, v11

    move/from16 v18, v14

    add-int/lit8 v4, v16, 0x1

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    goto/16 :goto_a5

    :cond_1b2
    move-object/from16 v22, v11

    move/from16 v18, v14

    .line 2175
    :goto_1b6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move/from16 v14, v18

    move-object/from16 v11, v22

    goto/16 :goto_83

    :cond_1c2
    move/from16 v18, v14

    goto :goto_1c7

    .line 2174
    :cond_1c5
    move/from16 v18, v14

    .line 2218
    :goto_1c7
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_208

    .line 2219
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 2220
    const/4 v10, 0x0

    :goto_1d2
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v10, v1, :cond_205

    .line 2221
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 2222
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/util/SparseArray;

    .line 2223
    const/4 v13, 0x0

    :goto_1e7
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v13, v1, :cond_200

    .line 2224
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2225
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 2226
    move-object/from16 v2, p1

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V

    .line 2223
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e7

    .line 2220
    :cond_200
    move-object/from16 v2, p1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d2

    :cond_205
    move-object/from16 v2, p1

    goto :goto_20a

    .line 2218
    :cond_208
    move-object/from16 v2, p1

    .line 2230
    :goto_20a
    const-string v1, "total"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2231
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const-string v2, ","

    move-object/from16 v1, p1

    move-wide v7, v8

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 2232
    move-object v2, v1

    move-wide v8, v7

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2233
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    .line 2234
    const/16 v3, 0x10

    const-string v4, ":"

    if-lez v1, :cond_263

    .line 2235
    const-string v5, "sysmemusage"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2236
    const/4 v5, 0x0

    :goto_234
    if-ge v5, v1, :cond_263

    .line 2237
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v6, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v6

    .line 2238
    invoke-static {v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v7

    .line 2239
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    invoke-static {v2, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 2241
    const/4 v7, 0x0

    :goto_247
    if-ge v7, v3, :cond_25e

    .line 2242
    move/from16 v10, v18

    if-le v7, v10, :cond_250

    .line 2243
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2245
    :cond_250
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v11, v6, v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValue(II)J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    .line 2241
    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v10

    goto :goto_247

    .line 2236
    :cond_25e
    move/from16 v10, v18

    add-int/lit8 v5, v5, 0x1

    goto :goto_234

    .line 2249
    :cond_263
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2250
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v1, v5, v6}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 2252
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 2253
    const-string v5, "weights,"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2254
    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 2255
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2256
    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    .line 2257
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2258
    iget v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2259
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    .line 2261
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    iget v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2263
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2264
    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    .line 2265
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    iget v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2267
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    .line 2269
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2270
    iget v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2271
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2272
    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    .line 2273
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2274
    iget v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2275
    const/4 v5, 0x0

    :goto_2cd
    if-ge v5, v3, :cond_2e6

    .line 2276
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2277
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v6, v6, v5

    invoke-virtual {v2, v6, v7}, Ljava/io/PrintWriter;->print(D)V

    .line 2278
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2279
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2275
    add-int/lit8 v5, v5, 0x1

    goto :goto_2cd

    .line 2281
    :cond_2e6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2283
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2284
    const/4 v3, 0x0

    :goto_2f0
    if-ge v3, v1, :cond_336

    .line 2285
    const-string v4, "availablepages,"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2286
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2288
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2293
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 2294
    if-nez v4, :cond_31f

    const/4 v5, 0x0

    goto :goto_320

    :cond_31f
    array-length v5, v4

    .line 2295
    :goto_320
    const/4 v6, 0x0

    :goto_321
    if-ge v6, v5, :cond_330

    .line 2296
    if-eqz v6, :cond_328

    .line 2297
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2299
    :cond_328
    aget v7, v4, v6

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2295
    add-int/lit8 v6, v6, 0x1

    goto :goto_321

    .line 2301
    :cond_330
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2284
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f0

    .line 2303
    :cond_336
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 19

    .line 2309
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V

    .line 2311
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2312
    const/4 v9, 0x0

    move v3, v9

    :goto_b
    if-ge v3, v2, :cond_6d

    .line 2313
    const-wide v4, 0x20b0000000aL

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2314
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-wide v7, 0x10500000001L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2315
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v7, 0x10900000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2316
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v7, 0x10900000003L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2317
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 2318
    if-nez v6, :cond_56

    move v7, v9

    goto :goto_57

    :cond_56
    array-length v7, v6

    .line 2319
    :goto_57
    move v8, v9

    :goto_58
    if-ge v8, v7, :cond_67

    .line 2320
    const-wide v10, 0x20500000004L

    aget v12, v6, v8

    invoke-virtual {p1, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2319
    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    .line 2322
    :cond_67
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2312
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2325
    :cond_6d
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    .line 2326
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_af

    .line 2327
    move v11, v9

    :goto_78
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v11, v2, :cond_af

    .line 2328
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 2329
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/util/SparseArray;

    .line 2330
    move v13, v9

    :goto_8d
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v13, v2, :cond_ac

    .line 2331
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 2332
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .line 2333
    const-wide v3, 0x20b00000008L

    move-wide/from16 v7, p2

    move-object v1, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V

    .line 2330
    add-int/lit8 v13, v13, 0x1

    goto :goto_8d

    .line 2327
    :cond_ac
    add-int/lit8 v11, v11, 0x1

    goto :goto_78

    .line 2339
    :cond_af
    and-int/lit8 v1, p4, 0xe

    if-eqz v1, :cond_f8

    .line 2340
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2341
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 2342
    move v8, v9

    :goto_ba
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v8, v0, :cond_f8

    .line 2343
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/util/SparseArray;

    .line 2344
    move v11, v9

    :goto_c8
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v11, v0, :cond_f5

    .line 2345
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/LongSparseArray;

    .line 2346
    move v13, v9

    :goto_d6
    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v13, v0, :cond_f2

    .line 2347
    invoke-virtual {v12, v13}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2348
    const-wide v2, 0x20b00000009L

    move-object v1, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 2346
    add-int/lit8 v13, v13, 0x1

    goto :goto_d6

    .line 2344
    :cond_f2
    add-int/lit8 v11, v11, 0x1

    goto :goto_c8

    .line 2342
    :cond_f5
    add-int/lit8 v8, v8, 0x1

    goto :goto_ba

    .line 2354
    :cond_f8
    return-void
.end method

.method public blacklist dumpFilteredAssociationStatesProtoForProc(Landroid/util/proto/ProtoOutputStream;JJLcom/android/internal/app/procstats/ProcessState;Landroid/util/SparseArray;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "JJ",
            "Lcom/android/internal/app/procstats/ProcessState;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2556
    move-object/from16 v0, p6

    move-object/from16 v6, p7

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    if-eq v1, v0, :cond_11

    .line 2558
    return-void

    .line 2560
    :cond_11
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 2561
    if-eqz v7, :cond_b3

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 2562
    nop

    .line 2563
    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2562
    invoke-static {v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v0

    .line 2564
    if-eqz v0, :cond_b3

    .line 2566
    :try_start_28
    invoke-interface {v0}, Lcom/android/internal/app/procstats/IProcessStats;->getMinAssociationDumpDuration()J

    move-result-wide v8

    .line 2567
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    move v11, v0

    :goto_33
    if-ltz v11, :cond_b1

    .line 2568
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 2569
    iget-wide v0, v12, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 2570
    iget v2, v12, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v2, :cond_49

    .line 2571
    iget-wide v2, v12, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v2, p4, v2

    add-long/2addr v0, v2

    move-wide v13, v0

    goto :goto_4a

    .line 2570
    :cond_49
    move-wide v13, v0

    .line 2573
    :goto_4a
    cmp-long v0, v13, v8

    if-gez v0, :cond_53

    .line 2574
    move-object/from16 v0, p1

    move/from16 p6, v11

    goto :goto_ad

    .line 2576
    :cond_53
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 2577
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2578
    iget v2, v15, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 2579
    iget-object v3, v15, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    if-ltz v2, :cond_78

    .line 2582
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-le v2, v10, :cond_78

    move v5, v10

    goto :goto_7a

    :cond_78
    const/4 v2, 0x0

    move v5, v2

    .line 2579
    :goto_7a
    move-wide/from16 v16, v0

    const-wide v1, 0x10900000001L

    move-object/from16 v0, p1

    move/from16 p6, v11

    move-wide/from16 v10, v16

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 2583
    iget v1, v15, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    const-wide v2, 0x10500000005L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2584
    iget v1, v12, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    const-wide v2, 0x10500000003L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2585
    const-wide/16 v1, 0x3e8

    div-long/2addr v13, v1

    long-to-int v1, v13

    const-wide v2, 0x10500000004L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2587
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_ad} :catch_b2

    .line 2567
    :goto_ad
    add-int/lit8 v11, p6, -0x1

    const/4 v10, 0x1

    goto :goto_33

    .line 2591
    :cond_b1
    goto :goto_b3

    .line 2589
    :catch_b2
    move-exception v0

    .line 2594
    :cond_b3
    :goto_b3
    return-void
.end method

.method blacklist dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .registers 26

    .line 2086
    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-wide/from16 v5, p9

    move-object/from16 v7, p13

    move/from16 v8, p14

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 2088
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 2089
    if-eqz p2, :cond_21

    .line 2090
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2091
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    :cond_21
    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    invoke-static/range {v0 .. v10}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 2096
    :cond_31
    return-void
.end method

.method public blacklist dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V
    .registers 50

    .line 1596
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide/from16 v9, p3

    invoke-static/range {v3 .. v10}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v5

    .line 1598
    const-string v1, "          Start time: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1599
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v1, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1600
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1601
    const-string v1, "        Total uptime: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1603
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_35

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    goto :goto_37

    :cond_35
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    :goto_37
    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v3, v7

    .line 1602
    invoke-static {v3, v4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1605
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1606
    const-string v1, "  Total elapsed time: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1608
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_4e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    goto :goto_50

    :cond_4e
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_50
    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v3, v7

    .line 1607
    invoke-static {v3, v4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1610
    nop

    .line 1611
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v15, 0x1

    if-eqz v1, :cond_65

    .line 1612
    const-string v1, " (shutdown)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1613
    const/4 v1, 0x0

    goto :goto_66

    .line 1611
    :cond_65
    move v1, v15

    .line 1615
    :goto_66
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_72

    .line 1616
    const-string v1, " (sysprops)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1617
    const/4 v1, 0x0

    .line 1619
    :cond_72
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/2addr v3, v15

    if-eqz v3, :cond_7d

    .line 1620
    const-string v1, " (complete)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1621
    const/4 v1, 0x0

    .line 1623
    :cond_7d
    if-eqz v1, :cond_84

    .line 1624
    const-string v1, " (partial)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    :cond_84
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v1, :cond_8d

    .line 1627
    const-string v1, " (swapped-out-pss)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1629
    :cond_8d
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1630
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1632
    const-string v1, "     Aggregated over: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1633
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1634
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_bf

    .line 1635
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1636
    const-string v1, "System memory usage:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    const-string v7, "  "

    invoke-virtual {v1, v2, v7, v3, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    .line 1639
    :cond_bf
    nop

    .line 1640
    and-int/lit8 v1, p9, 0xe

    const-string v13, " / "

    const-string v3, "      (Not active: "

    const-string v4, " entries)"

    const-string v7, "  * "

    const-string v8, ")"

    const-string v9, ":"

    if-eqz v1, :cond_581

    .line 1641
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 1642
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 1643
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_d8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v10, v14, :cond_573

    .line 1644
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1645
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/util/SparseArray;

    .line 1646
    const/4 v0, 0x0

    :goto_ed
    move-object/from16 v16, v1

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_558

    .line 1647
    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1648
    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Landroid/util/LongSparseArray;

    .line 1649
    move-object/from16 v17, v15

    const/4 v15, 0x0

    :goto_106
    move-object/from16 v19, v3

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v15, v3, :cond_534

    .line 1650
    move-object/from16 v20, v4

    invoke-virtual {v0, v15}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 1651
    invoke-virtual {v0, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1652
    move-wide/from16 v23, v5

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1653
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1654
    move/from16 v21, v6

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1655
    if-eqz v12, :cond_140

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13d

    goto :goto_140

    :cond_13d
    const/16 v25, 0x0

    goto :goto_142

    :cond_140
    :goto_140
    const/16 v25, 0x1

    .line 1656
    :goto_142
    nop

    .line 1657
    nop

    .line 1658
    if-nez v25, :cond_1b1

    .line 1659
    move-object/from16 v26, v8

    const/4 v8, 0x0

    :goto_149
    if-ge v8, v5, :cond_167

    .line 1660
    move/from16 v27, v10

    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessState;

    .line 1661
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_162

    .line 1662
    nop

    .line 1663
    const/4 v8, 0x1

    goto :goto_16a

    .line 1659
    :cond_162
    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v27

    goto :goto_149

    :cond_167
    move/from16 v27, v10

    const/4 v8, 0x0

    .line 1666
    :goto_16a
    if-nez v8, :cond_1aa

    .line 1669
    const/4 v10, 0x0

    :goto_16d
    if-ge v10, v6, :cond_187

    .line 1670
    move/from16 v28, v6

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/AssociationState;

    .line 1671
    invoke-virtual {v6, v12}, Lcom/android/internal/app/procstats/AssociationState;->hasProcessOrPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_182

    .line 1672
    nop

    .line 1673
    const/4 v6, 0x1

    goto :goto_18a

    .line 1669
    :cond_182
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v28

    goto :goto_16d

    :cond_187
    move/from16 v28, v6

    const/4 v6, 0x0

    .line 1676
    :goto_18a
    if-nez v6, :cond_1a5

    .line 1677
    move-object/from16 v0, p0

    move-object/from16 v32, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v13

    move-object/from16 v21, v14

    move-object/from16 v34, v19

    move-object/from16 v33, v20

    move-wide/from16 v9, v23

    move-object/from16 v14, v26

    move/from16 v19, v1

    move/from16 v23, v15

    move-object v15, v12

    goto/16 :goto_51a

    .line 1676
    :cond_1a5
    move/from16 v29, v6

    move/from16 v30, v8

    goto :goto_1bb

    .line 1666
    :cond_1aa
    move/from16 v28, v6

    move/from16 v30, v8

    const/16 v29, 0x0

    goto :goto_1bb

    .line 1658
    :cond_1b1
    move/from16 v28, v6

    move-object/from16 v26, v8

    move/from16 v27, v10

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 1681
    :goto_1bb
    if-gtz v5, :cond_1c5

    if-gtz v21, :cond_1c5

    if-lez v28, :cond_1c2

    goto :goto_1c5

    :cond_1c2
    move/from16 v31, v11

    goto :goto_1e9

    .line 1682
    :cond_1c5
    :goto_1c5
    if-nez v11, :cond_1d0

    .line 1683
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1684
    const-string v6, "Per-Package Stats:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    const/4 v11, 0x1

    .line 1687
    :cond_1d0
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1690
    invoke-static {v2, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1691
    const-string v6, " / v"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1693
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v31, v11

    .line 1695
    :goto_1e9
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_335

    if-nez v29, :cond_335

    .line 1696
    if-eqz p5, :cond_269

    if-eqz p7, :cond_20b

    move-object/from16 v32, v7

    move-object/from16 v33, v9

    move-wide/from16 v9, v23

    move/from16 v23, v15

    move-object/from16 v15, v19

    move/from16 v24, v21

    move/from16 v19, v1

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    move-object/from16 v20, v13

    move-object/from16 v13, v26

    goto/16 :goto_27f

    .line 1727
    :cond_20b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    const/4 v3, 0x0

    :goto_211
    if-ge v3, v5, :cond_237

    .line 1729
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessState;

    .line 1730
    if-nez v25, :cond_228

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_228

    .line 1731
    goto :goto_234

    .line 1733
    :cond_228
    if-eqz p8, :cond_231

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v8

    if-nez v8, :cond_231

    .line 1734
    goto :goto_234

    .line 1736
    :cond_231
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1728
    :goto_234
    add-int/lit8 v3, v3, 0x1

    goto :goto_211

    .line 1738
    :cond_237
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    move-object v3, v7

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const-string v2, "      "

    move-object v8, v3

    const-string v3, "Prc "

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-wide/from16 v10, v23

    move-wide/from16 v8, p3

    move/from16 v23, v15

    move-object/from16 v15, v19

    move/from16 v24, v21

    move/from16 v19, v1

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    move-object/from16 v1, p1

    move-object/from16 v20, v13

    move-object/from16 v13, v26

    invoke-static/range {v1 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    move-wide v9, v10

    move-object/from16 v2, v33

    move-object/from16 v33, v14

    move-object v14, v2

    move-object v2, v1

    goto/16 :goto_34c

    .line 1696
    :cond_269
    move-object/from16 v32, v7

    move-object/from16 v33, v9

    move-wide/from16 v9, v23

    move/from16 v23, v15

    move-object/from16 v15, v19

    move/from16 v24, v21

    move/from16 v19, v1

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    move-object/from16 v20, v13

    move-object/from16 v13, v26

    .line 1697
    :goto_27f
    const/4 v11, 0x0

    :goto_280
    if-ge v11, v5, :cond_32e

    .line 1698
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 1699
    if-nez v25, :cond_2a0

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a0

    .line 1700
    move-object/from16 v26, v33

    move-object/from16 v33, v14

    move-object/from16 v14, v26

    move/from16 v26, v5

    goto/16 :goto_323

    .line 1702
    :cond_2a0
    if-eqz p8, :cond_2c2

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v3

    if-nez v3, :cond_2c2

    .line 1703
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    move-object/from16 v26, v33

    move-object/from16 v33, v14

    move-object/from16 v14, v26

    move/from16 v26, v5

    goto :goto_323

    .line 1708
    :cond_2c2
    const-string v3, "      Process "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1709
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v3

    if-eqz v3, :cond_2e2

    .line 1711
    const-string v3, " (multi, "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2e7

    .line 1713
    :cond_2e2
    const-string v3, " (unique, "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1715
    :goto_2e7
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1716
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1717
    move-object/from16 v3, v33

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    move v6, v5

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    move v7, v6

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string v3, "        "

    move-object/from16 v8, v33

    move-object/from16 v33, v14

    move-object v14, v8

    move/from16 v26, v7

    move-wide/from16 v7, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1721
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string v3, "        "

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1723
    const-string v3, "        "

    move-wide v5, v9

    move-object v4, v12

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V

    move-wide v9, v5

    .line 1697
    :goto_323
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v33

    move-object/from16 v33, v14

    move-object v14, v5

    move/from16 v5, v26

    goto/16 :goto_280

    :cond_32e
    move-object/from16 v39, v33

    move-object/from16 v33, v14

    move-object/from16 v14, v39

    goto :goto_34c

    .line 1695
    :cond_335
    move-object/from16 v32, v14

    move-object v14, v9

    move-wide/from16 v9, v23

    move/from16 v24, v21

    move-object/from16 v21, v32

    move-object/from16 v32, v7

    move/from16 v23, v15

    move-object/from16 v15, v19

    move-object/from16 v33, v20

    move/from16 v19, v1

    move-object/from16 v20, v13

    move-object/from16 v13, v26

    .line 1743
    :goto_34c
    and-int/lit8 v1, p9, 0x4

    const-string v3, "        Process: "

    if-eqz v1, :cond_3eb

    if-nez v29, :cond_3eb

    .line 1744
    const/4 v1, 0x0

    :goto_355
    move/from16 v4, v24

    if-ge v1, v4, :cond_3e5

    .line 1745
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ServiceState;

    .line 1746
    if-nez v25, :cond_378

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_378

    .line 1747
    move-wide/from16 v7, p3

    move/from16 v26, v1

    move/from16 v24, v4

    move-object/from16 v34, v15

    move-object v15, v3

    goto/16 :goto_3de

    .line 1749
    :cond_378
    if-eqz p8, :cond_39d

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v6

    if-nez v6, :cond_39d

    .line 1750
    const-string v5, "      (Not active service: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1751
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    move-wide/from16 v7, p3

    move/from16 v26, v1

    move/from16 v24, v4

    move-object/from16 v34, v15

    move-object v15, v3

    goto :goto_3de

    .line 1755
    :cond_39d
    if-eqz p7, :cond_3a5

    .line 1756
    const-string v6, "      Service "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3aa

    .line 1758
    :cond_3a5
    const-string v6, "      * Svc "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1760
    :goto_3aa
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    move/from16 v24, v4

    const-string v4, "          "

    move v6, v1

    move-object v1, v5

    const-string v5, "    "

    move-object v7, v3

    const-string v3, "        "

    move/from16 v11, p7

    move/from16 v26, v6

    move-wide v8, v9

    move-object/from16 v34, v15

    move/from16 v10, p5

    move-object v15, v7

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    move-wide v9, v8

    move-wide v7, v6

    .line 1744
    :goto_3de
    add-int/lit8 v1, v26, 0x1

    move-object v3, v15

    move-object/from16 v15, v34

    goto/16 :goto_355

    :cond_3e5
    move-wide/from16 v7, p3

    move-object/from16 v34, v15

    move-object v15, v3

    goto :goto_3f0

    .line 1743
    :cond_3eb
    move-wide/from16 v7, p3

    move-object/from16 v34, v15

    move-object v15, v3

    .line 1768
    :goto_3f0
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_510

    .line 1769
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v3, v28

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1771
    const/4 v4, 0x0

    :goto_3fc
    if-ge v4, v3, :cond_44f

    .line 1772
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/AssociationState;

    .line 1773
    if-nez v25, :cond_428

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_428

    .line 1774
    if-eqz v29, :cond_421

    invoke-virtual {v5, v12}, Lcom/android/internal/app/procstats/AssociationState;->hasProcessOrPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_428

    .line 1775
    move-object/from16 v11, p0

    move/from16 v28, v3

    move/from16 v24, v4

    goto :goto_44a

    .line 1774
    :cond_421
    move-object/from16 v11, p0

    move/from16 v28, v3

    move/from16 v24, v4

    goto :goto_44a

    .line 1778
    :cond_428
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;

    move-object/from16 v11, p0

    invoke-direct {v6, v11, v5}, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;)V

    .line 1780
    move/from16 v28, v3

    iget-object v3, v5, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    .line 1781
    invoke-static {v7, v8, v9, v10, v3}, Lcom/android/internal/app/procstats/AssociationState;->createSortedAssociations(JJLandroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v6, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mSources:Ljava/util/ArrayList;

    .line 1782
    move/from16 v24, v4

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/app/procstats/AssociationState;->getTotalDuration(J)J

    move-result-wide v3

    iput-wide v3, v6, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    .line 1783
    invoke-virtual {v5, v7, v8}, Lcom/android/internal/app/procstats/AssociationState;->getActiveDuration(J)J

    move-result-wide v3

    iput-wide v3, v6, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    .line 1784
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    :goto_44a
    add-int/lit8 v4, v24, 0x1

    move/from16 v3, v28

    goto :goto_3fc

    .line 1786
    :cond_44f
    move-object/from16 v11, p0

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ASSOCIATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1787
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1788
    const/4 v4, 0x0

    :goto_45b
    if-ge v4, v3, :cond_508

    .line 1789
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;

    .line 1790
    move-object v6, v1

    iget-object v1, v5, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    .line 1791
    if-eqz p8, :cond_494

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->isInUse()Z

    move-result v24

    if-nez v24, :cond_494

    .line 1792
    const-string v1, "      (Not active association: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1793
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    move-object/from16 v24, v0

    move/from16 v28, v3

    move/from16 v35, v4

    move-object/from16 v26, v6

    move-object v0, v11

    move-object/from16 v36, v14

    move-object/from16 v37, v20

    move-object v14, v13

    move-object/from16 v20, v15

    move-object v15, v12

    goto/16 :goto_4f3

    .line 1797
    :cond_494
    if-eqz p7, :cond_49e

    .line 1798
    move-object/from16 v24, v0

    const-string v0, "      Association "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4a5

    .line 1800
    :cond_49e
    move-object/from16 v24, v0

    const-string v0, "      * Asc "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1802
    :goto_4a5
    iget-object v0, v5, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1806
    iget-object v0, v5, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mSources:Ljava/util/ArrayList;

    .line 1809
    if-eqz v29, :cond_4cf

    if-nez v25, :cond_4cf

    if-nez v30, :cond_4cf

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4cf

    .line 1810
    move-object v5, v12

    goto :goto_4d0

    :cond_4cf
    const/4 v5, 0x0

    .line 1806
    :goto_4d0
    move/from16 v26, v3

    const-string v3, "        "

    move/from16 v28, v4

    const-string v4, "          "

    move-object v11, v5

    const-string v5, "    "

    move-object/from16 v36, v14

    move-object/from16 v37, v20

    move/from16 v35, v28

    move-object v14, v13

    move-object/from16 v20, v15

    move/from16 v28, v26

    move/from16 v13, p7

    move-object/from16 v26, v6

    move-object v15, v12

    move/from16 v12, p6

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/app/procstats/AssociationState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V

    .line 1788
    :goto_4f3
    add-int/lit8 v4, v35, 0x1

    move-wide/from16 v7, p3

    move-object v11, v0

    move-object v13, v14

    move-object v12, v15

    move-object/from16 v15, v20

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v3, v28

    move-object/from16 v14, v36

    move-object/from16 v20, v37

    goto/16 :goto_45b

    :cond_508
    move-object v0, v11

    move-object v15, v12

    move-object/from16 v36, v14

    move-object/from16 v37, v20

    move-object v14, v13

    goto :goto_518

    .line 1768
    :cond_510
    move-object/from16 v0, p0

    move-object v15, v12

    move-object/from16 v36, v14

    move-object/from16 v37, v20

    move-object v14, v13

    .line 1649
    :goto_518
    move/from16 v11, v31

    :goto_51a
    add-int/lit8 v1, v23, 0x1

    move-wide v5, v9

    move-object v8, v14

    move-object v12, v15

    move-object/from16 v14, v21

    move-object/from16 v0, v22

    move/from16 v10, v27

    move-object/from16 v7, v32

    move-object/from16 v4, v33

    move-object/from16 v3, v34

    move-object/from16 v9, v36

    move-object/from16 v13, v37

    move v15, v1

    move/from16 v1, v19

    goto/16 :goto_106

    .line 1646
    :cond_534
    move-object/from16 v0, p0

    move-object/from16 v33, v4

    move-object/from16 v32, v7

    move-object/from16 v36, v9

    move/from16 v27, v10

    move-object v15, v12

    move-object/from16 v37, v13

    move-object/from16 v21, v14

    move-object/from16 v34, v19

    move-wide v9, v5

    move-object v14, v8

    add-int/lit8 v1, v18, 0x1

    move v0, v1

    move-object/from16 v1, v16

    move-object/from16 v15, v17

    move-object/from16 v14, v21

    move/from16 v10, v27

    move-object/from16 v3, v34

    move-object/from16 v9, v36

    goto/16 :goto_ed

    .line 1643
    :cond_558
    move-object/from16 v0, p0

    move-object/from16 v34, v3

    move-object/from16 v33, v4

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v36, v9

    move/from16 v27, v10

    move-object v15, v12

    move-object/from16 v37, v13

    move-wide v9, v5

    add-int/lit8 v1, v27, 0x1

    move-object/from16 v9, v36

    const/4 v15, 0x1

    move v10, v1

    move-object/from16 v1, v16

    goto/16 :goto_d8

    :cond_573
    move-object/from16 v34, v3

    move-object/from16 v33, v4

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v36, v9

    move-object v15, v12

    move-object/from16 v37, v13

    move-wide v9, v5

    goto :goto_58e

    .line 1640
    :cond_581
    move-object/from16 v34, v3

    move-object/from16 v33, v4

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v36, v9

    move-object v15, v12

    move-object/from16 v37, v13

    move-wide v9, v5

    .line 1818
    :goto_58e
    and-int/lit8 v1, p9, 0x1

    const-string v11, " ("

    const-string v12, " total"

    const-string v13, " shown of "

    if-eqz v1, :cond_6f5

    .line 1819
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 1820
    nop

    .line 1821
    nop

    .line 1822
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5a4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_6d8

    .line 1823
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1824
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 1825
    move-wide/from16 v23, v9

    const/4 v10, 0x0

    :goto_5b9
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v10, v9, :cond_6c2

    .line 1826
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1827
    add-int/lit8 v16, v5, 0x1

    .line 1828
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    .line 1829
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->hasAnyData()Z

    move-result v17

    if-nez v17, :cond_5d4

    .line 1830
    move-object/from16 p6, v1

    goto :goto_5f2

    .line 1832
    :cond_5d4
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v17

    if-nez v17, :cond_5dd

    .line 1833
    move-object/from16 p6, v1

    goto :goto_5f2

    .line 1835
    :cond_5dd
    if-eqz v15, :cond_607

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_607

    .line 1836
    move-object/from16 p6, v1

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_609

    .line 1837
    nop

    .line 1825
    :goto_5f2
    move-object/from16 v20, p6

    move/from16 v21, v3

    move-object/from16 v22, v7

    move-object/from16 v25, v8

    move/from16 v19, v10

    move-object v9, v15

    move-object/from16 v10, v32

    move-object/from16 v38, v33

    move-object/from16 v15, v34

    move-object/from16 v33, v36

    goto/16 :goto_6aa

    .line 1835
    :cond_607
    move-object/from16 p6, v1

    .line 1839
    :cond_609
    add-int/lit8 v17, v4, 0x1

    .line 1840
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1841
    if-nez v6, :cond_618

    .line 1842
    const-string v1, "Multi-Package Common Processes:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    const/16 v18, 0x1

    goto :goto_61a

    .line 1841
    :cond_618
    move/from16 v18, v6

    .line 1845
    :goto_61a
    if-eqz p8, :cond_641

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v1

    if-nez v1, :cond_641

    .line 1846
    move-object/from16 v1, v34

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    move-object/from16 v20, p6

    move/from16 v21, v3

    move-object/from16 v22, v7

    move-object/from16 v25, v8

    move/from16 v19, v10

    move-object v9, v15

    move-object/from16 v10, v32

    move-object/from16 v38, v33

    move-object/from16 v33, v36

    move-object v15, v1

    goto/16 :goto_6a6

    .line 1845
    :cond_641
    move-object/from16 v1, v34

    .line 1851
    move-object/from16 v4, v32

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1853
    move-object/from16 v6, v37

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1854
    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1855
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 1857
    move-object/from16 v9, v33

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1858
    move/from16 v19, v10

    move-object/from16 v10, v36

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1859
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v34, v1

    move-object v1, v5

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    move-object/from16 v20, v6

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move/from16 v21, v3

    const-string v3, "        "

    move-object/from16 v22, v7

    move-object/from16 v25, v8

    move-object/from16 v33, v10

    move-object/from16 v37, v20

    move-object/from16 v10, v32

    move-object/from16 v15, v34

    move-wide/from16 v7, p3

    move-object/from16 v20, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1861
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string v3, "        "

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1862
    const-string v3, "        "

    move-object/from16 v4, p2

    move-object/from16 v38, v9

    move-wide/from16 v5, v23

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V

    move-object v9, v4

    .line 1825
    :goto_6a6
    move/from16 v4, v17

    move/from16 v6, v18

    :goto_6aa
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v32, v10

    move-object/from16 v34, v15

    move/from16 v5, v16

    move/from16 v3, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v25

    move-object/from16 v36, v33

    move-object/from16 v33, v38

    move v10, v1

    move-object v15, v9

    move-object/from16 v1, v20

    goto/16 :goto_5b9

    .line 1822
    :cond_6c2
    move-object/from16 v20, v1

    move/from16 v21, v3

    move-object v9, v15

    move-object/from16 v10, v32

    move-object/from16 v38, v33

    move-object/from16 v15, v34

    move-object/from16 v33, v36

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v33, v38

    move-object v15, v9

    move-wide/from16 v9, v23

    goto/16 :goto_5a4

    .line 1865
    :cond_6d8
    move-wide/from16 v23, v9

    move-object v9, v15

    move-object/from16 v10, v32

    move-object/from16 v38, v33

    move-object/from16 v15, v34

    move-object/from16 v33, v36

    const-string v1, "  Total procs: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1866
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_700

    .line 1818
    :cond_6f5
    move-wide/from16 v23, v9

    move-object v9, v15

    move-object/from16 v10, v32

    move-object/from16 v38, v33

    move-object/from16 v15, v34

    move-object/from16 v33, v36

    .line 1869
    :goto_700
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_7b8

    .line 1870
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 1871
    nop

    .line 1872
    nop

    .line 1873
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_710
    if-ge v4, v3, :cond_7a4

    .line 1874
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1875
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, Lcom/android/internal/app/procstats/UidState;

    .line 1876
    add-int/lit8 v16, v6, 0x1

    .line 1877
    if-eqz v9, :cond_732

    invoke-virtual {v1, v9}, Lcom/android/internal/app/procstats/UidState;->hasPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_732

    .line 1878
    move/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v9, v33

    goto/16 :goto_796

    .line 1880
    :cond_732
    add-int/lit8 v18, v5, 0x1

    .line 1881
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1882
    if-nez v7, :cond_741

    .line 1883
    const-string v5, "Per-UID Stats:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    const/16 v19, 0x1

    goto :goto_743

    .line 1882
    :cond_741
    move/from16 v19, v7

    .line 1886
    :goto_743
    if-eqz p8, :cond_75f

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/UidState;->isInUse()Z

    move-result v5

    if-nez v5, :cond_75f

    .line 1887
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1888
    invoke-static {v8}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1890
    move/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v9, v33

    goto :goto_792

    .line 1892
    :cond_75f
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1893
    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1894
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/UidState;->getDurationsBucketCount()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1896
    move-object/from16 v5, v38

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1897
    move-object/from16 v6, v33

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    move v7, v4

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v20, v5

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move v8, v3

    const-string v3, "        "

    move/from16 v21, v7

    move-object/from16 v38, v20

    move-object/from16 v9, v33

    move/from16 v20, v8

    move-wide/from16 v7, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/UidState;->dumpState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1873
    :goto_792
    move/from16 v5, v18

    move/from16 v7, v19

    :goto_796
    add-int/lit8 v4, v21, 0x1

    move-object/from16 v33, v9

    move/from16 v6, v16

    move-object/from16 v1, v17

    move/from16 v3, v20

    move-object/from16 v9, p2

    goto/16 :goto_710

    .line 1901
    :cond_7a4
    move-object/from16 v9, v33

    const-string v1, "  Total UIDs: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1902
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7ba

    .line 1869
    :cond_7b8
    move-object/from16 v9, v33

    .line 1905
    :goto_7ba
    if-eqz p7, :cond_8bc

    .line 1906
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1907
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8bc

    .line 1908
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1909
    const-string v1, "Tracking associations:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    const/4 v14, 0x0

    :goto_7d0
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_8bc

    .line 1911
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 1912
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getAssociationState()Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v3

    .line 1913
    if-nez v3, :cond_804

    .line 1914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " shouldn\'t be in the tracking list."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ProcessStats"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    goto/16 :goto_8b8

    .line 1917
    :cond_804
    const-string v4, "  #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 1919
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1921
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/AssociationState;->getUid()I

    move-result v6

    invoke-static {v2, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1923
    const-string v6, " <- "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getUid()I

    move-result v5

    invoke-static {v2, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1927
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1928
    const-string v5, "    Tracking for: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1929
    iget-wide v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mTrackingUptime:J

    sub-long v5, p3, v5

    invoke-static {v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1930
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1931
    const-string v5, "    Component: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1932
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/AssociationState;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 1932
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1935
    const-string v5, "    Proc state: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1936
    iget v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_87c

    .line 1937
    sget-object v5, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_881

    .line 1939
    :cond_87c
    const-string v5, "--"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1941
    :goto_881
    const-string v5, " #"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1942
    iget v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1943
    const-string v5, "    Process: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/AssociationState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1945
    iget v3, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    if-lez v3, :cond_8b8

    .line 1946
    const-string v3, "    Active count "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1947
    iget v3, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1948
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1949
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-wide/from16 v5, p3

    move/from16 v7, p7

    move-wide/from16 v3, v23

    invoke-static/range {v1 .. v7}, Lcom/android/internal/app/procstats/AssociationState;->dumpActiveDurationSummary(Ljava/io/PrintWriter;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZ)V

    .line 1950
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1910
    :cond_8b8
    :goto_8b8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7d0

    .line 1956
    :cond_8bc
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1957
    if-eqz p5, :cond_8d2

    .line 1958
    const-string v1, "Process summary:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    move-wide/from16 v3, p3

    move/from16 v5, p8

    move-object v1, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    move-object v2, v1

    goto :goto_8d7

    .line 1961
    :cond_8d2
    move-wide/from16 v7, p3

    invoke-virtual {v0, v2, v7, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 1964
    :goto_8d7
    if-eqz p7, :cond_8eb

    .line 1965
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1966
    const-string v1, "Internal state:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    const-string v1, "  mRunning="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1974
    :cond_8eb
    if-nez p2, :cond_8f0

    .line 1975
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFragmentationLocked(Ljava/io/PrintWriter;)V

    .line 1977
    :cond_8f0
    return-void
.end method

.method public blacklist dumpProcessAssociation(ILcom/android/internal/app/procstats/StatsEventOutput;)V
    .registers 4

    .line 2450
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/StatsEventOutput;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->forEachAssociation(Lcom/android/internal/util/function/QuintConsumer;)V

    .line 2467
    return-void
.end method

.method public blacklist dumpProcessState(ILcom/android/internal/app/procstats/StatsEventOutput;)V
    .registers 4

    .line 2438
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/procstats/ProcessStats;ILcom/android/internal/app/procstats/StatsEventOutput;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 2446
    return-void
.end method

.method public blacklist dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .registers 21

    .line 1980
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-wide/from16 v7, p3

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v11

    .line 1982
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const-string v3, "  "

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-wide/from16 v9, p3

    move/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 1984
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1985
    move-wide/from16 v7, p3

    invoke-virtual {p0, v1, v7, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 1986
    return-void
.end method

.method blacklist dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .registers 18

    .line 2022
    const-string v2, "Run time Stats:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const-string v2, "  "

    move-object v1, p1

    move-wide/from16 v7, p2

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 2024
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2025
    const-string v2, "Memory usage:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    new-instance v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v11, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 2028
    invoke-virtual {p0, v11, v7, v8}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 2029
    nop

    .line 2030
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Kernel "

    const-wide/16 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    .line 2032
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Native "

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v2

    .line 2034
    const/4 v0, 0x0

    move v12, v0

    move-wide v8, v2

    :goto_4a
    const/16 v0, 0x10

    const/16 v13, 0x9

    if-ge v12, v0, :cond_6c

    .line 2036
    if-eq v12, v13, :cond_69

    .line 2037
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v12

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v12

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v10, v0, v12

    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v2

    move-wide v8, v2

    .line 2034
    :cond_69
    add-int/lit8 v12, v12, 0x1

    goto :goto_4a

    .line 2042
    :cond_6c
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Cached "

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    .line 2044
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Free   "

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    .line 2046
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Z-Ram  "

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    .line 2048
    const-string v0, "  TOTAL  : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2049
    invoke-static {p1, v8, v9}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2050
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2051
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v13

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v13

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v10, v0, v13

    const-string v2, "  "

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 2054
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2055
    const-string v2, "PSS collection stats:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    const-string v2, "  Internal Single: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2057
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2058
    const-string v2, "x over "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2059
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2060
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2061
    const-string v3, "  Internal All Procs (Memory Change): "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2062
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2063
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2064
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2065
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2066
    const-string v3, "  Internal All Procs (Polling): "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2067
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2068
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2069
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2070
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2071
    const-string v3, "  External: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2072
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2073
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2074
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2075
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2076
    const-string v3, "  External Slow: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2077
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2078
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2079
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2080
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2081
    return-void
.end method

.method public blacklist evaluateSystemProperties(Z)Z
    .registers 4

    .line 662
    nop

    .line 663
    nop

    .line 664
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v0

    .line 663
    const-string v1, "persist.sys.dalvik.vm.lib.2"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 666
    nop

    .line 667
    if-eqz p1, :cond_1d

    .line 668
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 671
    :cond_1d
    const/4 p1, 0x1

    goto :goto_20

    .line 665
    :cond_1f
    const/4 p1, 0x0

    .line 671
    :goto_20
    return p1
.end method

.method blacklist forEachAssociation(Lcom/android/internal/util/function/QuintConsumer;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "Lcom/android/internal/app/procstats/AssociationState;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;)V"
        }
    .end annotation

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2410
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2411
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_94

    .line 2412
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 2413
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_8e

    .line 2414
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2415
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    .line 2416
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2b
    if-ge v10, v9, :cond_89

    .line 2417
    invoke-virtual {v8, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2418
    iget-object v12, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v13, 0x0

    .line 2419
    :goto_3a
    if-ge v13, v12, :cond_84

    .line 2421
    iget-object v14, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v18, v14

    check-cast v18, Ljava/lang/String;

    .line 2422
    iget-object v14, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/AssociationState;

    .line 2423
    iget-object v15, v14, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/4 v2, 0x0

    .line 2424
    :goto_55
    if-ge v2, v15, :cond_7f

    .line 2426
    move-object/from16 v21, v0

    iget-object v0, v14, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 2427
    iget-object v0, v14, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 2428
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v16, v14

    move v0, v15

    move-object/from16 v15, p1

    invoke-interface/range {v15 .. v20}, Lcom/android/internal/util/function/QuintConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2425
    add-int/lit8 v2, v2, 0x1

    move v15, v0

    move-object/from16 v0, v21

    goto :goto_55

    .line 2420
    :cond_7f
    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    goto :goto_3a

    .line 2416
    :cond_84
    move-object/from16 v21, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    .line 2413
    :cond_89
    move-object/from16 v21, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 2411
    :cond_8e
    move-object/from16 v21, v0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 2434
    :cond_94
    return-void
.end method

.method blacklist forEachProcess(Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;)V"
        }
    .end annotation

    .line 2397
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2398
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_2a

    .line 2399
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 2400
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_19
    if-ge v6, v5, :cond_27

    .line 2401
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessState;

    .line 2402
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2400
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 2398
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2405
    :cond_2a
    return-void
.end method

.method public blacklist getAssociationStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;
    .registers 13

    .line 1500
    move-wide v3, p3

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object p3

    .line 1501
    iget-object p4, p3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {p4, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/app/procstats/AssociationState;

    .line 1502
    if-eqz p4, :cond_10

    .line 1504
    return-object p4

    .line 1506
    :cond_10
    if-eqz p5, :cond_1b

    .line 1507
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 1508
    :goto_1c
    move-object p4, p6

    move-object p6, p1

    new-instance p1, Lcom/android/internal/app/procstats/AssociationState;

    move-object p2, p0

    invoke-direct/range {p1 .. p6}, Lcom/android/internal/app/procstats/AssociationState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1509
    iget-object p2, p3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {p2, p4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    return-object p1
.end method

.method public blacklist getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .registers 13

    .line 1374
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 1375
    if-nez v0, :cond_14

    .line 1376
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 1377
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1379
    :cond_14
    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1380
    if-eqz v1, :cond_1d

    .line 1381
    return-object v1

    .line 1383
    :cond_1d
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJ)V

    .line 1384
    invoke-virtual {v0, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1385
    return-object v2
.end method

.method public blacklist getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 14

    .line 1394
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 1395
    if-eqz v0, :cond_b

    .line 1396
    return-object v0

    .line 1398
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 1399
    if-nez v0, :cond_4b

    .line 1400
    new-instance v1, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1402
    move-object v8, v7

    iget-object p2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    iget v0, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {p2, v8, v0, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1403
    iget-object p2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/app/procstats/UidState;

    .line 1404
    if-nez p2, :cond_46

    .line 1405
    new-instance p2, Lcom/android/internal/app/procstats/UidState;

    iget v0, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-direct {p2, p0, v0}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 1406
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v0, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1408
    :cond_46
    invoke-virtual {p2, v1}, Lcom/android/internal/app/procstats/UidState;->addProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    move-object v3, v1

    goto :goto_4e

    .line 1399
    :cond_4b
    move-object v2, p0

    move-object v8, p2

    move-object v3, v0

    .line 1411
    :goto_4e
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result p2

    if-nez p2, :cond_10f

    .line 1412
    iget-object p2, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    iget-wide v0, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    .line 1413
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v4

    cmp-long p2, v0, v4

    if-nez p2, :cond_6c

    .line 1416
    goto/16 :goto_11f

    .line 1423
    :cond_6c
    const/4 p2, 0x1

    invoke-virtual {v3, p2}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    .line 1428
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1431
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    .line 1432
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v4

    .line 1431
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    .line 1433
    if-eqz v0, :cond_cc

    .line 1434
    invoke-virtual {v3, v9, v10}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .line 1437
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, p2

    :goto_98
    if-ltz v2, :cond_ae

    .line 1441
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ServiceState;

    .line 1442
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ServiceState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    if-ne v5, v3, :cond_ab

    .line 1444
    invoke-virtual {v4, v1}, Lcom/android/internal/app/procstats/ServiceState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1440
    :cond_ab
    add-int/lit8 v2, v2, -0x1

    goto :goto_98

    .line 1450
    :cond_ae
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, p2

    :goto_b5
    if-ltz v2, :cond_cb

    .line 1451
    iget-object p2, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/app/procstats/AssociationState;

    .line 1452
    invoke-virtual {p2}, Lcom/android/internal/app/procstats/AssociationState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v4

    if-ne v4, v3, :cond_c8

    .line 1455
    invoke-virtual {p2, v1}, Lcom/android/internal/app/procstats/AssociationState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1450
    :cond_c8
    add-int/lit8 v2, v2, -0x1

    goto :goto_b5

    .line 1460
    :cond_cb
    goto :goto_102

    .line 1461
    :cond_cc
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cloning proc state: no package state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " for proc "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1462
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1461
    const-string v0, "ProcessStats"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :goto_102
    new-instance v2, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 1468
    move-object v3, v2

    goto :goto_11f

    .line 1472
    :cond_10f
    new-instance v2, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    .line 1474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    move-object v3, v2

    .line 1477
    :goto_11f
    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p1, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    return-object v3
.end method

.method public blacklist getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 6

    .line 1390
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .registers 9

    .line 1484
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    .line 1485
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    .line 1486
    if-eqz v1, :cond_f

    .line 1488
    return-object v1

    .line 1490
    :cond_f
    if-eqz p5, :cond_16

    .line 1491
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p2

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    .line 1492
    :goto_17
    move-object p3, p1

    new-instance p1, Lcom/android/internal/app/procstats/ServiceState;

    move-object p4, p6

    move-object p6, p2

    move-object p2, p0

    invoke-direct/range {p1 .. p6}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1493
    iget-object p2, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p2, p4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    return-object p1
.end method

.method blacklist printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .registers 13

    .line 2006
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-eqz v0, :cond_2c

    .line 2007
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    mul-double/2addr p4, v0

    long-to-double p6, p6

    div-double/2addr p4, p6

    double-to-long p4, p4

    .line 2008
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2011
    invoke-static {p1, p4, p5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2012
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(I)V

    .line 2014
    const-string p2, " samples)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2016
    add-long/2addr p8, p4

    return-wide p8

    .line 2018
    :cond_2c
    return-wide p8
.end method

.method public blacklist read(Ljava/io/InputStream;)V
    .registers 6

    .line 1061
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [I

    .line 1062
    invoke-static {p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v1

    .line 1063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1064
    const/4 v3, 0x0

    aget v0, v0, v3

    invoke-virtual {v2, v1, v3, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1065
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1066
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1068
    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 1071
    goto :goto_31

    .line 1069
    :catch_1b
    move-exception p1

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caught exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1072
    :goto_31
    return-void
.end method

.method blacklist readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 5

    .line 835
    const/16 v0, 0x9

    if-gt p2, v0, :cond_9

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 838
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 839
    if-ltz p2, :cond_18

    .line 840
    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 842
    :cond_18
    not-int p2, p2

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 844
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_2c

    .line 845
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 847
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 848
    return-object p1
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 30

    .line 1075
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gtz v0, :cond_29

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 1076
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_29

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 1077
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_27

    goto :goto_29

    :cond_27
    move v10, v8

    goto :goto_2a

    :cond_29
    :goto_29
    move v10, v9

    .line 1078
    :goto_2a
    if-eqz v10, :cond_2f

    .line 1079
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 1082
    :cond_2f
    const v0, 0x50535454

    const-string v2, "magic number"

    invoke-direct {v1, v7, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1083
    return-void

    .line 1085
    :cond_3b
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1086
    const/16 v0, 0x29

    if-eq v11, v0, :cond_59

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1088
    return-void

    .line 1090
    :cond_59
    const-string v0, "state count"

    const/16 v2, 0x10

    invoke-direct {v1, v7, v2, v0}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1091
    return-void

    .line 1093
    :cond_64
    const/16 v0, 0x8

    const-string v3, "adj count"

    invoke-direct {v1, v7, v0, v3}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1094
    return-void

    .line 1096
    :cond_6f
    const/16 v0, 0xa

    const-string v3, "pss count"

    invoke-direct {v1, v7, v0, v3}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 1097
    return-void

    .line 1099
    :cond_7a
    const-string v0, "sys mem usage count"

    invoke-direct {v1, v7, v2, v0}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 1100
    return-void

    .line 1102
    :cond_83
    const/16 v0, 0x1000

    const-string v2, "longs size"

    invoke-direct {v1, v7, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 1103
    return-void

    .line 1106
    :cond_8e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1108
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    .line 1109
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 1110
    invoke-direct {v1}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1111
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1112
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 1113
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 1114
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 1115
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 1116
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 1117
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 1118
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 1119
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 1120
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 1121
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 1122
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 1123
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 1124
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    .line 1125
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1126
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_106

    move v0, v9

    goto :goto_107

    :cond_106
    move v0, v8

    :goto_107
    iput-boolean v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 1127
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 1128
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->readFromParcel(Landroid/os/Parcel;)V

    .line 1129
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v2, v2

    invoke-direct {v1, v7, v11, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1130
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_125

    .line 1131
    return-void

    .line 1134
    :cond_125
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1135
    move v0, v8

    :goto_12a
    if-ge v0, v12, :cond_144

    .line 1136
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1137
    new-instance v3, Lcom/android/internal/app/procstats/UidState;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 1138
    invoke-virtual {v3, v7}, Lcom/android/internal/app/procstats/UidState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v4

    if-nez v4, :cond_13c

    .line 1139
    return-void

    .line 1141
    :cond_13c
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1135
    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    .line 1144
    :cond_144
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1145
    if-gez v0, :cond_160

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad process count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1147
    return-void

    .line 1149
    :cond_160
    :goto_160
    const-string v13, "bad uid: "

    const-string v6, "bad uid count: "

    if-lez v0, :cond_205

    .line 1150
    add-int/lit8 v15, v0, -0x1

    .line 1151
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    .line 1152
    if-nez v0, :cond_173

    .line 1153
    const-string v0, "bad process name"

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1154
    return-void

    .line 1156
    :cond_173
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1157
    if-gez v2, :cond_18d

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1159
    return-void

    .line 1161
    :cond_18d
    :goto_18d
    if-lez v2, :cond_202

    .line 1162
    add-int/lit8 v16, v2, -0x1

    .line 1163
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1164
    if-gez v3, :cond_1ab

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1166
    return-void

    .line 1168
    :cond_1ab
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    .line 1169
    if-nez v2, :cond_1b6

    .line 1170
    const-string v0, "bad process package name"

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1171
    return-void

    .line 1173
    :cond_1b6
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1174
    if-eqz v10, :cond_1c5

    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6, v0, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_1c6

    :cond_1c5
    const/4 v6, 0x0

    .line 1175
    :goto_1c6
    if-eqz v6, :cond_1d5

    .line 1176
    invoke-virtual {v6, v7, v11, v8}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v2

    if-nez v2, :cond_1cf

    .line 1177
    return-void

    .line 1176
    :cond_1cf
    move-object/from16 v27, v6

    move-object v6, v0

    move-object/from16 v0, v27

    goto :goto_1e2

    .line 1180
    :cond_1d5
    move-object v6, v0

    new-instance v0, Lcom/android/internal/app/procstats/ProcessState;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1181
    invoke-virtual {v0, v7, v11, v9}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v2

    if-nez v2, :cond_1e2

    .line 1182
    return-void

    .line 1187
    :cond_1e2
    :goto_1e2
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, v6, v3, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/UidState;

    .line 1190
    if-nez v2, :cond_1fb

    .line 1195
    new-instance v2, Lcom/android/internal/app/procstats/UidState;

    invoke-direct {v2, v1, v3}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 1196
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1198
    :cond_1fb
    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/UidState;->addProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1199
    move-object v0, v6

    move/from16 v2, v16

    goto :goto_18d

    .line 1200
    :cond_202
    move v0, v15

    goto/16 :goto_160

    .line 1202
    :cond_205
    move v0, v8

    :goto_206
    if-ge v0, v12, :cond_218

    .line 1203
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/UidState;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    .line 1202
    add-int/lit8 v0, v0, 0x1

    goto :goto_206

    .line 1208
    :cond_218
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1209
    if-gez v0, :cond_234

    .line 1210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad package count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1211
    return-void

    .line 1213
    :cond_234
    :goto_234
    if-lez v0, :cond_43e

    .line 1214
    add-int/lit8 v12, v0, -0x1

    .line 1215
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    .line 1216
    if-nez v2, :cond_243

    .line 1217
    const-string v0, "bad package name"

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1218
    return-void

    .line 1220
    :cond_243
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1221
    if-gez v0, :cond_25d

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1223
    return-void

    .line 1225
    :cond_25d
    :goto_25d
    if-lez v0, :cond_436

    .line 1226
    add-int/lit8 v24, v0, -0x1

    .line 1227
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1228
    if-gez v3, :cond_27b

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1230
    return-void

    .line 1232
    :cond_27b
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1233
    if-gez v0, :cond_297

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad versions count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1235
    return-void

    .line 1237
    :cond_297
    :goto_297
    if-lez v0, :cond_42b

    .line 1238
    add-int/lit8 v25, v0, -0x1

    .line 1239
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 1240
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-wide/from16 v4, v19

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJ)V

    .line 1241
    iget-object v15, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v15, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/LongSparseArray;

    .line 1242
    if-nez v15, :cond_2ba

    .line 1243
    new-instance v15, Landroid/util/LongSparseArray;

    invoke-direct {v15}, Landroid/util/LongSparseArray;-><init>()V

    .line 1244
    iget-object v14, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v14, v2, v3, v15}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1246
    :cond_2ba
    invoke-virtual {v15, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1247
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1248
    if-gez v14, :cond_2d9

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad package process count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1250
    return-void

    .line 1252
    :cond_2d9
    :goto_2d9
    if-lez v14, :cond_361

    .line 1253
    add-int/lit8 v14, v14, -0x1

    .line 1254
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    .line 1255
    if-nez v15, :cond_2e8

    .line 1256
    const-string v0, "bad package process name"

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1257
    return-void

    .line 1259
    :cond_2e8
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1262
    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9, v15, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    .line 1265
    if-nez v9, :cond_30c

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no common proc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1267
    return-void

    .line 1269
    :cond_30c
    if-eqz v16, :cond_34f

    .line 1274
    if-eqz v10, :cond_319

    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_31a

    :cond_319
    const/4 v8, 0x0

    .line 1275
    :goto_31a
    if-eqz v8, :cond_32c

    .line 1276
    const/4 v9, 0x0

    invoke-virtual {v8, v7, v11, v9}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v16

    if-nez v16, :cond_324

    .line 1277
    return-void

    .line 1276
    :cond_324
    move/from16 v18, v3

    move/from16 v26, v9

    move-object v3, v15

    move-object v15, v8

    const/4 v8, 0x1

    goto :goto_349

    .line 1280
    :cond_32c
    const/16 v26, 0x0

    move-object/from16 v21, v15

    new-instance v15, Lcom/android/internal/app/procstats/ProcessState;

    const-wide/16 v22, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-wide/from16 v19, v4

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v23}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 1282
    move-object/from16 v3, v21

    const/4 v8, 0x1

    invoke-virtual {v15, v7, v11, v8}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v9

    if-nez v9, :cond_349

    .line 1283
    return-void

    .line 1288
    :cond_349
    :goto_349
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    goto :goto_35a

    .line 1292
    :cond_34f
    move/from16 v18, v3

    move/from16 v26, v8

    move-object v3, v15

    const/4 v8, 0x1

    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v15, v3, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    :goto_35a
    move v9, v8

    move/from16 v3, v18

    move/from16 v8, v26

    goto/16 :goto_2d9

    .line 1295
    :cond_361
    move/from16 v18, v3

    move/from16 v26, v8

    move v8, v9

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1296
    if-gez v3, :cond_382

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad package service count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1298
    return-void

    .line 1300
    :cond_382
    :goto_382
    if-lez v3, :cond_3c9

    .line 1301
    add-int/lit8 v9, v3, -0x1

    .line 1302
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1303
    if-nez v3, :cond_391

    .line 1304
    const-string v0, "bad package service name"

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1305
    return-void

    .line 1307
    :cond_391
    const/16 v4, 0x9

    if-le v11, v4, :cond_39a

    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_39b

    :cond_39a
    const/4 v4, 0x0

    .line 1308
    :goto_39b
    if-eqz v10, :cond_3a6

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_3a7

    :cond_3a6
    const/4 v5, 0x0

    .line 1309
    :goto_3a7
    if-nez v5, :cond_3b5

    .line 1310
    move-object v5, v0

    new-instance v0, Lcom/android/internal/app/procstats/ServiceState;

    move-object v14, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object/from16 v17, v2

    move-object v5, v0

    goto :goto_3b8

    .line 1309
    :cond_3b5
    move-object v14, v0

    move-object/from16 v17, v2

    .line 1312
    :goto_3b8
    invoke-virtual {v5, v7}, Lcom/android/internal/app/procstats/ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_3bf

    .line 1313
    return-void

    .line 1317
    :cond_3bf
    iget-object v0, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    move v3, v9

    move-object v0, v14

    move-object/from16 v2, v17

    goto :goto_382

    .line 1319
    :cond_3c9
    move-object v14, v0

    move-object/from16 v17, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1320
    if-gez v0, :cond_3e8

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad package association count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1322
    return-void

    .line 1324
    :cond_3e8
    :goto_3e8
    if-lez v0, :cond_420

    .line 1325
    add-int/lit8 v9, v0, -0x1

    .line 1326
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    .line 1327
    if-nez v3, :cond_3f7

    .line 1328
    const-string v0, "bad package association name"

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1329
    return-void

    .line 1331
    :cond_3f7
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    .line 1332
    if-eqz v10, :cond_406

    .line 1333
    iget-object v0, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState;

    goto :goto_407

    :cond_406
    const/4 v0, 0x0

    .line 1334
    :goto_407
    if-nez v0, :cond_410

    .line 1335
    new-instance v0, Lcom/android/internal/app/procstats/AssociationState;

    const/4 v5, 0x0

    move-object v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/AssociationState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1338
    :cond_410
    invoke-virtual {v0, v1, v7, v11}, Lcom/android/internal/app/procstats/AssociationState;->readFromParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    .line 1339
    if-eqz v2, :cond_419

    .line 1340
    iput-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1341
    return-void

    .line 1345
    :cond_419
    iget-object v2, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    move v0, v9

    goto :goto_3e8

    .line 1347
    :cond_420
    move v9, v8

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v0, v25

    move/from16 v8, v26

    goto/16 :goto_297

    .line 1348
    :cond_42b
    move-object/from16 v17, v2

    move/from16 v26, v8

    move v8, v9

    move/from16 v0, v24

    move/from16 v8, v26

    goto/16 :goto_25d

    .line 1349
    :cond_436
    move/from16 v26, v8

    move v8, v9

    move v0, v12

    move/from16 v8, v26

    goto/16 :goto_234

    .line 1352
    :cond_43e
    move/from16 v26, v8

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1353
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1354
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1355
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1356
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1357
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1358
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1359
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1360
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1361
    nop

    :goto_46d
    if-ge v8, v0, :cond_49a

    .line 1362
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    add-int/lit8 v8, v8, 0x1

    goto :goto_46d

    .line 1368
    :cond_49a
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1371
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 518
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    .line 519
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 520
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 521
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 522
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 523
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 525
    return-void
.end method

.method public blacklist resetSafely()V
    .registers 16

    .line 529
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 533
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 534
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_13
    if-ltz v3, :cond_31

    .line 535
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 536
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_20
    if-ltz v6, :cond_2e

    .line 537
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessState;

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 536
    add-int/lit8 v6, v6, -0x1

    goto :goto_20

    .line 534
    :cond_2e
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 543
    :cond_31
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 544
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 545
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_3c
    if-ltz v5, :cond_11a

    .line 546
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 547
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_49
    if-ltz v7, :cond_10d

    .line 548
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    .line 549
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    sub-int/2addr v9, v4

    :goto_56
    if-ltz v9, :cond_100

    .line 550
    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 551
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    :goto_65
    if-ltz v11, :cond_9b

    .line 552
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 553
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_88

    .line 554
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 555
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    iget v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    add-int/2addr v14, v4

    iput v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 556
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    iput-object v12, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_98

    .line 558
    :cond_88
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    .line 559
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 551
    :goto_98
    add-int/lit8 v11, v11, -0x1

    goto :goto_65

    .line 562
    :cond_9b
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    :goto_a2
    if-ltz v11, :cond_be

    .line 563
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ServiceState;

    .line 564
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_b6

    .line 565
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->resetSafely(J)V

    goto :goto_bb

    .line 567
    :cond_b6
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 562
    :goto_bb
    add-int/lit8 v11, v11, -0x1

    goto :goto_a2

    .line 570
    :cond_be
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    :goto_c5
    if-ltz v11, :cond_e1

    .line 571
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/AssociationState;

    .line 572
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/AssociationState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_d9

    .line 573
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/AssociationState;->resetSafely(J)V

    goto :goto_de

    .line 575
    :cond_d9
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 570
    :goto_de
    add-int/lit8 v11, v11, -0x1

    goto :goto_c5

    .line 578
    :cond_e1
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_fc

    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_fc

    iget-object v10, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    .line 579
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-gtz v10, :cond_fc

    .line 580
    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 549
    :cond_fc
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_56

    .line 583
    :cond_100
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v8

    if-gtz v8, :cond_109

    .line 584
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    .line 547
    :cond_109
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_49

    .line 587
    :cond_10d
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-gtz v6, :cond_116

    .line 588
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 545
    :cond_116
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3c

    .line 593
    :cond_11a
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_11f
    if-ltz v3, :cond_171

    .line 594
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 595
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_12c
    if-ltz v6, :cond_165

    .line 596
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessState;

    .line 597
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v8

    if-nez v8, :cond_146

    iget v8, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    if-lez v8, :cond_13f

    goto :goto_146

    .line 613
    :cond_13f
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    .line 614
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_162

    .line 604
    :cond_146
    :goto_146
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isActive()Z

    move-result v8

    if-nez v8, :cond_15f

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v8

    if-eqz v8, :cond_15f

    iget v8, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    if-ne v8, v4, :cond_15f

    .line 606
    iget-object v7, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 607
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->makeStandalone()V

    .line 608
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_162

    .line 610
    :cond_15f
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 595
    :goto_162
    add-int/lit8 v6, v6, -0x1

    goto :goto_12c

    .line 617
    :cond_165
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_16e

    .line 618
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 593
    :cond_16e
    add-int/lit8 v3, v3, -0x1

    goto :goto_11f

    .line 622
    :cond_171
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_178
    if-ltz v2, :cond_19c

    .line 623
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/UidState;

    .line 624
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/UidState;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_194

    .line 625
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/procstats/UidState;->resetSafely(J)V

    goto :goto_199

    .line 627
    :cond_194
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 622
    :goto_199
    add-int/lit8 v2, v2, -0x1

    goto :goto_178

    .line 631
    :cond_19c
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 633
    return-void
.end method

.method public blacklist updateFragmentation()V
    .registers 6

    .line 687
    nop

    .line 689
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/pagetypeinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_82
    .catchall {:try_start_2 .. :try_end_e} :catchall_7d

    .line 690
    :try_start_e
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 691
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 692
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 693
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 694
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 696
    :goto_2a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2e} :catch_7a
    .catchall {:try_start_e .. :try_end_2e} :catchall_78

    .line 697
    if-nez v2, :cond_39

    .line 698
    nop

    .line 719
    nop

    .line 721
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    .line 723
    :goto_35
    goto :goto_38

    .line 722
    :catch_36
    move-exception v0

    goto :goto_35

    .line 726
    :goto_38
    return-void

    .line 700
    :cond_39
    :try_start_39
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 701
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 702
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    .line 703
    if-nez v2, :cond_50

    .line 704
    goto :goto_2a

    .line 706
    :cond_50
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/procstats/ProcessStats;->splitAndParseNumbers(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_77} :catch_7a
    .catchall {:try_start_39 .. :try_end_77} :catchall_78

    .line 711
    :cond_77
    goto :goto_2a

    .line 719
    :catchall_78
    move-exception v0

    goto :goto_9f

    .line 712
    :catch_7a
    move-exception v0

    move-object v0, v1

    goto :goto_83

    .line 719
    :catchall_7d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_9f

    .line 712
    :catch_82
    move-exception v1

    .line 713
    :goto_83
    :try_start_83
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 714
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 715
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 716
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_97
    .catchall {:try_start_83 .. :try_end_97} :catchall_7d

    .line 719
    if-eqz v0, :cond_9e

    .line 721
    :try_start_99
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 723
    goto :goto_9e

    .line 722
    :catch_9d
    move-exception v0

    .line 717
    :cond_9e
    :goto_9e
    return-void

    .line 719
    :goto_9f
    if-eqz v1, :cond_a6

    .line 721
    :try_start_a1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 723
    goto :goto_a6

    .line 722
    :catch_a5
    move-exception v1

    .line 725
    :cond_a6
    :goto_a6
    throw v0
.end method

.method public blacklist updateTrackingAssociationsLocked(IJ)V
    .registers 13

    .line 1520
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1521
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_e4

    .line 1522
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 1523
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActiveIfNecessary(IJ)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1524
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_e0

    .line 1526
    :cond_1f
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getAssociationState()Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v2

    .line 1527
    const-string v3, "ProcessStats"

    if-nez v2, :cond_43

    .line 1528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shouldn\'t be in the tracking list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    goto/16 :goto_e0

    .line 1531
    :cond_43
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v4

    .line 1532
    if-eqz v4, :cond_c0

    .line 1533
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v2

    rem-int/lit8 v2, v2, 0x10

    .line 1534
    iget v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-ne v5, v2, :cond_57

    .line 1535
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->startActive(J)V

    goto :goto_bf

    .line 1537
    :cond_57
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActive(J)V

    .line 1538
    iget v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-ge v5, v2, :cond_bf

    .line 1539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1540
    iget-wide v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNextInverseProcStateWarningUptime:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_6f

    .line 1541
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    goto :goto_bf

    .line 1545
    :cond_6f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tracking association "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " whose proc state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v1, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " is better than process "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " proc state "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skipped)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    .line 1551
    const-wide/16 v1, 0x2710

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNextInverseProcStateWarningUptime:J

    .line 1556
    :cond_bf
    :goto_bf
    goto :goto_e0

    .line 1558
    :cond_c0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tracking association without process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :goto_e0
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 1563
    :cond_e4
    return-void
.end method

.method blacklist writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 5

    .line 823
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 824
    if-eqz v0, :cond_12

    .line 825
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    return-void

    .line 828
    :cond_12
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    not-int v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 858
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 859
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;JI)V
    .registers 25

    .line 863
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const v4, 0x50535454

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    const/16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    new-instance v4, Landroid/util/ArrayMap;

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 874
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 875
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 876
    const/4 v7, 0x0

    :goto_40
    if-ge v7, v5, :cond_5e

    .line 877
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 878
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 879
    const/4 v10, 0x0

    :goto_4d
    if-ge v10, v9, :cond_5b

    .line 880
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v11, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 879
    add-int/lit8 v10, v10, 0x1

    goto :goto_4d

    .line 876
    :cond_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 883
    :cond_5e
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 884
    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 885
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 886
    const/4 v9, 0x0

    :goto_69
    if-ge v9, v8, :cond_ff

    .line 887
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 888
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 889
    const/4 v12, 0x0

    :goto_76
    if-ge v12, v11, :cond_f9

    .line 890
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/LongSparseArray;

    .line 891
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v14

    .line 892
    const/4 v15, 0x0

    :goto_83
    if-ge v15, v14, :cond_f1

    .line 893
    invoke-virtual {v13, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 894
    move/from16 v16, v9

    iget-object v9, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 895
    move-object/from16 v17, v10

    const/4 v10, 0x0

    :goto_98
    if-ge v10, v9, :cond_b4

    .line 896
    move/from16 v18, v9

    iget-object v9, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    .line 897
    move/from16 v19, v10

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v10

    if-eq v10, v9, :cond_af

    .line 898
    invoke-virtual {v9, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 895
    :cond_af
    add-int/lit8 v10, v19, 0x1

    move/from16 v9, v18

    goto :goto_98

    .line 901
    :cond_b4
    iget-object v9, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 902
    const/4 v10, 0x0

    :goto_bb
    if-ge v10, v9, :cond_cf

    .line 903
    move/from16 v18, v9

    iget-object v9, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->commitStateTime(J)V

    .line 902
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v18

    goto :goto_bb

    .line 905
    :cond_cf
    iget-object v9, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 906
    const/4 v10, 0x0

    :goto_d6
    if-ge v10, v9, :cond_ea

    .line 907
    move/from16 v18, v9

    iget-object v9, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/app/procstats/AssociationState;->commitStateTime(J)V

    .line 906
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v18

    goto :goto_d6

    .line 892
    :cond_ea
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v16

    move-object/from16 v10, v17

    goto :goto_83

    .line 889
    :cond_f1
    move/from16 v16, v9

    move-object/from16 v17, v10

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_76

    .line 886
    :cond_f9
    move/from16 v16, v9

    add-int/lit8 v9, v16, 0x1

    goto/16 :goto_69

    .line 913
    :cond_ff
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 915
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 916
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 917
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 918
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 919
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 920
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 921
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 922
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 923
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 924
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 925
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 926
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 927
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 928
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 929
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 930
    iget-boolean v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 935
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_177

    .line 936
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v10, v6, v9

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v12, v2, v12

    add-long/2addr v10, v12

    aput-wide v10, v6, v9

    .line 937
    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 939
    :cond_177
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v9, v9

    invoke-direct {v0, v1, v6, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 941
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 943
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 944
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v9, 0x0

    :goto_18e
    if-ge v9, v6, :cond_1a7

    .line 946
    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v10, v1, v2, v3}, Lcom/android/internal/app/procstats/UidState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 945
    add-int/lit8 v9, v9, 0x1

    goto :goto_18e

    .line 950
    :cond_1a7
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v6, 0x0

    :goto_1ab
    if-ge v6, v5, :cond_1ea

    .line 952
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 953
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 954
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 955
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    const/4 v11, 0x0

    :goto_1c4
    if-ge v11, v10, :cond_1e7

    .line 957
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 959
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 960
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    .line 961
    invoke-virtual {v12, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 956
    add-int/lit8 v11, v11, 0x1

    goto :goto_1c4

    .line 951
    :cond_1e7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1ab

    .line 964
    :cond_1ea
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    const/4 v4, 0x0

    :goto_1ee
    if-ge v4, v8, :cond_2dc

    .line 966
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 967
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 968
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 969
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    const/4 v9, 0x0

    :goto_207
    if-ge v9, v6, :cond_2d6

    .line 971
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    .line 973
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    .line 974
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v12, 0x0

    :goto_21e
    if-ge v12, v11, :cond_2ce

    .line 976
    invoke-virtual {v10, v12}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    .line 977
    invoke-virtual {v10, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 978
    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 979
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    const/4 v15, 0x0

    :goto_237
    if-ge v15, v14, :cond_26a

    .line 981
    move/from16 v16, v4

    iget-object v4, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 982
    iget-object v4, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 983
    move-object/from16 v17, v5

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    if-ne v5, v4, :cond_25b

    .line 985
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_263

    .line 988
    :cond_25b
    const/4 v5, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 980
    :goto_263
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move-object/from16 v5, v17

    goto :goto_237

    .line 992
    :cond_26a
    move/from16 v16, v4

    move-object/from16 v17, v5

    iget-object v4, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 993
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v5, 0x0

    :goto_278
    if-ge v5, v4, :cond_29a

    .line 995
    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 996
    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/ServiceState;

    .line 997
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 998
    invoke-virtual {v14, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 994
    add-int/lit8 v5, v5, 0x1

    goto :goto_278

    .line 1000
    :cond_29a
    iget-object v4, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1001
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v5, 0x0

    :goto_2a4
    if-ge v5, v4, :cond_2c6

    .line 1003
    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1004
    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/AssociationState;

    .line 1005
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/AssociationState;->writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;J)V

    .line 1002
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a4

    .line 975
    :cond_2c6
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_21e

    .line 970
    :cond_2ce
    move/from16 v16, v4

    move-object/from16 v17, v5

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_207

    .line 965
    :cond_2d6
    move/from16 v16, v4

    add-int/lit8 v4, v16, 0x1

    goto/16 :goto_1ee

    .line 1013
    :cond_2dc
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1014
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    const/4 v6, 0x0

    :goto_2e6
    if-ge v6, v2, :cond_31b

    .line 1016
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1018
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1019
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1015
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e6

    .line 1022
    :cond_31b
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1023
    return-void
.end method
