.class public Lcom/android/internal/os/BatteryStatsHistoryIterator;
.super Ljava/lang/Object;
.source "BatteryStatsHistoryIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/os/BatteryStats$HistoryItem;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistoryItr"


# instance fields
.field private blacklist mBaseMonotonicTime:J

.field private blacklist mBaseTimeUtc:J

.field private final blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private blacklist mClosed:Z

.field private final blacklist mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

.field private final blacklist mEndTimeMs:J

.field private blacklist mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mItemIndex:I

.field private final blacklist mMaxHistoryItems:I

.field private blacklist mNextItemReady:Z

.field private blacklist mParcelContainers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParcelDataPosition:I

.field private final blacklist mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final blacklist mStartTimeMs:J

.field private blacklist mTimeInitialized:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .registers 7

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-direct {v0}, Lcom/android/internal/os/PowerStats$DescriptorRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    .line 45
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mItemIndex:I

    .line 59
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 60
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    .line 61
    const-wide/16 p2, -0x1

    cmp-long p2, p4, p2

    if-eqz p2, :cond_2d

    goto :goto_32

    :cond_2d
    const-wide p4, 0x7fffffffffffffffL

    :goto_32
    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    .line 62
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p2}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 63
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHistory;->getEstimatedItemCount()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mMaxHistoryItems:I

    .line 64
    return-void
.end method

.method private blacklist advance()Z
    .registers 11

    .line 96
    const-string v0, "BatteryStatsHistoryItr"

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelContainers:Ljava/util/Queue;

    if-nez v1, :cond_12

    .line 97
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsHistory;->getParcelContainers(JJ)Ljava/util/Queue;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelContainers:Ljava/util/Queue;

    .line 101
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelContainers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    const/4 v2, 0x0

    if-eqz v1, :cond_ff

    .line 102
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->getParcel()Landroid/os/Parcel;

    move-result-object v3

    .line 103
    if-eqz v3, :cond_f3

    invoke-virtual {v3}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    if-lt v4, v5, :cond_2f

    goto/16 :goto_f3

    .line 110
    :cond_2f
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mTimeInitialized:Z

    const/4 v5, 0x1

    if-nez v4, :cond_42

    .line 111
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->getMonotonicStartTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    .line 112
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    iput-wide v6, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 113
    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mTimeInitialized:Z

    .line 117
    :cond_42
    :try_start_42
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 118
    invoke-virtual {v3}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 119
    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelDataPosition:I

    if-gt v1, v4, :cond_74

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Corrupted battery history, parcel is not progressing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v2

    .line 124
    :cond_74
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelDataPosition:I
    :try_end_76
    .catchall {:try_start_42 .. :try_end_76} :catchall_ec

    .line 128
    nop

    .line 130
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-eq v1, v3, :cond_85

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-ne v1, v3, :cond_93

    .line 132
    :cond_85
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseTimeUtc:J

    .line 135
    :cond_93
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    cmp-long v1, v3, v6

    if-gez v1, :cond_9f

    .line 136
    goto/16 :goto_12

    .line 139
    :cond_9f
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-eqz v1, :cond_ba

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v3, v6

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    cmp-long v1, v3, v6

    if-ltz v1, :cond_ba

    .line 141
    return v2

    .line 144
    :cond_ba
    iget v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mItemIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mItemIndex:I

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mMaxHistoryItems:I

    if-le v1, v3, :cond_dd

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of battery history items is too large: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mItemIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v2

    .line 149
    :cond_dd
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseTimeUtc:J

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    sub-long/2addr v3, v6

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 150
    return v5

    .line 125
    :catchall_ec
    move-exception v1

    .line 126
    const-string v3, "Corrupted battery history"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    return v2

    .line 104
    :cond_f3
    :goto_f3
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->close()V

    .line 105
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelContainers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 106
    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelDataPosition:I

    .line 107
    goto/16 :goto_12

    .line 152
    :cond_ff
    return v2
.end method

