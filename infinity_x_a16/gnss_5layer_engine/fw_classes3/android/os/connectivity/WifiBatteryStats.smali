.class public final Landroid/os/connectivity/WifiBatteryStats;
.super Ljava/lang/Object;
.source "WifiBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/WifiBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppScanRequestCount:J

.field private final blacklist mEnergyConsumedMaMillis:J

.field private final blacklist mIdleTimeMillis:J

.field private final blacklist mKernelActiveTimeMillis:J

.field private final blacklist mLoggingDurationMillis:J

.field private final blacklist mMonitoredRailChargeConsumedMaMillis:J

.field private final blacklist mNumBytesRx:J

.field private final blacklist mNumBytesTx:J

.field private final blacklist mNumPacketsRx:J

.field private final blacklist mNumPacketsTx:J

.field private final blacklist mRxTimeMillis:J

.field private final blacklist mScanTimeMillis:J

.field private final blacklist mSleepTimeMillis:J

.field private final blacklist mTimeInRxSignalStrengthLevelMillis:[J

.field private final blacklist mTimeInStateMillis:[J

.field private final blacklist mTimeInSupplicantStateMillis:[J

.field private final blacklist mTxTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/os/connectivity/WifiBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/WifiBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/WifiBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJJJJJJJ[J[J[JJ)V
    .registers 35

    .line 168
    move-object/from16 v0, p27

    move-object/from16 v1, p28

    move-object/from16 v2, p29

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    .line 170
    iput-wide p3, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    .line 171
    iput-wide p5, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    .line 172
    iput-wide p7, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    .line 173
    iput-wide p9, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    .line 174
    iput-wide p11, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    .line 175
    move-wide/from16 p1, p13

    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    .line 176
    move-wide/from16 p1, p15

    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    .line 177
    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    .line 178
    move-wide/from16 p1, p19

    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    .line 179
    move-wide/from16 p1, p21

    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    .line 180
    move-wide/from16 p1, p23

    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    .line 181
    move-wide/from16 p1, p25

    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    .line 182
    array-length p1, v0

    .line 184
    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 182
    const/4 p2, 0x0

    invoke-static {v0, p2, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    .line 185
    array-length p1, v1

    .line 187
    const/4 p3, 0x5

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 185
    invoke-static {v1, p2, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    .line 188
    array-length p1, v2

    .line 190
    const/16 p3, 0xd

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 188
    invoke-static {v2, p2, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    .line 191
    move-wide/from16 p1, p30

    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    .line 192
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 120
    instance-of v0, p1, Landroid/os/connectivity/WifiBatteryStats;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 121
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 122
    :cond_a
    check-cast p1, Landroid/os/connectivity/WifiBatteryStats;

    .line 123
    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9c

    iget-object v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    iget-object v3, p1, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    .line 136
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-object v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    iget-object v3, p1, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    .line 137
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-object v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    iget-object v3, p1, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    .line 139
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-wide v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    iget-wide v4, p1, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_9c

    move v1, v0

    goto :goto_9d

    :cond_9c
    nop

    .line 123
    :goto_9d
    return v1
.end method

.method public whitelist getAppScanRequestCount()J
    .registers 3

    .line 319
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    return-wide v0
.end method

.method public whitelist getEnergyConsumedMaMillis()J
    .registers 3

    .line 310
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    return-wide v0
.end method

.method public whitelist getIdleTimeMillis()J
    .registers 3

    .line 280
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    return-wide v0
.end method

.method public whitelist getKernelActiveTimeMillis()J
    .registers 3

    .line 210
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    return-wide v0
.end method

.method public whitelist getLoggingDurationMillis()J
    .registers 3

    .line 200
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    return-wide v0
.end method

.method public whitelist getMonitoredRailChargeConsumedMaMillis()J
    .registers 3

    .line 328
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    return-wide v0
.end method

.method public whitelist getNumBytesRx()J
    .registers 3

    .line 250
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    return-wide v0
.end method

.method public whitelist getNumBytesTx()J
    .registers 3

    .line 230
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsRx()J
    .registers 3

    .line 240
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsTx()J
    .registers 3

    .line 220
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    return-wide v0
.end method

.method public whitelist getRxTimeMillis()J
    .registers 3

    .line 290
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    return-wide v0
.end method

.method public whitelist getScanTimeMillis()J
    .registers 3

    .line 270
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getSleepTimeMillis()J
    .registers 3

    .line 260
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTxTimeMillis()J
    .registers 3

    .line 300
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 21

    .line 147
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    .line 148
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    .line 149
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    .line 150
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iget-object v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    .line 151
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    .line 152
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-wide v0, v0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    filled-new-array/range {v3 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    .line 147
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 99
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-object p2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 113
    iget-object p2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 114
    iget-object p2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 115
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    return-void
.end method
