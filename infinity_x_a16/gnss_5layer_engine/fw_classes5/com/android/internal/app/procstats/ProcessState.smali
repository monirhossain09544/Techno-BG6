.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_PARCEL:Z = false

.field static final blacklist PROCESS_STATE_TO_STATE:[I

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private blacklist mActive:Z

.field private blacklist mAvgCachedKillPss:J

.field private blacklist mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field blacklist mCommonSources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurCombinedState:I

.field private blacklist mDead:Z

.field private final blacklist mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private blacklist mLastPssState:I

.field private blacklist mLastPssTime:J

.field private blacklist mMaxCachedKillPss:J

.field private blacklist mMinCachedKillPss:J

.field private blacklist mMultiPackage:Z

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mNumActiveServices:I

.field private blacklist mNumCachedKill:I

.field private blacklist mNumExcessiveCpu:I

.field private blacklist mNumStartedServices:I

.field private final blacklist mPackage:Ljava/lang/String;

.field private final blacklist mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private blacklist mStartTime:J

.field private blacklist mStateBeforeFrozen:I

.field private final blacklist mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private blacklist mTmpTotalTime:J

.field private blacklist mTotalRunningDuration:J

.field private final blacklist mTotalRunningPss:[J

.field private blacklist mTotalRunningStartTime:J

.field private final blacklist mUid:I

.field private final blacklist mVersion:J

.field public blacklist tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public blacklist tmpNumInUse:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    .line 107
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x6
        0x7
        0x8
        0xa
        0x1
        0xb
        0xc
        0xd
        0xe
        0xe
        0xe
        0xe
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V
    .registers 11

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 146
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    .line 148
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 198
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 199
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 201
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 202
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 203
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 204
    iget p2, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 205
    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 206
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-eq p2, v0, :cond_2a

    .line 207
    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 209
    :cond_2a
    new-instance p2, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p3, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p3, p3, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p3}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 210
    new-instance p2, Lcom/android/internal/app/procstats/PssTable;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 211
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 8

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 146
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    .line 148
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 181
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 182
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 183
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 184
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 185
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 186
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 187
    new-instance p2, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p3}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 188
    new-instance p2, Lcom/android/internal/app/procstats/PssTable;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 189
    return-void
.end method

.method private blacklist addCachedKill(IJJJ)V
    .registers 10

    .line 671
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_d

    .line 672
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 673
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 674
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 675
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_33

    .line 677
    :cond_d
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_15

    .line 678
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 680
    :cond_15
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    cmp-long p2, p6, p2

    if-lez p2, :cond_1d

    .line 681
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 683
    :cond_1d
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    long-to-double p2, p2

    iget p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    int-to-double p6, p6

    mul-double/2addr p2, p6

    long-to-double p4, p4

    add-double/2addr p2, p4

    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr p4, p1

    int-to-double p4, p4

    div-double/2addr p2, p4

    double-to-long p2, p2

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 685
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 687
    :goto_33
    return-void
.end method

