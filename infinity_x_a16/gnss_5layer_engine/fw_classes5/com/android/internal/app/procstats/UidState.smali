.class public final Lcom/android/internal/app/procstats/UidState;
.super Ljava/lang/Object;
.source "UidState.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private blacklist mCurCombinedState:I

.field private final blacklist mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private blacklist mProcesses:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartTime:J

.field private final blacklist mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private blacklist mTotalRunningDuration:J

.field private blacklist mTotalRunningStartTime:J

.field private final blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;I)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    .line 51
    iput-object p1, p0, Lcom/android/internal/app/procstats/UidState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 52
    iput p2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    .line 53
    new-instance p2, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 54
    return-void
.end method

.method private blacklist calcCombinedState()I
    .registers 8

    .line 88
    nop

    .line 89
    nop

    .line 90
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_c
    if-ge v2, v0, :cond_28

    .line 91
    iget-object v5, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v5

    .line 92
    rem-int/lit8 v6, v5, 0x10

    .line 93
    if-eq v5, v1, :cond_25

    .line 94
    if-eq v4, v1, :cond_22

    if-ge v6, v4, :cond_25

    .line 95
    :cond_22
    nop

    .line 96
    move v3, v5

    move v4, v6

    .line 90
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 100
    :cond_28
    return v3
.end method

.method static synthetic blacklist lambda$resetSafely$0(Lcom/android/internal/app/procstats/ProcessState;)Z
    .registers 1

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist setCombinedStateInner(IJ)V
    .registers 8

    .line 109
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-eq v0, p1, :cond_21

    .line 110
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1f

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->commitStateTime(J)V

    .line 112
    const/4 v2, -0x1

    if-ne p1, v2, :cond_19

    .line 114
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long/2addr p2, v2

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    goto :goto_1f

    .line 115
    :cond_19
    iget p2, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne p2, v2, :cond_1f

    .line 118
    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 121
    :cond_1f
    :goto_1f
    iput p1, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    .line 123
    :cond_21
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/UidState;)V
    .registers 6

    .line 186
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 187
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 188
    return-void
.end method

.method blacklist addProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method blacklist addProcess(Lcom/android/internal/app/procstats/ProcessState;J)V
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    .line 197
    return-void
.end method

.method public blacklist clone()Lcom/android/internal/app/procstats/UidState;
    .registers 4

    .line 60
    new-instance v0, Lcom/android/internal/app/procstats/UidState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 61
    iget-object v1, v0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 62
    iget v1, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    iput v1, v0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    .line 63
    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    .line 64
    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    .line 65
    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 66
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/UidState;->clone()Lcom/android/internal/app/procstats/UidState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist commitStateTime(J)V
    .registers 7

    .line 136
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 137
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v0, p1, v0

    .line 138
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_16

    .line 139
    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 141
    :cond_16
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 142
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    .line 144
    :cond_21
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    .line 145
    return-void
.end method