.method private static blacklist extractSignedBitField(III)I
    .registers 3

    .line 359
    ushr-int/2addr p1, p2

    .line 360
    ushr-int/2addr p0, p2

    .line 361
    and-int/2addr p0, p1

    .line 362
    ushr-int/lit8 p2, p1, 0x1

    xor-int/2addr p2, p1

    .line 364
    and-int/2addr p2, p0

    if-eqz p2, :cond_b

    not-int p1, p1

    or-int/2addr p0, p1

    .line 365
    :cond_b
    return p0
.end method

.method private static blacklist readBatteryLevelInts(IILandroid/os/BatteryStats$HistoryItem;)V
    .registers 6

    .line 371
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/high16 v1, -0x1000000

    const/16 v2, 0x18

    invoke-static {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 376
    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_2f

    .line 377
    iget-short p1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    const v0, 0xff8000

    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v0

    add-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 381
    iget-short p1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    const/16 v0, 0x7ffc

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result p0

    add-int/2addr p1, p0

    int-to-short p0, p1

    iput-short p0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    goto :goto_45

    .line 386
    :cond_2f
    const/high16 p0, -0x10000

    const/16 v0, 0x10

    invoke-static {p1, p0, v0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result p0

    int-to-short p0, p0

    iput-short p0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 390
    const p0, 0xffff

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result p0

    int-to-short p0, p0

    iput-short p0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 395
    :goto_45
    return-void
.end method

.method private blacklist readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 13

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    const v1, 0x7ffff

    and-int/2addr v1, v0

    .line 158
    const/4 v2, 0x0

    iput-byte v2, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 159
    const/4 v3, 0x1

    iput v3, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 165
    const/4 v4, 0x2

    const v5, 0x7fffd

    if-ge v1, v5, :cond_1b

    .line 166
    iget-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_44

    .line 167
    :cond_1b
    if-ne v1, v5, :cond_21

    .line 168
    invoke-virtual {p2, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 170
    return-void

    .line 171
    :cond_21
    const v5, 0x7fffe

    if-ne v1, v5, :cond_36

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    iget-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 174
    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 176
    goto :goto_44

    .line 177
    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 179
    iget-wide v7, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v7, v5

    iput-wide v7, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 180
    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v1, v4

    iput v1, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 184
    :goto_44
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6b

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    iget v5, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v5, v3

    iput v5, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 187
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_58

    move v5, v3

    goto :goto_59

    :cond_58
    move v5, v2

    .line 189
    :goto_59
    nop

    .line 190
    if-eqz v5, :cond_66

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 192
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_67

    .line 190
    :cond_66
    move v5, v2

    .line 194
    :goto_67
    invoke-static {v1, v5, p2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readBatteryLevelInts(IILandroid/os/BatteryStats$HistoryItem;)V

    .line 205
    goto :goto_6c

    .line 206
    :cond_6b
    move v1, v2

    .line 209
    :goto_6c
    const/high16 v5, 0x100000

    and-int/2addr v5, v0

    const/4 v6, 0x4

    const v7, 0xffffff

    const/high16 v8, -0x2000000

    if-eqz v5, :cond_aa

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 211
    and-int/2addr v8, v0

    and-int/2addr v7, v5

    or-int/2addr v7, v8

    iput v7, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 213
    shr-int/lit8 v7, v5, 0x1d

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 215
    shr-int/lit8 v7, v5, 0x1a

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 217
    shr-int/lit8 v5, v5, 0x18

    and-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    iput-byte v5, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 219
    iget-byte v5, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v5, :pswitch_data_186

    goto :goto_a4

    .line 227
    :pswitch_9b
    iput-byte v6, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_a4

    .line 224
    :pswitch_9e
    iput-byte v4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 225
    goto :goto_a4

    .line 221
    :pswitch_a1
    iput-byte v3, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 222
    nop

    .line 230
    :goto_a4
    iget v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 239
    goto :goto_b2

    .line 240
    :cond_aa
    and-int v4, v0, v8

    iget v5, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 244
    :goto_b2
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_bd

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 252
    :cond_bd
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    const v5, 0xffff

    const/4 v7, 0x0

    if-eqz v4, :cond_f3

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 254
    and-int v8, v4, v5

    .line 255
    shr-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v5

    .line 256
    iget-object v9, p2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v8, v9}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 257
    iget-object v8, p2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v8, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_de

    .line 259
    :cond_dc
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 261
    :goto_de
    iget-object v8, p2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v4, v8}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 262
    iget-object v4, p2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v4, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_ed

    .line 264
    :cond_eb
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 266
    :goto_ed
    iget v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 267
    goto :goto_f7

    .line 268
    :cond_f3
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 269
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 272
    :goto_f7
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_120

    .line 273
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    and-int v4, v2, v5

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 276
    shr-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v5

    .line 277
    iget-object v4, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 278
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_11a

    .line 280
    :cond_118
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 282
    :goto_11a
    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v2, v3

    iput v2, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 288
    goto :goto_122

    .line 289
    :cond_120
    iput v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 292
    :goto_122
    and-int/2addr v1, v3

    if-eqz v1, :cond_12f

    .line 293
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 294
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_131

    .line 296
    :cond_12f
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 299
    :goto_131
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13c

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 302
    :cond_13c
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 304
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_181

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_162

    .line 307
    invoke-static {p1}, Lcom/android/internal/os/PowerStats$Descriptor;->readSummaryFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_162

    .line 309
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/PowerStats$DescriptorRegistry;->register(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 312
    :cond_162
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_16f

    .line 313
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-static {p1, v1}, Lcom/android/internal/os/PowerStats;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/PowerStats$DescriptorRegistry;)Lcom/android/internal/os/PowerStats;

    move-result-object v1

    iput-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    goto :goto_171

    .line 315
    :cond_16f
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 317
    :goto_171
    and-int/2addr v0, v6

    if-eqz v0, :cond_17e

    .line 318
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 319
    iget-object p2, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {p2, p1}, Landroid/os/BatteryStats$ProcessStateChange;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_180

    .line 321
    :cond_17e
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 323
    :goto_180
    goto :goto_185

    .line 324
    :cond_181
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 325
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 327
    :goto_185
    return-void

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
    .end packed-switch
.end method

.method private blacklist readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z
    .registers 6

    .line 330
    const v0, 0xffff

    const/4 v1, 0x0

    if-ne p2, v0, :cond_7

    .line 331
    return v1

    .line 334
    :cond_7
    const v0, 0x8000

    and-int/2addr v0, p2

    if-eqz v0, :cond_30

    .line 335
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 336
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 337
    const p1, -0x8001

    and-int/2addr p1, p2

    iput p1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 338
    iget p1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const/16 p2, 0x7ffe

    if-ge p1, p2, :cond_29

    .line 339
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    iget p2, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2c

    .line 341
    :cond_29
    const/4 p1, -0x1

    iput p1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 344
    :goto_2c
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 345
    goto :goto_45

    .line 346
    :cond_30
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$HistoryTag;

    .line 347
    if-eqz p1, :cond_3e

    .line 348
    invoke-virtual {p3, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_43

    .line 350
    :cond_3e
    const/4 p1, 0x0

    iput-object p1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 351
    iput v1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 353
    :goto_43
    iput p2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 355
    :goto_45
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 402
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mClosed:Z

    if-nez v0, :cond_c

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mClosed:Z

    .line 404
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory;->iteratorFinished()V

    .line 406
    :cond_c
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 68
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 69
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->advance()Z

    move-result v0

    if-nez v0, :cond_11

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 73
    :cond_11
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    .line 76
    :cond_13
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public blacklist next()Landroid/os/BatteryStats$HistoryItem;
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    if-nez v0, :cond_10

    .line 86
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->advance()Z

    move-result v0

    if-nez v0, :cond_10

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 91
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    .line 92
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v0

    return-object v0
.end method
