.class public Landroid/os/health/HealthStats;
.super Ljava/lang/Object;
.source "HealthStats.java"


# instance fields
.field private greylist-max-o mDataType:Ljava/lang/String;

.field private greylist-max-o mMeasurementKeys:[I

.field private greylist-max-o mMeasurementValues:[J

.field private greylist-max-o mMeasurementsKeys:[I

.field private greylist-max-o mMeasurementsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStatsKeys:[I

.field private greylist-max-o mStatsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTimerCounts:[I

.field private greylist-max-o mTimerKeys:[I

.field private greylist-max-o mTimerTimes:[J

.field private greylist-max-o mTimersKeys:[I

.field private greylist-max-o mTimersValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    .line 140
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    .line 141
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    .line 142
    const/4 v1, 0x0

    move v2, v1

    :goto_1b
    if-ge v2, v0, :cond_38

    .line 143
    iget-object v3, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 144
    iget-object v3, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 145
    iget-object v3, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 149
    :cond_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    .line 151
    new-array v2, v0, [J

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    .line 152
    move v2, v1

    :goto_45
    if-ge v2, v0, :cond_5a

    .line 153
    iget-object v3, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 154
    iget-object v3, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 158
    :cond_5a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    .line 160
    new-array v2, v0, [Landroid/util/ArrayMap;

    iput-object v2, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    .line 161
    move v2, v1

    :goto_67
    if-ge v2, v0, :cond_7c

    .line 162
    iget-object v3, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 163
    iget-object v3, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/health/HealthStats;->createHealthStatsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v4

    aput-object v4, v3, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 167
    :cond_7c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    .line 169
    new-array v2, v0, [Landroid/util/ArrayMap;

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    .line 170
    move v2, v1

    :goto_89
    if-ge v2, v0, :cond_a0

    .line 171
    iget-object v3, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 172
    iget-object v3, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    sget-object v4, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4}, Landroid/os/health/HealthStats;->createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v4

    aput-object v4, v3, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 176
    :cond_a0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    .line 178
    new-array v2, v0, [Landroid/util/ArrayMap;

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    .line 179
    nop

    :goto_ad
    if-ge v1, v0, :cond_c2

    .line 180
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 181
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/health/HealthStats;->createLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 183
    :cond_c2
    return-void
.end method

.method private static greylist-max-o createHealthStatsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 454
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 455
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1b

    .line 456
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/health/HealthStats;

    invoke-direct {v4, p0}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 458
    :cond_1b
    return-object v1
.end method

.method private static greylist-max-o createLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 479
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 480
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 481
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1e

    .line 482
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 484
    :cond_1e
    return-object v1
.end method

.method private static greylist-max-o createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 468
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 469
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1c

    .line 470
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 472
    :cond_1c
    return-object v1
.end method

.method private static greylist-max-o getIndex([II)I
    .registers 2

    .line 446
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public whitelist getDataType()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMeasurement(I)J
    .registers 5

    .line 287
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 288
    if-ltz v0, :cond_d

    .line 292
    iget-object p1, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    aget-wide v0, p1, v0

    return-wide v0

    .line 289
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad measurement key dataType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMeasurementKeyAt(I)I
    .registers 3

    .line 312
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public whitelist getMeasurementKeyCount()I
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist getMeasurements(I)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 414
    if-ltz v0, :cond_d

    .line 418
    iget-object p1, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object p1, p1, v0

    return-object p1

    .line 415
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad measurements key dataType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMeasurementsKeyAt(I)I
    .registers 3

    .line 439
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public whitelist getMeasurementsKeyCount()I
    .registers 2

    .line 428
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist getStats(I)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 330
    if-ltz v0, :cond_d

    .line 334
    iget-object p1, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object p1, p1, v0

    return-object p1

    .line 331
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stats key dataType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getStatsKeyAt(I)I
    .registers 3

    .line 354
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public whitelist getStatsKeyCount()I
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist getTimer(I)Landroid/os/health/TimerStat;
    .registers 6

    .line 215
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 216
    if-ltz v0, :cond_16

    .line 220
    new-instance p1, Landroid/os/health/TimerStat;

    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    aget-wide v2, v2, v0

    invoke-direct {p1, v1, v2, v3}, Landroid/os/health/TimerStat;-><init>(IJ)V

    return-object p1

    .line 217
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad timer key dataType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTimerCount(I)I
    .registers 5

    .line 230
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 231
    if-ltz v0, :cond_d

    .line 235
    iget-object p1, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    aget p1, p1, v0

    return p1

    .line 232
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad timer key dataType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTimerKeyAt(I)I
    .registers 3

    .line 270
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public whitelist getTimerKeyCount()I
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist getTimerTime(I)J
    .registers 5

    .line 245
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 246
    if-ltz v0, :cond_d

    .line 250
    iget-object p1, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    aget-wide v0, p1, v0

    return-wide v0

    .line 247
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad timer key dataType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTimers(I)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 372
    if-ltz v0, :cond_d

    .line 376
    iget-object p1, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object p1, p1, v0

    return-object p1

    .line 373
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad timers key dataType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTimersKeyAt(I)I
    .registers 3

    .line 396
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public whitelist getTimersKeyCount()I
    .registers 2

    .line 386
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist hasMeasurement(I)Z
    .registers 3

    .line 277
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public whitelist hasMeasurements(I)Z
    .registers 3

    .line 403
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public whitelist hasStats(I)Z
    .registers 3

    .line 319
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public whitelist hasTimer(I)Z
    .registers 3

    .line 202
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public whitelist hasTimers(I)Z
    .registers 3

    .line 361
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
