.class public final Landroid/os/BatteryUsageStats$Builder;
.super Ljava/lang/Object;
.source "BatteryUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

.field private blacklist mBatteryCapacityMah:D

.field private final blacklist mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

.field private final blacklist mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

.field private blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private blacklist mBatteryTimeRemainingMs:J

.field private blacklist mChargeTimeRemainingMs:J

.field private final blacklist mCustomPowerComponentNames:[Ljava/lang/String;

.field private blacklist mDischargeDurationMs:J

.field private blacklist mDischargePercentage:I

.field private blacklist mDischargedPowerLowerBoundMah:D

.field private blacklist mDischargedPowerUpperBoundMah:D

.field private final blacklist mIncludesPowerStateData:Z

.field private final blacklist mIncludesProcessStateData:Z

.field private final blacklist mIncludesScreenStateData:Z

.field private final blacklist mMinConsumedPowerThreshold:D

.field private blacklist mPreferredHistoryDurationMs:J

.field private blacklist mStatsDurationMs:J

.field private blacklist mStatsEndTimestampMs:J

.field private blacklist mStatsStartTimestampMs:J

.field private final blacklist mUidBatteryConsumerBuilders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/UidBatteryConsumer$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserBatteryConsumerBuilders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/UserBatteryConsumer$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAggregateBatteryConsumersBuilders(Landroid/os/BatteryUsageStats$Builder;)[Landroid/os/AggregateBatteryConsumer$Builder;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryCapacityMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryConsumerDataLayout(Landroid/os/BatteryUsageStats$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryConsumersCursorWindow(Landroid/os/BatteryUsageStats$Builder;)Landroid/database/CursorWindow;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryStatsHistory(Landroid/os/BatteryUsageStats$Builder;)Lcom/android/internal/os/BatteryStatsHistory;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats$Builder;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mCustomPowerComponentNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerLowerBoundMah(Landroid/os/BatteryUsageStats$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerUpperBoundMah(Landroid/os/BatteryUsageStats$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesPowerStateData(Landroid/os/BatteryUsageStats$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesPowerStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesScreenStateData(Landroid/os/BatteryUsageStats$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesScreenStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferredHistoryDurationMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mPreferredHistoryDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUidBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor blacklist <init>([Ljava/lang/String;)V
    .registers 9

    .line 933
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    .line 934
    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;ZZZD)V
    .registers 12

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    .line 921
    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    .line 922
    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    .line 923
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/os/AggregateBatteryConsumer$Builder;

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    .line 925
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    .line 927
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    .line 939
    new-instance v1, Landroid/database/CursorWindow;

    const/4 v2, 0x0

    const-wide/32 v3, 0x1312d00

    invoke-direct {v1, v2, v3, v4}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    .line 941
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-static {v1}, Landroid/os/BatteryUsageStats;->-$$Nest$smonCursorWindowAllocated(Landroid/database/CursorWindow;)V

    .line 942
    invoke-static {p1, p2, p3, p4}, Landroid/os/BatteryConsumer;->createBatteryConsumerDataLayout([Ljava/lang/String;ZZZ)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 945
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    invoke-virtual {v1, v2}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 947
    iput-object p1, p0, Landroid/os/BatteryUsageStats$Builder;->mCustomPowerComponentNames:[Ljava/lang/String;

    .line 948
    iput-boolean p2, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    .line 949
    iput-boolean p3, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesScreenStateData:Z

    .line 950
    iput-boolean p4, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesPowerStateData:Z

    .line 951
    iput-wide p5, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    .line 952
    const/4 p1, 0x0

    :goto_48
    if-ge p1, v0, :cond_60

    .line 953
    iget-object p2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object p3, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 954
    invoke-static {p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object p2

    .line 956
    iget-object p3, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    new-instance p4, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide p5, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {p4, p2, p1, p5, p6}, Landroid/os/AggregateBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    aput-object p4, p3, p1

    .line 952
    add-int/lit8 p1, p1, 0x1

    goto :goto_48

    .line 960
    :cond_60
    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;
    .registers 6

    .line 1189
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mCustomPowerComponentNames:[Ljava/lang/String;

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1194
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    if-eqz v0, :cond_1f

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1f

    .line 1195
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Added BatteryUsageStats does not include process state data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1199
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_d7

    .line 1200
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getUserBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1205
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargedPowerLowerBound(Landroid/os/BatteryUsageStats;)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    .line 1206
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargedPowerUpperBound(Landroid/os/BatteryUsageStats;)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    .line 1207
    iget v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    .line 1208
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    .line 1210
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->getStatsDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    .line 1212
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_72

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_78

    .line 1214
    :cond_72
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    .line 1217
    :cond_78
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_85

    const/4 v0, 0x1

    goto :goto_86

    :cond_85
    move v0, v1

    .line 1218
    :goto_86
    if-eqz v0, :cond_8e

    .line 1219
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    .line 1222
    :cond_8e
    nop

    :goto_8f
    const/4 v2, 0x2

    if-ge v1, v2, :cond_a2

    .line 1223
    invoke-virtual {p0, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmAggregateBatteryConsumers(Landroid/os/BatteryUsageStats;)[Landroid/os/AggregateBatteryConsumer;

    move-result-object v3

    aget-object v3, v3, v1

    .line 1224
    invoke-virtual {v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->add(Landroid/os/AggregateBatteryConsumer;)V

    .line 1222
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 1227
    :cond_a2
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer;

    .line 1228
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UidBatteryConsumer$Builder;->add(Landroid/os/UidBatteryConsumer;)Landroid/os/UidBatteryConsumer$Builder;

    .line 1229
    goto :goto_aa

    .line 1231
    :cond_c2
    if-eqz v0, :cond_d6

    .line 1232
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryCapacityMah:D

    .line 1233
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    .line 1234
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    .line 1237
    :cond_d6
    return-object p0

    .line 1201
    :cond_d7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Combining UserBatteryConsumers is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1190
    :cond_df
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BatteryUsageStats have different custom power components"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist addDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 5

    .line 1075
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    .line 1076
    return-object p0
.end method

.method public blacklist addDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;
    .registers 3

    .line 1055
    iget v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    .line 1056
    return-object p0
.end method

.method public blacklist addDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;
    .registers 7

    .line 1065
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    .line 1066
    iget-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    .line 1067
    return-object p0
.end method

.method public blacklist build()Landroid/os/BatteryUsageStats;
    .registers 3

    .line 991
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_b

    .line 994
    new-instance v0, Landroid/os/BatteryUsageStats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/BatteryUsageStats;-><init>(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryUsageStats-IA;)V

    return-object v0

    .line 992
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder has been discarded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist discard()V
    .registers 2

    .line 1002
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 1003
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-static {v0}, Landroid/os/BatteryUsageStats;->-$$Nest$smonCursorWindowReleased(Landroid/database/CursorWindow;)V

    .line 1004
    return-void
.end method

.method blacklist dump(Ljava/io/PrintWriter;)V
    .registers 10

    .line 1244
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    .line 1245
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    .line 1246
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_6b

    .line 1247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1248
    move v5, v2

    :goto_14
    if-ge v5, v1, :cond_5c

    .line 1249
    iget-object v6, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v6, v3, v5}, Landroid/database/CursorWindow;->getType(II)I

    move-result v6

    .line 1250
    const-string v7, ", "

    packed-switch v6, :pswitch_data_6c

    goto :goto_59

    .line 1264
    :pswitch_22
    const-string v6, "BLOB, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 1261
    :pswitch_28
    iget-object v6, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v6, v3, v5}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    goto :goto_59

    .line 1258
    :pswitch_36
    iget-object v6, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v6, v3, v5}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    goto :goto_59

    .line 1255
    :pswitch_44
    iget-object v6, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v6, v3, v5}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    goto :goto_59

    .line 1252
    :pswitch_52
    const-string/jumbo v6, "null, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    nop

    .line 1248
    :goto_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1268
    :cond_5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1269
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1246
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1271
    :cond_6b
    return-void

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_44
        :pswitch_36
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;
    .registers 3

    .line 1117
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public blacklist getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;
    .registers 6

    .line 1147
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    .line 1148
    if-nez v0, :cond_1f

    .line 1149
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 1150
    invoke-static {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v0

    .line 1152
    new-instance v1, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v1, v0, p1, v2, v3}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    .line 1153
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 1155
    :cond_1f
    return-object v0
.end method

.method public blacklist getOrCreateUidBatteryConsumerBuilder(Landroid/os/BatteryStats$Uid;)Landroid/os/UidBatteryConsumer$Builder;
    .registers 7

    .line 1127
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    .line 1128
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    .line 1129
    if-nez v1, :cond_23

    .line 1130
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 1131
    invoke-static {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v1

    .line 1133
    new-instance v2, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v3, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v2, v1, p1, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;D)V

    .line 1135
    iget-object p1, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    .line 1137
    :cond_23
    return-object v1
.end method

.method public blacklist getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;
    .registers 6

    .line 1164
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserBatteryConsumer$Builder;

    .line 1165
    if-nez v0, :cond_1f

    .line 1166
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 1167
    invoke-static {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v0

    .line 1169
    new-instance v1, Landroid/os/UserBatteryConsumer$Builder;

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v1, v0, p1, v2, v3}, Landroid/os/UserBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    .line 1170
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 1172
    :cond_1f
    return-object v0
.end method

.method public blacklist getStatsDuration()J
    .registers 5

    .line 1043
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 1044
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    return-wide v0

    .line 1046
    :cond_b
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getUidBatteryConsumerBuilders()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/os/UidBatteryConsumer$Builder;",
            ">;"
        }
    .end annotation

    .line 1177
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist isPowerStateDataNeeded()Z
    .registers 2

    .line 971
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesPowerStateData:Z

    return v0
.end method

.method public blacklist isProcessStateDataNeeded()Z
    .registers 2

    .line 963
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    return v0
.end method

.method public blacklist isScreenStateDataNeeded()Z
    .registers 2

    .line 967
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesScreenStateData:Z

    return v0
.end method

.method public blacklist isSupportedPowerComponent(I)Z
    .registers 4

    .line 980
    const/16 v0, 0x13

    if-lt p1, v0, :cond_12

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_10

    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 p1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p1, 0x1

    :goto_13
    return p1
.end method

.method public blacklist setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;
    .registers 3

    .line 1010
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryCapacityMah:D

    .line 1011
    return-object p0
.end method

.method public blacklist setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;J)Landroid/os/BatteryUsageStats$Builder;
    .registers 4

    .line 1105
    iput-object p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 1106
    iput-wide p2, p0, Landroid/os/BatteryUsageStats$Builder;->mPreferredHistoryDurationMs:J

    .line 1107
    return-object p0
.end method

.method public blacklist setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 3

    .line 1085
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    .line 1086
    return-object p0
.end method

.method public blacklist setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 3

    .line 1095
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    .line 1096
    return-object p0
.end method

.method public blacklist setStatsDuration(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 3

    .line 1035
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    .line 1036
    return-object p0
.end method

.method public blacklist setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 3

    .line 1026
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    .line 1027
    return-object p0
.end method

.method public blacklist setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 3

    .line 1018
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    .line 1019
    return-object p0
.end method