.method blacklist dumpState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .registers 30

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 269
    nop

    .line 270
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    :goto_f
    array-length v13, v2

    const-string v15, ": "

    const-wide/16 v16, 0x0

    if-ge v9, v13, :cond_a0

    .line 271
    nop

    .line 272
    const/4 v6, 0x0

    const/4 v13, -0x1

    :goto_19
    array-length v8, v3

    if-ge v6, v8, :cond_98

    .line 273
    const/4 v8, 0x0

    :goto_1d
    array-length v7, v4

    if-ge v8, v7, :cond_8f

    .line 274
    aget v7, v2, v9

    .line 275
    aget v14, v3, v6

    .line 276
    add-int v18, v7, v14

    mul-int/lit8 v18, v18, 0x10

    aget v19, v4, v8

    add-int v5, v18, v19

    .line 277
    iget-object v4, v0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move/from16 v18, v6

    int-to-byte v6, v5

    invoke-virtual {v4, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v20

    .line 278
    nop

    .line 279
    iget v4, v0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v4, v5, :cond_46

    .line 280
    nop

    .line 281
    iget-wide v4, v0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v4, p6, v4

    add-long v20, v20, v4

    const-string v4, " (running)"

    move-wide/from16 v5, v20

    goto :goto_4a

    .line 279
    :cond_46
    const-string v4, ""

    move-wide/from16 v5, v20

    .line 283
    :goto_4a
    cmp-long v19, v5, v16

    if-eqz v19, :cond_84

    .line 284
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    array-length v0, v2

    move/from16 v19, v8

    const/4 v8, 0x1

    if-le v0, v8, :cond_60

    .line 286
    if-eq v12, v7, :cond_5b

    .line 287
    move v0, v7

    goto :goto_5c

    :cond_5b
    const/4 v0, -0x1

    .line 286
    :goto_5c
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 288
    move v12, v7

    .line 290
    :cond_60
    array-length v0, v3

    const/4 v8, 0x1

    if-le v0, v8, :cond_70

    .line 291
    nop

    .line 292
    if-eq v13, v14, :cond_69

    move v0, v14

    goto :goto_6a

    :cond_69
    const/4 v0, -0x1

    .line 291
    :goto_6a
    const/16 v7, 0x2f

    invoke-static {v1, v0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 293
    move v13, v14

    .line 295
    :cond_70
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v7, p5, v19

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    add-long/2addr v10, v5

    goto :goto_86

    .line 283
    :cond_84
    move/from16 v19, v8

    .line 273
    :goto_86
    add-int/lit8 v8, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    move/from16 v6, v18

    goto :goto_1d

    .line 272
    :cond_8f
    move/from16 v18, v6

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    goto :goto_19

    .line 270
    :cond_98
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    goto/16 :goto_f

    .line 302
    :cond_a0
    cmp-long v0, v10, v16

    if-eqz v0, :cond_c7

    .line 303
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    array-length v0, v2

    const/4 v8, 0x1

    if-le v0, v8, :cond_b0

    .line 305
    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_b1

    .line 304
    :cond_b0
    const/4 v0, -0x1

    .line 307
    :goto_b1
    array-length v2, v3

    if-le v2, v8, :cond_b9

    .line 308
    const/16 v7, 0x2f

    invoke-static {v1, v0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 310
    :cond_b9
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 313
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 315
    :cond_c7
    return-void
.end method

.method public blacklist getAggregatedDurationsInStates()[J
    .registers 11

    .line 235
    const/16 v0, 0x10

    new-array v1, v0, [J

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/UidState;->getDurationsBucketCount()I

    move-result v2

    .line 237
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_24

    .line 238
    iget-object v4, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v4

    .line 239
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v5

    .line 240
    rem-int/2addr v5, v0

    aget-wide v6, v1, v5

    iget-object v8, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v4}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v1, v5

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 242
    :cond_24
    return-object v1
.end method

.method public blacklist getCombinedState()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    return v0
.end method

.method public blacklist getDuration(IJ)J
    .registers 8

    .line 223
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    .line 224
    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v2, p1, :cond_f

    .line 225
    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long/2addr p2, v2

    add-long/2addr v0, p2

    .line 227
    :cond_f
    return-wide v0
.end method

.method public blacklist getDurationsBucketCount()I
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalRunningDuration(J)J
    .registers 9

    .line 215
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 216
    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v4, p1, v2

    :cond_e
    add-long/2addr v0, v4

    .line 215
    return-wide v0
.end method

.method public blacklist hasPackage(Ljava/lang/String;)Z
    .registers 7

    .line 172
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2b

    .line 173
    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessState;

    .line 174
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 175
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 176
    const/4 p1, 0x1

    return p1

    .line 172
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 179
    :cond_2b
    return v1
.end method

.method public blacklist isInUse()Z
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 161
    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 162
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 165
    :cond_1d
    return v1
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)Z
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 252
    const/4 p1, 0x0

    return p1

    .line 254
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 255
    const/4 p1, 0x1

    return p1
.end method

.method blacklist removeProcess(Lcom/android/internal/app/procstats/ProcessState;J)V
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    .line 202
    return-void
.end method

.method public blacklist resetSafely(J)V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 152
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    .line 153
    iget-object p1, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    new-instance p2, Lcom/android/internal/app/procstats/UidState$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/app/procstats/UidState$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 154
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    const-string v1, "UidState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateCombinedState(IJ)V
    .registers 5

    .line 74
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-eq v0, p1, :cond_7

    .line 75
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    .line 77
    :cond_7
    return-void
.end method

.method public blacklist updateCombinedState(J)V
    .registers 4

    .line 84
    invoke-direct {p0}, Lcom/android/internal/app/procstats/UidState;->calcCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    .line 85
    return-void
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;J)V
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 247
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->getTotalRunningDuration(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    return-void
.end method