.method private blacklist dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .registers 13

    .line 1122
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    invoke-direct {v0, p4, p5, p6}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 1124
    invoke-virtual {p0, v0, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 1125
    iget-wide p4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double p4, p4

    long-to-double p6, p9

    div-double/2addr p4, p6

    const-wide/high16 p6, 0x4059000000000000L    # 100.0

    mul-double/2addr p4, p6

    .line 1127
    const-wide p6, 0x3f747ae147ae147bL    # 0.005

    cmpl-double p4, p4, p6

    if-gez p4, :cond_21

    iget-wide p4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 p6, 0x0

    cmp-long p4, p4, p6

    if-eqz p4, :cond_3d

    .line 1128
    :cond_21
    if-eqz p2, :cond_26

    .line 1129
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1131
    :cond_26
    if-eqz p3, :cond_35

    .line 1132
    const-string p4, "  "

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    :cond_35
    invoke-virtual {v0, p1, p9, p10, p11}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 1137
    if-eqz p2, :cond_3d

    .line 1138
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1141
    :cond_3d
    return-void
.end method

.method public static blacklist dumpPssSamples(Ljava/io/PrintWriter;[JI)V
    .registers 9

    .line 1098
    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1099
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    add-int/lit8 v1, p2, 0x2

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1101
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    add-int/lit8 v1, p2, 0x3

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1103
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1104
    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1107
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1108
    add-int/lit8 v4, p2, 0x6

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1109
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    add-int/lit8 v1, p2, 0x7

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1111
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    add-int/lit8 v1, p2, 0x8

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1113
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    add-int/lit8 v0, p2, 0x9

    aget-wide v0, p1, v0

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1115
    const-string v0, " over "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    add-int/lit8 p2, p2, 0x0

    aget-wide p1, p1, p2

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    .line 1117
    return-void
.end method

.method public static blacklist dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V
    .registers 6

    .line 1424
    add-int/lit8 v0, p2, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1425
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1426
    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1427
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1428
    add-int/lit8 v1, p2, 0x2

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1429
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1430
    add-int/lit8 v1, p2, 0x3

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1431
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1432
    add-int/lit8 v1, p2, 0x4

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1433
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1434
    add-int/lit8 v1, p2, 0x5

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1435
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1436
    add-int/lit8 v1, p2, 0x6

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1437
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1438
    add-int/lit8 v1, p2, 0x7

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1439
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1440
    add-int/lit8 v1, p2, 0x8

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1441
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1442
    add-int/lit8 p2, p2, 0x9

    aget-wide p1, p1, p2

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    .line 1443
    return-void
.end method

.method private blacklist ensureNotDead()V
    .registers 3

    .line 325
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_5

    .line 326
    return-void

    .line 328
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessState dead: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " common.name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method private blacklist pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    .line 716
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 717
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 718
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v2, :cond_5e

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v1, :cond_5e

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulling dead proc: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " common.name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessStats"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .line 728
    :cond_5e
    iget-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_136

    .line 732
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 734
    const-string v3, " for multi-proc "

    const-string v4, "No existing package "

    const-string v5, "/"

    if-eqz v2, :cond_105

    .line 739
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 740
    if-eqz v2, :cond_c8

    .line 745
    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 746
    iget-object p2, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 747
    if-eqz v1, :cond_99

    .line 751
    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    goto/16 :goto_136

    .line 748
    :cond_99
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Didn\'t create per-package process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in pkg "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 741
    :cond_c8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 742
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " version "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_105
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 736
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_136
    :goto_136
    return-object v1
.end method

.method static blacklist writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 1541
    if-eqz p5, :cond_6

    .line 1543
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1544
    return-void

    .line 1546
    :cond_6
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_d

    .line 1548
    return-void

    .line 1550
    :cond_d
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_27

    .line 1551
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    .line 1552
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result p5

    const/16 v0, 0x3a

    if-ne p5, v0, :cond_27

    .line 1554
    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1555
    return-void

    .line 1559
    :cond_27
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1560
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 11

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    .line 276
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 277
    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_26

    .line 278
    iget v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    goto :goto_27

    .line 277
    :cond_26
    move-object v1, p0

    .line 281
    :goto_27
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_6c

    .line 282
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-nez v0, :cond_36

    .line 283
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 285
    :cond_36
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 286
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v0, :cond_6c

    .line 287
    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 288
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 289
    if-nez v4, :cond_5e

    .line 290
    new-instance v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, v3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    .line 291
    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_5e
    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->add(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 296
    :cond_6c
    return-void
.end method

.method public blacklist addPss(JJJZIJLandroid/util/ArrayMap;)V
    .registers 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 604
    const-wide/16 v2, 0x1

    packed-switch p8, :pswitch_data_fe

    goto :goto_5d

    .line 622
    :pswitch_d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 623
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    goto :goto_5d

    .line 618
    :pswitch_1d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 619
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 620
    goto :goto_5d

    .line 614
    :pswitch_2d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 615
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 616
    goto :goto_5d

    .line 610
    :pswitch_3d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 611
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 612
    goto :goto_5d

    .line 606
    :pswitch_4d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 607
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 608
    nop

    .line 626
    :goto_5d
    if-nez p7, :cond_73

    .line 627
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, v3, :cond_73

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_73

    .line 629
    return-void

    .line 632
    :cond_73
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 633
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 634
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_fd

    .line 636
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v5, 0x1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    move-wide/from16 v20, p5

    move-wide/from16 v22, p5

    move-wide/from16 v6, p1

    move-wide/from16 v12, p3

    move-wide/from16 v18, p5

    invoke-virtual/range {v3 .. v23}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 638
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-wide/from16 v29, p1

    move-wide/from16 v31, p1

    move-wide/from16 v35, p3

    move-wide/from16 v37, p3

    move-wide/from16 v41, p5

    move-wide/from16 v43, p5

    move-wide/from16 v27, p1

    move-wide/from16 v33, p3

    move-wide/from16 v39, p5

    move-object/from16 v24, v2

    invoke-static/range {v24 .. v44}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 642
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v2, :cond_c4

    .line 643
    return-void

    .line 646
    :cond_c4
    if-eqz v1, :cond_fd

    .line 647
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_cc
    if-ltz v2, :cond_fd

    .line 648
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    .line 649
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/16 v26, 0x1

    move-wide/from16 v29, p1

    move-wide/from16 v31, p1

    move-wide/from16 v35, p3

    move-wide/from16 v37, p3

    move-wide/from16 v41, p5

    move-wide/from16 v43, p5

    move-wide/from16 v27, p1

    move-wide/from16 v33, p3

    move-wide/from16 v39, p5

    move-object/from16 v24, v4

    move/from16 v25, v5

    invoke-virtual/range {v24 .. v44}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 651
    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/16 v25, 0x0

    move-object/from16 v24, v3

    invoke-static/range {v24 .. v44}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 647
    add-int/lit8 v2, v2, -0x1

    goto :goto_cc

    .line 656
    :cond_fd
    return-void

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_3d
        :pswitch_2d
        :pswitch_1d
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .registers 26

    .line 828
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v2}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 829
    new-instance v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 830
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v4}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 831
    nop

    .line 832
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_16
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v8

    const/16 v9, 0xa

    const/4 v10, 0x5

    const-wide/16 v12, 0x0

    if-ge v6, v8, :cond_51

    .line 833
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v8

    .line 834
    invoke-static {v8}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v8

    .line 835
    rem-int/lit8 v14, v8, 0x10

    .line 836
    move/from16 v16, v6

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v5

    .line 837
    cmp-long v12, v5, v12

    if-lez v12, :cond_4e

    .line 838
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v7

    .line 839
    nop

    .line 840
    if-gt v14, v10, :cond_44

    .line 841
    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_4d

    .line 842
    :cond_44
    if-gt v14, v9, :cond_4a

    .line 843
    invoke-virtual {v3, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_4d

    .line 845
    :cond_4a
    invoke-virtual {v4, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 832
    :goto_4d
    const/4 v7, 0x1

    :cond_4e
    add-int/lit8 v6, v16, 0x1

    goto :goto_16

    .line 849
    :cond_51
    if-nez v7, :cond_54

    .line 850
    return-void

    .line 852
    :cond_54
    nop

    .line 853
    nop

    .line 854
    nop

    .line 855
    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v7, 0x3

    cmp-long v5, v5, v7

    if-gez v5, :cond_71

    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v5, v12

    if-lez v5, :cond_71

    .line 856
    nop

    .line 857
    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v16, v7

    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    const/4 v5, 0x1

    goto :goto_74

    .line 855
    :cond_71
    move-wide/from16 v16, v7

    .line 859
    const/4 v5, 0x0

    :goto_74
    iget-wide v6, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v6, v6, v16

    if-gez v6, :cond_8c

    iget-wide v6, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v6, v6, v12

    if-lez v6, :cond_8c

    .line 860
    nop

    .line 861
    iget-wide v6, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v18, v12

    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v6, v7, v11, v12}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    const/4 v6, 0x1

    goto :goto_8f

    .line 859
    :cond_8c
    move-wide/from16 v18, v12

    .line 863
    const/4 v6, 0x0

    :goto_8f
    iget-wide v11, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v7, v11, v16

    if-gez v7, :cond_a5

    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v7, v11, v18

    if-lez v7, :cond_a5

    .line 864
    nop

    .line 865
    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v11, v12, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    const/4 v11, 0x1

    goto :goto_a6

    .line 867
    :cond_a5
    const/4 v11, 0x0

    :goto_a6
    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v7, v7, v16

    if-gez v7, :cond_bb

    if-nez v5, :cond_bb

    iget-wide v7, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v7, v18

    if-lez v5, :cond_bb

    .line 868
    iget-wide v7, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v12, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v7, v8, v12, v13}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 870
    :cond_bb
    iget-wide v7, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v7, v16

    if-gez v5, :cond_d0

    if-nez v11, :cond_d0

    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v7, v18

    if-lez v5, :cond_d0

    .line 871
    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v11, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v7, v8, v11, v12}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 873
    :cond_d0
    iget-wide v7, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v7, v16

    if-gez v5, :cond_e5

    if-nez v6, :cond_e5

    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v5, v18

    if-lez v5, :cond_e5

    .line 874
    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v7, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 876
    :cond_e5
    const/4 v5, 0x0

    :goto_e6
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v6

    if-ge v5, v6, :cond_16c

    .line 877
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6, v5}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v6

    .line 878
    invoke-static {v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v7

    .line 879
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v11

    .line 880
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v6, v7, :cond_107

    .line 881
    iget-wide v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v13, p2, v13

    add-long/2addr v11, v13

    .line 883
    :cond_107
    rem-int/lit8 v6, v7, 0x10

    .line 884
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aget-wide v13, v8, v6

    add-long/2addr v13, v11

    aput-wide v13, v8, v6

    .line 885
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v13

    .line 887
    cmp-long v8, v13, v18

    if-lez v8, :cond_11d

    .line 888
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v7

    goto :goto_12f

    .line 889
    :cond_11d
    if-gt v6, v10, :cond_124

    .line 890
    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 891
    iget-wide v7, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    goto :goto_12f

    .line 892
    :cond_124
    if-gt v6, v9, :cond_12b

    .line 893
    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 894
    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    goto :goto_12f

    .line 896
    :cond_12b
    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 897
    iget-wide v7, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 899
    :goto_12f
    iget-object v15, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    aget-wide v9, v15, v6

    long-to-double v9, v9

    iget-object v15, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v15, v15, v6

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    int-to-double v2, v15

    mul-double/2addr v9, v2

    long-to-double v2, v7

    long-to-double v7, v13

    mul-double/2addr v7, v2

    add-double/2addr v9, v7

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v7, v7, v6

    int-to-long v7, v7

    add-long/2addr v7, v13

    long-to-double v7, v7

    div-double/2addr v9, v7

    .line 903
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    double-to-long v8, v9

    aput-wide v8, v7, v6

    .line 904
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v8, v7, v6

    int-to-long v8, v8

    add-long/2addr v8, v13

    long-to-int v8, v8

    aput v8, v7, v6

    .line 905
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v8, v7, v6

    long-to-double v10, v11

    mul-double/2addr v2, v10

    add-double/2addr v8, v2

    aput-wide v8, v7, v6

    .line 876
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    const/16 v9, 0xa

    const/4 v10, 0x5

    goto/16 :goto_e6

    .line 907
    :cond_16c
    return-void
.end method

.method public blacklist clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .registers 12

    .line 214
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 215
    iget-object p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p2, v1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {p1, p2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 216
    iget-object p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object p2, v1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v2, 0xa

    invoke-virtual {p1, p2, v2}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    .line 217
    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 p2, 0x0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, p2, v3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 219
    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 220
    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 221
    iget-wide p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 222
    iget-wide p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 223
    iget-wide p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 224
    iget-boolean p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iput-boolean p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 225
    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 226
    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 227
    return-object v0
.end method

.method public blacklist commitStateTime(J)V
    .registers 7

    .line 521
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 522
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v0, p1, v0

    .line 523
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_16

    .line 524
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 526
    :cond_16
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 527
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 529
    :cond_21
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 530
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3f

    .line 531
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2f
    if-ltz v0, :cond_3f

    .line 532
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 533
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->commitStateTime(J)V

    .line 531
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 536
    :cond_3f
    return-void
.end method

.method public blacklist computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .registers 40

    .line 1181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 1182
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 1185
    const/4 v5, 0x0

    :goto_1d
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    array-length v6, v6

    if-ge v5, v6, :cond_151

    .line 1186
    const/4 v6, 0x0

    :goto_23
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    array-length v7, v7

    if-ge v6, v7, :cond_14a

    .line 1187
    const/4 v7, 0x0

    :goto_29
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    array-length v8, v8

    if-ge v7, v8, :cond_141

    .line 1188
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    aget v8, v8, v5

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    aget v9, v9, v6

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x10

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    .line 1190
    iget-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v11, p2

    invoke-virtual {v0, v8, v11, v12}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v13

    add-long/2addr v9, v13

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 1191
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v9

    .line 1192
    cmp-long v13, v9, v2

    if-lez v13, :cond_131

    .line 1193
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v13

    .line 1194
    move-wide v15, v2

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v2

    .line 1195
    move/from16 v17, v5

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v4

    .line 1196
    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v6

    .line 1197
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v11

    .line 1198
    move-wide/from16 v20, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v9

    .line 1199
    move-wide/from16 v22, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v9

    .line 1200
    move-wide/from16 v24, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v9

    .line 1201
    move-wide/from16 v26, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v8

    .line 1202
    move-wide/from16 v28, v8

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    cmp-long v8, v8, v15

    if-nez v8, :cond_aa

    .line 1203
    iput-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1204
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1205
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1206
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1207
    iput-wide v11, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1208
    move-wide/from16 v8, v22

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 1209
    move-wide/from16 v2, v24

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    .line 1210
    move-wide/from16 v2, v26

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1211
    move-wide/from16 v2, v28

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    move-wide/from16 v13, v20

    goto/16 :goto_12b

    .line 1213
    :cond_aa
    move-wide/from16 v8, v22

    move-wide/from16 v30, v24

    move-wide/from16 v32, v26

    move-wide/from16 v34, v28

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    cmp-long v8, v13, v8

    if-gez v8, :cond_ba

    .line 1214
    iput-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1216
    :cond_ba
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    long-to-double v8, v8

    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v13, v13

    mul-double/2addr v8, v13

    long-to-double v2, v2

    move-wide/from16 v13, v20

    move-wide/from16 v20, v2

    long-to-double v2, v13

    mul-double v20, v20, v2

    add-double v8, v8, v20

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v13

    long-to-double v2, v2

    div-double/2addr v8, v2

    double-to-long v2, v8

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1218
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_dd

    .line 1219
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1221
    :cond_dd
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    cmp-long v2, v6, v2

    if-gez v2, :cond_e5

    .line 1222
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1224
    :cond_e5
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    long-to-double v2, v2

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    long-to-double v4, v11

    mul-double v4, v4, v20

    add-double/2addr v2, v4

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v4, v13

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1226
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    cmp-long v2, v22, v2

    if-lez v2, :cond_102

    .line 1227
    move-wide/from16 v8, v22

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 1229
    :cond_102
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    move-wide/from16 v4, v30

    cmp-long v2, v4, v2

    if-gez v2, :cond_10c

    .line 1230
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    .line 1232
    :cond_10c
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    long-to-double v2, v2

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    move-wide/from16 v4, v32

    long-to-double v4, v4

    mul-double v4, v4, v20

    add-double/2addr v2, v4

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v4, v13

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1234
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    move-wide/from16 v4, v34

    cmp-long v2, v4, v2

    if-lez v2, :cond_12b

    .line 1235
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    .line 1238
    :cond_12b
    :goto_12b
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v13

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    goto :goto_138

    .line 1192
    :cond_131
    move-wide v15, v2

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    .line 1187
    :goto_138
    add-int/lit8 v7, v19, 0x1

    move-wide v2, v15

    move/from16 v5, v17

    move/from16 v6, v18

    goto/16 :goto_29

    .line 1186
    :cond_141
    move-wide v15, v2

    move/from16 v17, v5

    move/from16 v18, v6

    add-int/lit8 v6, v18, 0x1

    goto/16 :goto_23

    .line 1185
    :cond_14a
    move-wide v15, v2

    move/from16 v17, v5

    add-int/lit8 v5, v17, 0x1

    goto/16 :goto_1d

    .line 1243
    :cond_151
    return-void
.end method

.method public blacklist computeProcessTimeLocked([I[I[IJ)J
    .registers 14

    .line 911
    nop

    .line 912
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    array-length v4, p1

    if-ge v3, v4, :cond_28

    .line 913
    move v4, v2

    :goto_9
    array-length v5, p2

    if-ge v4, v5, :cond_25

    .line 914
    move v5, v2

    :goto_d
    array-length v6, p3

    if-ge v5, v6, :cond_22

    .line 915
    aget v6, p1, v3

    aget v7, p2, v4

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x10

    aget v7, p3, v5

    add-int/2addr v6, v7

    .line 917
    invoke-virtual {p0, v6, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 914
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 913
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 912
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 921
    :cond_28
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    .line 922
    return-wide v0
.end method

.method public blacklist decActiveServices(Ljava/lang/String;)V
    .registers 4

    .line 556
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_9

    .line 557
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 559
    :cond_9
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 560
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_52

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proc active services underrun: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProcessStats"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 565
    :cond_52
    return-void
.end method

.method public blacklist decStartedServices(IJLjava/lang/String;)V
    .registers 6

    .line 588
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_9

    .line 589
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 591
    :cond_9
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 592
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-nez p1, :cond_20

    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    rem-int/lit8 p1, p1, 0x10

    const/16 p4, 0x9

    if-ne p1, p4, :cond_20

    .line 593
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    goto :goto_59

    .line 594
    :cond_20
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gez p1, :cond_59

    .line 595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Proc started services underrun: pkg="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " name="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProcessStats"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 599
    :cond_59
    :goto_59
    return-void
.end method

.method public blacklist dumpAggregatedProtoForStatsd(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/lang/String;",
            "IJ",
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

    .line 1639
    move-object/from16 v6, p0

    new-instance v7, Landroid/util/SparseLongArray;

    invoke-direct {v7}, Landroid/util/SparseLongArray;-><init>()V

    .line 1640
    nop

    .line 1641
    const/4 v8, 0x0

    move v0, v8

    move v1, v0

    :goto_b
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x1

    if-ge v0, v2, :cond_4f

    .line 1642
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1643
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v5

    .line 1644
    invoke-static {v5}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v9

    .line 1645
    rem-int/lit8 v10, v5, 0x10

    if-ne v10, v3, :cond_29

    .line 1647
    goto :goto_4c

    .line 1650
    :cond_29
    iget-object v3, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v2

    .line 1651
    iget v10, v6, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v10, v5, :cond_3a

    .line 1652
    nop

    .line 1653
    iget-wide v10, v6, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v10, p6, v10

    add-long/2addr v2, v10

    move v1, v4

    .line 1655
    :cond_3a
    invoke-virtual {v7, v9}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v4

    .line 1656
    if-ltz v4, :cond_49

    .line 1657
    invoke-virtual {v7, v4}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v7, v9, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_4c

    .line 1659
    :cond_49
    invoke-virtual {v7, v9, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1641
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1662
    :cond_4f
    if-nez v1, :cond_7c

    iget v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7c

    iget v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    rem-int/lit8 v0, v0, 0x10

    if-eq v0, v3, :cond_7c

    .line 1665
    iget v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    invoke-static {v0}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v0

    .line 1666
    invoke-virtual {v7, v0}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    .line 1667
    if-ltz v1, :cond_75

    .line 1668
    iget-wide v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    .line 1669
    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v9

    add-long/2addr v2, v9

    .line 1668
    invoke-virtual {v7, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_7c

    .line 1671
    :cond_75
    iget-wide v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v1, p6, v1

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1676
    :cond_7c
    :goto_7c
    new-instance v9, Landroid/util/SparseLongArray;

    invoke-direct {v9}, Landroid/util/SparseLongArray;-><init>()V

    .line 1677
    new-instance v10, Landroid/util/SparseLongArray;

    invoke-direct {v10}, Landroid/util/SparseLongArray;-><init>()V

    .line 1679
    move v0, v8

    :goto_87
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    if-ge v0, v1, :cond_eb

    .line 1680
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v1

    .line 1681
    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v2

    .line 1682
    invoke-static {v2}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v3

    .line 1683
    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_a4

    .line 1685
    goto :goto_e8

    .line 1688
    :cond_a4
    iget-object v5, v6, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v5, v1}, Lcom/android/internal/app/procstats/PssTable;->getRssMeanAndMax(I)[J

    move-result-object v1

    .line 1691
    aget-wide v11, v1, v8

    iget-object v5, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v2, v2

    invoke-virtual {v5, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v13

    mul-long/2addr v11, v13

    .line 1692
    invoke-virtual {v9, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_c4

    .line 1693
    nop

    .line 1694
    invoke-virtual {v9, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 1693
    invoke-virtual {v9, v3, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_c7

    .line 1696
    :cond_c4
    invoke-virtual {v9, v3, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1700
    :goto_c7
    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_dd

    .line 1701
    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    aget-wide v13, v1, v4

    cmp-long v2, v11, v13

    if-gez v2, :cond_dd

    .line 1702
    aget-wide v1, v1, v4

    invoke-virtual {v10, v3, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_e8

    .line 1703
    :cond_dd
    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_e8

    .line 1704
    aget-wide v1, v1, v4

    invoke-virtual {v10, v3, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1679
    :cond_e8
    :goto_e8
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 1709
    :cond_eb
    move v0, v8

    :goto_ec
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_118

    .line 1710
    invoke-virtual {v7, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 1711
    invoke-virtual {v9, v1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_fd

    .line 1713
    goto :goto_115

    .line 1715
    :cond_fd
    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .line 1716
    nop

    .line 1717
    const-wide/16 v11, 0x0

    cmp-long v5, v2, v11

    if-lez v5, :cond_10e

    invoke-virtual {v9, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    div-long/2addr v11, v2

    goto :goto_112

    .line 1718
    :cond_10e
    invoke-virtual {v9, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    .line 1716
    :goto_112
    invoke-virtual {v9, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1709
    :goto_115
    add-int/lit8 v0, v0, 0x1

    goto :goto_ec

    .line 1722
    :cond_118
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1723
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget-boolean v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_135

    iget v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 1724
    move-object/from16 v13, p9

    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-le v1, v4, :cond_133

    goto :goto_137

    :cond_133
    move v5, v8

    goto :goto_138

    .line 1723
    :cond_135
    move-object/from16 v13, p9

    .line 1724
    :goto_137
    move v5, v4

    .line 1723
    :goto_138
    const-wide v1, 0x10900000001L

    move-object/from16 v3, p4

    move-object v4, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 1725
    const-wide v1, 0x10500000002L

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1727
    nop

    :goto_150
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_1b6

    .line 1728
    const-wide v1, 0x20b00000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 1730
    invoke-virtual {v7, v8}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    .line 1732
    const-wide v1, 0x10e00000001L

    const-wide v3, 0x10e0000000aL

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAggregatedProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 1736
    const-wide v1, 0x10300000004L

    invoke-virtual {v7, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1738
    nop

    .line 1742
    invoke-virtual {v9, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1743
    invoke-virtual {v10, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1738
    move v4, v8

    move-object v3, v9

    const-wide v8, 0x10b00000008L

    move-object v5, v10

    move-wide/from16 v16, v11

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide/from16 v18, v14

    const-wide/16 v14, 0x0

    move-object/from16 p2, v7

    move-wide/from16 p3, v16

    move-object v7, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move-wide/from16 v0, v18

    invoke-static/range {v7 .. v17}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJII)V

    .line 1745
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1727
    add-int/lit8 v8, v4, 0x1

    move-wide/from16 v11, p3

    move-object/from16 v13, p9

    move-object v9, v3

    move-object v10, v5

    move-object v0, v7

    move-object/from16 v7, p2

    goto :goto_150

    .line 1748
    :cond_1b6
    move-object v7, v0

    move-wide/from16 p3, v11

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const-wide v2, 0x20b00000007L

    move-wide/from16 v8, p3

    move-wide/from16 v4, p6

    move-object v1, v7

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredAssociationStatesProtoForProc(Landroid/util/proto/ProtoOutputStream;JJLcom/android/internal/app/procstats/ProcessState;Landroid/util/SparseArray;)V

    .line 1750
    move-object v0, v1

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1751
    return-void
.end method

.method public blacklist dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .registers 7

    .line 1411
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    .line 1412
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_30

    .line 1413
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 1414
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1415
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1416
    invoke-static {p1, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1417
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1418
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v3

    .line 1419
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    .line 1418
    invoke-static {p1, v3, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1412
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1421
    :cond_30
    return-void
.end method

.method public blacklist dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .registers 10

    .line 1394
    nop

    .line 1395
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 1396
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1397
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1398
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    .line 1399
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, v3, :cond_26

    .line 1400
    nop

    .line 1401
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v1, p2, v1

    add-long/2addr v4, v1

    const/4 v1, 0x1

    .line 1403
    :cond_26
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1395
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1405
    :cond_2c
    if-nez v1, :cond_3b

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    .line 1406
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long/2addr p2, v1

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1408
    :cond_3b
    return-void
.end method

.method public blacklist dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .registers 34

    .line 1248
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    if-eqz p2, :cond_c

    array-length v5, v1

    goto :goto_d

    :cond_c
    const/4 v5, 0x1

    .line 1249
    :goto_d
    if-eqz p4, :cond_11

    array-length v6, v2

    goto :goto_12

    :cond_11
    const/4 v6, 0x1

    .line 1250
    :goto_12
    if-eqz p6, :cond_16

    array-length v7, v3

    goto :goto_17

    :cond_16
    const/4 v7, 0x1

    .line 1251
    :goto_17
    const/4 v9, 0x0

    :goto_18
    if-ge v9, v5, :cond_f4

    .line 1252
    const/4 v10, 0x0

    :goto_1b
    if-ge v10, v6, :cond_e2

    .line 1253
    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v7, :cond_d0

    .line 1254
    if-eqz p2, :cond_25

    aget v12, v1, v9

    goto :goto_26

    :cond_25
    const/4 v12, 0x0

    .line 1255
    :goto_26
    if-eqz p4, :cond_2b

    aget v13, v2, v10

    goto :goto_2c

    :cond_2b
    const/4 v13, 0x0

    .line 1256
    :goto_2c
    if-eqz p6, :cond_31

    aget v14, v3, v11

    goto :goto_32

    :cond_31
    const/4 v14, 0x0

    .line 1257
    :goto_32
    if-eqz p2, :cond_36

    const/4 v15, 0x1

    goto :goto_37

    :cond_36
    array-length v15, v1

    .line 1258
    :goto_37
    if-eqz p4, :cond_3b

    const/4 v4, 0x1

    goto :goto_3c

    :cond_3b
    array-length v4, v2

    .line 1259
    :goto_3c
    if-eqz p6, :cond_40

    const/4 v8, 0x1

    goto :goto_41

    :cond_40
    array-length v8, v3

    .line 1260
    :goto_41
    nop

    .line 1261
    const-wide/16 v16, 0x0

    const/4 v3, 0x0

    :goto_45
    move-wide/from16 v1, v16

    if-ge v3, v15, :cond_b6

    .line 1262
    move-wide/from16 v16, v1

    const/4 v1, 0x0

    :goto_4c
    if-ge v1, v4, :cond_a4

    .line 1263
    const/4 v2, 0x0

    :goto_4f
    if-ge v2, v8, :cond_8f

    .line 1264
    if-eqz p2, :cond_56

    const/16 v18, 0x0

    goto :goto_58

    :cond_56
    aget v18, p3, v3

    .line 1265
    :goto_58
    if-eqz p4, :cond_5d

    const/16 v19, 0x0

    goto :goto_5f

    :cond_5d
    aget v19, p5, v1

    .line 1266
    :goto_5f
    if-eqz p6, :cond_64

    const/16 v20, 0x0

    goto :goto_66

    :cond_64
    aget v20, p7, v2

    .line 1267
    :goto_66
    add-int v18, v12, v18

    add-int v18, v18, v13

    add-int v18, v18, v19

    mul-int/lit8 v18, v18, 0x10

    add-int v18, v18, v14

    move/from16 v19, v1

    add-int v1, v18, v20

    .line 1269
    move/from16 v18, v3

    move/from16 v21, v4

    move/from16 v20, v5

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v22

    add-long v16, v16, v22

    .line 1263
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v18

    move/from16 v1, v19

    move/from16 v5, v20

    move/from16 v4, v21

    goto :goto_4f

    .line 1262
    :cond_8f
    move/from16 v19, v1

    move/from16 v18, v3

    move/from16 v21, v4

    move/from16 v20, v5

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    add-int/lit8 v1, v19, 0x1

    move/from16 v3, v18

    move/from16 v5, v20

    move/from16 v4, v21

    goto :goto_4c

    .line 1261
    :cond_a4
    move/from16 v18, v3

    move/from16 v21, v4

    move/from16 v20, v5

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    add-int/lit8 v1, v18, 0x1

    move v3, v1

    move/from16 v5, v20

    move/from16 v4, v21

    goto :goto_45

    .line 1273
    :cond_b6
    move-object/from16 v3, p0

    move/from16 v20, v5

    move-wide/from16 v4, p8

    const-string v8, "\t"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1253
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v5, v20

    goto/16 :goto_1e

    .line 1252
    :cond_d0
    move-object/from16 v3, p0

    move/from16 v20, v5

    move-wide/from16 v4, p8

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v5, v20

    goto/16 :goto_1b

    .line 1251
    :cond_e2
    move-object/from16 v3, p0

    move/from16 v20, v5

    move-wide/from16 v4, p8

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v5, v20

    goto/16 :goto_18

    .line 1278
    :cond_f4
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V
    .registers 29

    .line 1459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 1460
    const-wide v2, 0x10900000001L

    move-object/from16 v4, p4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1461
    const-wide v2, 0x10500000002L

    move/from16 v4, p5

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1462
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v4, :cond_24

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v4, :cond_4d

    .line 1463
    :cond_24
    const-wide v4, 0x10b00000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 1464
    const-wide v4, 0x10500000001L

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1465
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1466
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    const-wide v2, 0x10b00000003L

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 1468
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1472
    :cond_4d
    new-instance v9, Landroid/util/SparseLongArray;

    invoke-direct {v9}, Landroid/util/SparseLongArray;-><init>()V

    .line 1473
    nop

    .line 1474
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_55
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v4

    if-ge v2, v4, :cond_7e

    .line 1475
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v4

    .line 1476
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v5

    .line 1477
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6, v4}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v6

    .line 1478
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v4, v5, :cond_78

    .line 1479
    nop

    .line 1480
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v3, p6, v3

    add-long/2addr v6, v3

    const/4 v3, 0x1

    .line 1482
    :cond_78
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1474
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 1484
    :cond_7e
    if-nez v3, :cond_8e

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8e

    .line 1485
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v3, p6, v3

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1488
    :cond_8e
    const/4 v15, 0x0

    :goto_8f
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v2

    const-wide v3, 0x20b00000005L

    const-wide v5, 0x10300000004L

    if-ge v15, v2, :cond_f4

    .line 1489
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2, v15}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 1490
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v8

    .line 1491
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_b6

    .line 1493
    move-wide/from16 v16, v12

    const/16 p2, 0x0

    goto :goto_ef

    .line 1495
    :cond_b6
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1496
    move-wide/from16 v16, v5

    move-wide v6, v3

    const-wide v4, 0x10e00000002L

    move-wide/from16 v18, v6

    const-wide v6, 0x10e00000003L

    move/from16 v20, v2

    const-wide v2, 0x10e00000001L

    move-wide/from16 v10, v16

    move/from16 v14, v20

    const/16 p2, 0x0

    move-wide/from16 v16, v12

    move-wide/from16 v12, v18

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1502
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .line 1503
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1504
    invoke-virtual {v1, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1506
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2, v1, v14}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProtoForKey(Landroid/util/proto/ProtoOutputStream;I)V

    .line 1508
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1488
    :goto_ef
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v12, v16

    goto :goto_8f

    .line 1511
    :cond_f4
    move-wide v10, v5

    move-wide/from16 v16, v12

    const/16 p2, 0x0

    move/from16 v12, p2

    :goto_fb
    invoke-virtual {v9}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_12f

    .line 1512
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1513
    nop

    .line 1517
    invoke-virtual {v9, v12}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v8

    .line 1513
    move-wide v4, v3

    const-wide v2, 0x10e00000001L

    move-wide v6, v4

    const-wide v4, 0x10e00000002L

    move-wide/from16 v18, v6

    const-wide v6, 0x10e00000003L

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1518
    invoke-virtual {v9, v12}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1519
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1511
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v18

    goto :goto_fb

    .line 1522
    :cond_12f
    move-wide/from16 v2, p6

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v2

    .line 1523
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_159

    .line 1524
    const-wide v6, 0x10b00000006L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1525
    invoke-virtual {v1, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1526
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v2, v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_156

    .line 1527
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    move/from16 v2, p2

    invoke-static {v1, v0, v2}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V

    .line 1529
    :cond_156
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1532
    :cond_159
    move-wide/from16 v2, v16

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1533
    return-void
.end method

.method blacklist dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 23

    .line 1145
    move-object/from16 v0, p2

    if-eqz p8, :cond_c7

    .line 1146
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "myID="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1147
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1148
    const-string v1, " mCommonProcess="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1150
    const-string v1, " mPackage="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_44

    .line 1152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mMultiPackage="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1154
    :cond_44
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v1, :cond_6f

    .line 1155
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Common Proc: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1157
    const-string v1, " pkg="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    :cond_6f
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v1, :cond_c7

    .line 1160
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Aggregated Association Sources:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 1163
    move-wide/from16 v9, p4

    move-wide/from16 v7, p6

    invoke-static {v7, v8, v9, v10, v1}, Lcom/android/internal/app/procstats/AssociationState;->createSortedAssociations(JJLandroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1161
    const/4 v12, 0x1

    move-object v2, p1

    move-object/from16 v11, p3

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Lcom/android/internal/app/procstats/AssociationState;->dumpSources(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V

    .line 1167
    :cond_c7
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-eqz v1, :cond_d8

    .line 1168
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mActive="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1170
    :cond_d8
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v1, :cond_e9

    .line 1171
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDead="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1173
    :cond_e9
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-nez v1, :cond_f1

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-eqz v1, :cond_108

    .line 1174
    :cond_f1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1175
    const-string v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1178
    :cond_108
    return-void
.end method

.method public blacklist dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .registers 16

    .line 1282
    const-string v0, "pkgproc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1284
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1286
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1288
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1289
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p0, p1, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1291
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1292
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_52

    .line 1293
    const-string v1, "pkgpss,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1297
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1300
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1302
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1304
    :cond_52
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_90

    .line 1305
    const-string v1, "pkgrun,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1309
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1311
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1312
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide p7

    invoke-virtual {p1, p7, p8}, Ljava/io/PrintWriter;->print(J)V

    .line 1315
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1316
    iget-object p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, p7, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1317
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1319
    :cond_90
    iget p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz p7, :cond_98

    iget p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p7, :cond_eb

    .line 1320
    :cond_98
    const-string p7, "pkgkills,"

    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1324
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1326
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1332
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1333
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1334
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1336
    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1337
    iget-wide p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->print(J)V

    .line 1338
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1340
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1342
    :cond_eb
    return-void
.end method

.method public blacklist dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .registers 13

    .line 1345
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const-string v1, ","

    if-lez v0, :cond_1e

    .line 1346
    const-string v0, "proc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1350
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1351
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1353
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_3a

    .line 1354
    const-string v0, "pss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1359
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1361
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_68

    .line 1362
    const-string v0, "procrun,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1366
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide p4

    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1368
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1369
    iget-object p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, p4, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1370
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1372
    :cond_68
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz p4, :cond_70

    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p4, :cond_b3

    .line 1373
    :cond_70
    const-string p4, "kills,"

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1377
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1378
    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1380
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1381
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1383
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1384
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1385
    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1386
    iget-wide p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->print(J)V

    .line 1387
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1389
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1391
    :cond_b3
    return-void
.end method

.method public blacklist dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .registers 30

    .line 979
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 980
    nop

    .line 981
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    :goto_f
    array-length v13, v2

    const-string v15, ": "

    const-wide/16 v16, 0x0

    if-ge v9, v13, :cond_a0

    .line 982
    nop

    .line 983
    const/4 v6, 0x0

    const/4 v13, -0x1

    :goto_19
    array-length v8, v3

    if-ge v6, v8, :cond_98

    .line 984
    const/4 v8, 0x0

    :goto_1d
    array-length v7, v4

    if-ge v8, v7, :cond_8f

    .line 985
    aget v7, v2, v9

    .line 986
    aget v14, v3, v6

    .line 987
    add-int v18, v7, v14

    mul-int/lit8 v18, v18, 0x10

    aget v19, v4, v8

    add-int v5, v18, v19

    .line 988
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move/from16 v18, v6

    int-to-byte v6, v5

    invoke-virtual {v4, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v20

    .line 989
    nop

    .line 990
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v4, v5, :cond_46

    .line 991
    nop

    .line 992
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v4, p6, v4

    add-long v20, v20, v4

    const-string v4, " (running)"

    move-wide/from16 v5, v20

    goto :goto_4a

    .line 990
    :cond_46
    const-string v4, ""

    move-wide/from16 v5, v20

    .line 994
    :goto_4a
    cmp-long v19, v5, v16

    if-eqz v19, :cond_84

    .line 995
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    array-length v0, v2

    move/from16 v19, v8

    const/4 v8, 0x1

    if-le v0, v8, :cond_60

    .line 997
    if-eq v12, v7, :cond_5b

    .line 998
    move v0, v7

    goto :goto_5c

    :cond_5b
    const/4 v0, -0x1

    .line 997
    :goto_5c
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 999
    move v12, v7

    .line 1001
    :cond_60
    array-length v0, v3

    const/4 v8, 0x1

    if-le v0, v8, :cond_70

    .line 1002
    nop

    .line 1003
    if-eq v13, v14, :cond_69

    move v0, v14

    goto :goto_6a

    :cond_69
    const/4 v0, -0x1

    .line 1002
    :goto_6a
    const/16 v7, 0x2f

    invoke-static {v1, v0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1004
    move v13, v14

    .line 1006
    :cond_70
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v7, p5, v19

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1007
    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    add-long/2addr v10, v5

    goto :goto_86

    .line 994
    :cond_84
    move/from16 v19, v8

    .line 984
    :goto_86
    add-int/lit8 v8, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    move/from16 v6, v18

    goto :goto_1d

    .line 983
    :cond_8f
    move/from16 v18, v6

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    goto :goto_19

    .line 981
    :cond_98
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    goto/16 :goto_f

    .line 1013
    :cond_a0
    cmp-long v0, v10, v16

    if-eqz v0, :cond_c7

    .line 1014
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    array-length v0, v2

    const/4 v8, 0x1

    if-le v0, v8, :cond_b0

    .line 1016
    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_b1

    .line 1015
    :cond_b0
    const/4 v0, -0x1

    .line 1018
    :goto_b1
    array-length v2, v3

    if-le v2, v8, :cond_b9

    .line 1019
    const/16 v7, 0x2f

    invoke-static {v1, v0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1021
    :cond_b9
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1024
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1026
    :cond_c7
    return-void
.end method

.method public blacklist dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .registers 27

    .line 1030
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1031
    nop

    .line 1032
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    :goto_e
    array-length v10, v2

    const-string v11, ": "

    if-ge v7, v10, :cond_ac

    .line 1033
    nop

    .line 1034
    const/4 v10, 0x0

    const/4 v12, -0x1

    :goto_16
    array-length v13, v3

    if-ge v10, v13, :cond_a2

    .line 1035
    const/4 v13, 0x0

    :goto_1a
    array-length v14, v4

    if-ge v13, v14, :cond_98

    .line 1036
    aget v14, v2, v7

    .line 1037
    aget v15, v3, v10

    .line 1038
    add-int v16, v14, v15

    mul-int/lit8 v16, v16, 0x10

    aget v17, v4, v13

    const/16 v18, 0x0

    add-int v5, v16, v17

    .line 1039
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v5, v5

    invoke-virtual {v6, v5}, Lcom/android/internal/app/procstats/PssTable;->getKey(B)I

    move-result v5

    .line 1040
    const/4 v6, -0x1

    if-ne v5, v6, :cond_36

    .line 1041
    goto :goto_91

    .line 1043
    :cond_36
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v6, v5}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v6

    .line 1044
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    .line 1045
    if-nez v8, :cond_59

    .line 1046
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    const-string v8, "PSS/USS ("

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1049
    const-string v8, " entries):"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    const/4 v8, 0x1

    .line 1052
    :cond_59
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    array-length v4, v2

    const/4 v2, 0x1

    if-le v4, v2, :cond_6f

    .line 1055
    nop

    .line 1056
    if-eq v9, v14, :cond_6a

    move v2, v14

    goto :goto_6b

    :cond_6a
    const/4 v2, -0x1

    .line 1055
    :goto_6b
    invoke-static {v1, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 1057
    move v9, v14

    .line 1059
    :cond_6f
    array-length v2, v3

    const/4 v4, 0x1

    if-le v2, v4, :cond_7f

    .line 1060
    nop

    .line 1061
    if-eq v12, v15, :cond_78

    move v2, v15

    goto :goto_79

    :cond_78
    const/4 v2, -0x1

    .line 1060
    :goto_79
    const/16 v4, 0x2f

    invoke-static {v1, v2, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1062
    move v12, v15

    .line 1064
    :cond_7f
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v4, p5, v13

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    invoke-static {v1, v6, v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamples(Ljava/io/PrintWriter;[JI)V

    .line 1066
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1035
    :goto_91
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto :goto_1a

    .line 1034
    :cond_98
    const/16 v18, 0x0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_16

    .line 1032
    :cond_a2
    const/16 v18, 0x0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_e

    .line 1070
    :cond_ac
    const/16 v18, 0x0

    move-wide/from16 v2, p6

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v2

    .line 1071
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_e5

    .line 1072
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    const-string v6, "Cur time "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1075
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d0

    .line 1076
    const-string v2, " (running)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    :cond_d0
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v2, v2, v18

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e2

    .line 1079
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    move/from16 v3, v18

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamples(Ljava/io/PrintWriter;[JI)V

    .line 1082
    :cond_e2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1084
    :cond_e5
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-eqz v2, :cond_fb

    .line 1085
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed for excessive CPU use: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1086
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    :cond_fb
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-eqz v2, :cond_130

    .line 1089
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed from cached state: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times from pss "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    mul-long/2addr v6, v4

    invoke-static {v1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    mul-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1095
    :cond_130
    return-void
.end method

.method public blacklist dumpStateDurationToStatsd(ILcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/StatsEventOutput;)V
    .registers 40

    .line 1565
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1566
    nop

    .line 1567
    nop

    .line 1568
    nop

    .line 1569
    nop

    .line 1570
    nop

    .line 1571
    nop

    .line 1572
    nop

    .line 1573
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    move-wide v9, v7

    move-wide v11, v9

    move-wide v13, v11

    move-wide/from16 v17, v13

    move-wide/from16 v19, v17

    move v15, v5

    move-wide/from16 v5, v19

    :goto_1f
    if-ge v15, v2, :cond_58

    .line 1574
    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v15}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1575
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v21

    .line 1576
    rem-int/lit8 v21, v21, 0x10

    .line 1577
    move/from16 v22, v15

    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v15, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v23

    .line 1578
    packed-switch v21, :pswitch_data_de

    goto :goto_53

    .line 1609
    :pswitch_3b
    add-long v17, v17, v23

    goto :goto_53

    .line 1606
    :pswitch_3e
    add-long v19, v19, v23

    .line 1607
    goto :goto_53

    .line 1593
    :pswitch_41
    add-long v11, v11, v23

    .line 1594
    goto :goto_53

    .line 1583
    :pswitch_44
    add-long v9, v9, v23

    .line 1584
    goto :goto_53

    .line 1589
    :pswitch_47
    add-long v5, v5, v23

    .line 1590
    goto :goto_53

    .line 1586
    :pswitch_4a
    add-long v7, v7, v23

    .line 1587
    goto :goto_53

    .line 1580
    :pswitch_4d
    add-long v3, v3, v23

    .line 1581
    goto :goto_53

    .line 1603
    :pswitch_50
    add-long v13, v13, v23

    .line 1604
    nop

    .line 1573
    :goto_53
    add-int/lit8 v15, v22, 0x1

    move/from16 v2, v16

    goto :goto_1f

    .line 1613
    :cond_58
    nop

    .line 1615
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v23

    .line 1616
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v24

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v13

    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 1617
    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v13

    long-to-int v0, v13

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 1618
    invoke-virtual {v2, v13, v14}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v13

    long-to-int v2, v13

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v21, v15

    iget-wide v14, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    move/from16 v25, v0

    iget-wide v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v14, v0

    .line 1620
    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1623
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1624
    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v3, v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1625
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v4, v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1626
    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    long-to-int v5, v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1627
    invoke-virtual {v6, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    long-to-int v6, v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1628
    move-wide/from16 v8, v19

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    long-to-int v7, v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1629
    move-wide/from16 v9, v17

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    long-to-int v8, v8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1630
    move-wide/from16 v13, v21

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    long-to-int v9, v9

    .line 1613
    move/from16 v22, p1

    move-object/from16 v21, p3

    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v26, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-virtual/range {v21 .. v35}, Lcom/android/internal/app/procstats/StatsEventOutput;->write(IILjava/lang/String;IIIIIIIIIII)V

    .line 1631
    return-void

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_41
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_3e
        :pswitch_3b
    .end packed-switch
.end method

.method public blacklist dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJ)V
    .registers 23

    .line 928
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    const-string v3, "* "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    if-eqz p3, :cond_d

    .line 931
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    :cond_d
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    const-string v2, " / "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 936
    const-string v2, " / v"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 938
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 941
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 943
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 945
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 948
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 951
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 954
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 957
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 960
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 962
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 964
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 967
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 969
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 971
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 973
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 975
    return-void
.end method

.method public blacklist getCombinedState()I
    .registers 2

    .line 517
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    return v0
.end method

.method public blacklist getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public blacklist getDuration(IJ)J
    .registers 8

    .line 762
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    .line 763
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, p1, :cond_f

    .line 764
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long/2addr p2, v2

    add-long/2addr v0, p2

    .line 766
    :cond_f
    return-wide v0
.end method

.method public blacklist getDurationsBucketCount()I
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getOrCreateSourceState(Lcom/android/internal/app/procstats/AssociationState$SourceKey;)Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .registers 5

    .line 810
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 811
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 813
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 814
    if-nez v0, :cond_22

    .line 815
    new-instance v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    .line 816
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_22
    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPssAverage(I)J
    .registers 4

    .line 778
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssMaximum(I)J
    .registers 4

    .line 782
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssMinimum(I)J
    .registers 4

    .line 774
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssAverage(I)J
    .registers 4

    .line 802
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssMaximum(I)J
    .registers 4

    .line 806
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/16 v1, 0x9

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssMinimum(I)J
    .registers 4

    .line 798
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssSampleCount(I)J
    .registers 4

    .line 770
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssAverage(I)J
    .registers 4

    .line 790
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssMaximum(I)J
    .registers 4

    .line 794
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssMinimum(I)J
    .registers 4

    .line 786
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTotalRunningDuration(J)J
    .registers 9

    .line 757
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 758
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v4, p1, v2

    :cond_e
    add-long/2addr v0, v4

    .line 757
    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 250
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return v0
.end method

.method public blacklist getVersion()J
    .registers 3

    .line 254
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    return-wide v0
.end method

.method public blacklist hasAnyData()Z
    .registers 7

    .line 421
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_20

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 423
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_21

    :cond_20
    const/4 v1, 0x1

    .line 421
    :cond_21
    return v1
.end method

.method public blacklist incActiveServices(Ljava/lang/String;)V
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_9

    .line 545
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 547
    :cond_9
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 548
    return-void
.end method

.method public blacklist incStartedServices(IJLjava/lang/String;)V
    .registers 6

    .line 573
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_9

    .line 574
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 576
    :cond_9
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    const/4 v0, 0x1

    add-int/2addr p4, v0

    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 577
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-ne p4, v0, :cond_1f

    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v0, -0x1

    if-ne p4, v0, :cond_1f

    .line 578
    mul-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x9

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    .line 580
    :cond_1f
    return-void
.end method

.method public blacklist isActive()Z
    .registers 2

    .line 417
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return v0
.end method

.method public blacklist isInUse()Z
    .registers 3

    .line 412
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_14

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_14

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public blacklist isMultiPackage()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return v0
.end method

.method public blacklist makeActive()V
    .registers 2

    .line 403
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 405
    return-void
.end method

.method public blacklist makeDead()V
    .registers 2

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    .line 322
    return-void
.end method

.method public blacklist makeInactive()V
    .registers 2

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 409
    return-void
.end method

.method public blacklist makeStandalone()V
    .registers 1

    .line 242
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 243
    return-void
.end method

.method public blacklist onProcessFrozen(JLandroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 432
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    rem-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    .line 433
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    div-int/lit8 v0, v0, 0x10

    .line 434
    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xf

    .line 435
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJLandroid/util/ArrayMap;)V

    .line 436
    return-void
.end method

.method public blacklist onProcessUnfrozen(JLandroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 443
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    div-int/lit8 v0, v0, 0x10

    .line 444
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    .line 445
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJLandroid/util/ArrayMap;)V

    .line 446
    return-void
.end method

.method public blacklist pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 7

    .line 690
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_b4

    .line 694
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 695
    const-string v1, "Didn\'t find package "

    const-string v2, " / "

    if-eqz v0, :cond_93

    .line 699
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 700
    const-string v3, " vers "

    if-eqz v0, :cond_68

    .line 704
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 705
    if-eqz v0, :cond_2f

    .line 709
    return-object v0

    .line 706
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Didn\'t create per-package process "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in pkg "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_68
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_93
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_b4
    return-object p0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;IZ)Z
    .registers 10

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 361
    :goto_b
    if-eqz p3, :cond_f

    .line 362
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 365
    :cond_f
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {p3, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result p3

    if-nez p3, :cond_18

    .line 366
    return v2

    .line 369
    :cond_18
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {p3, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result p3

    if-nez p3, :cond_21

    .line 370
    return v2

    .line 372
    :cond_21
    move p3, v2

    :goto_22
    const/16 v0, 0xa

    if-ge p3, v0, :cond_31

    .line 373
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v0, p3

    .line 372
    add-int/lit8 p3, p3, 0x1

    goto :goto_22

    .line 375
    :cond_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p3

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p3

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 379
    iget p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p3, :cond_5d

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_65

    .line 384
    :cond_5d
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 388
    :goto_65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 389
    if-lez p3, :cond_8f

    .line 390
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 391
    nop

    :goto_73
    if-ge v2, p3, :cond_8f

    .line 392
    new-instance v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v0, v3, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)V

    .line 393
    new-instance v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    .line 394
    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    .line 395
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 399
    :cond_8f
    return v1
.end method

.method public blacklist reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 659
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 660
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 661
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_12

    .line 662
    return-void

    .line 665
    :cond_12
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_27

    .line 666
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 665
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 668
    :cond_27
    return-void
.end method

.method public blacklist resetSafely(J)V
    .registers 6

    .line 299
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 300
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    .line 301
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 303
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 304
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 305
    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 306
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 308
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_46

    .line 309
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2a
    if-ltz v0, :cond_46

    .line 310
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 311
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 312
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->resetSafely(J)V

    goto :goto_43

    .line 314
    :cond_3e
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 309
    :goto_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 318
    :cond_46
    return-void
.end method

.method blacklist setCombinedState(IJLandroid/util/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_c

    .line 477
    return-void

    .line 480
    :cond_c
    if-eqz p4, :cond_20

    .line 481
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_20

    .line 482
    invoke-direct {p0, p4, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    .line 481
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 485
    :cond_20
    return-void
.end method

.method blacklist setCombinedStateIdv(IJ)V
    .registers 10

    .line 491
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 492
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_45

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-eq v0, p1, :cond_45

    .line 494
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 495
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1f

    .line 497
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 498
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    goto :goto_32

    .line 499
    :cond_1f
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v3, v2, :cond_32

    .line 502
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 503
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 504
    const/16 v2, 0x9

    :goto_29
    if-ltz v2, :cond_32

    .line 505
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aput-wide v0, v3, v2

    .line 504
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 508
    :cond_32
    :goto_32
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 509
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/UidState;

    .line 510
    if-eqz v0, :cond_45

    .line 511
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(IJ)V

    .line 514
    :cond_45
    return-void
.end method

.method public blacklist setMultiPackage(Z)V
    .registers 2

    .line 262
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 263
    return-void
.end method

.method public blacklist setState(IIJLandroid/util/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 458
    if-gez p1, :cond_d

    .line 459
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez p1, :cond_b

    .line 460
    mul-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0x9

    goto :goto_14

    :cond_b
    const/4 p2, -0x1

    goto :goto_14

    .line 462
    :cond_d
    sget-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget p1, v0, p1

    mul-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    .line 464
    :goto_14
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJLandroid/util/ArrayMap;)V

    .line 465
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1448
    const-string v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1449
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1450
    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_45

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    :cond_45
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, p0, :cond_4e

    const-string v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    :cond_4e
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;J)V
    .registers 8

    .line 333
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 336
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1f

    .line 337
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 339
    :cond_1f
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 340
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p2, :cond_46

    .line 344
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 345
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 346
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 349
    :cond_46
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz p2, :cond_51

    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    goto :goto_52

    :cond_51
    move p2, v0

    .line 350
    :goto_52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    move p3, v0

    :goto_56
    if-ge p3, p2, :cond_73

    .line 352
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 353
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 354
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;)V

    .line 355
    invoke-virtual {v2, p1, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 351
    add-int/lit8 p3, p3, 0x1

    goto :goto_56

    .line 357
    :cond_73
    return-void
.end method
