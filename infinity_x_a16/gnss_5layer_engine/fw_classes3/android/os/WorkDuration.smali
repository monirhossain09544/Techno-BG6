.class public final Landroid/os/WorkDuration;
.super Ljava/lang/Object;
.source "WorkDuration.java"


# instance fields
.field blacklist mActualCpuDurationNanos:J

.field blacklist mActualGpuDurationNanos:J

.field blacklist mActualTotalDurationNanos:J

.field blacklist mWorkPeriodStartTimestampNanos:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    .line 33
    iput-wide v0, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    .line 34
    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    .line 35
    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(JJJJ)V
    .registers 11

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    .line 33
    iput-wide v0, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    .line 34
    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    .line 35
    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    .line 48
    iput-wide p3, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    .line 49
    iput-wide p1, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    .line 50
    iput-wide p5, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    .line 51
    iput-wide p7, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 144
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 145
    return v0

    .line 147
    :cond_4
    instance-of v1, p1, Landroid/os/WorkDuration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 148
    return v2

    .line 150
    :cond_a
    check-cast p1, Landroid/os/WorkDuration;

    .line 151
    iget-wide v3, p1, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    iget-wide v5, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2d

    iget-wide v3, p1, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    iget-wide v5, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2d

    iget-wide v3, p1, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    iget-wide v5, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2d

    iget-wide v3, p1, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    iget-wide v5, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    return v0
.end method

.method public whitelist getActualCpuDurationNanos()J
    .registers 3

    .line 130
    iget-wide v0, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    return-wide v0
.end method

.method public whitelist getActualGpuDurationNanos()J
    .registers 3

    .line 139
    iget-wide v0, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    return-wide v0
.end method

.method public whitelist getActualTotalDurationNanos()J
    .registers 3

    .line 112
    iget-wide v0, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    return-wide v0
.end method

.method public whitelist getWorkPeriodStartTimestampNanos()J
    .registers 3

    .line 121
    iget-wide v0, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 159
    iget-wide v0, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 159
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setActualCpuDurationNanos(J)V
    .registers 5

    .line 86
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 90
    iput-wide p1, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    .line 91
    return-void

    .line 87
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "the actual CPU duration should be greater than or equal to zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setActualGpuDurationNanos(J)V
    .registers 5

    .line 99
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 103
    iput-wide p1, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    .line 104
    return-void

    .line 100
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "the actual GPU duration should be greater than or equal to zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setActualTotalDurationNanos(J)V
    .registers 5

    .line 60
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 64
    iput-wide p1, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    .line 65
    return-void

    .line 61
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "the actual total duration should be greater than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setWorkPeriodStartTimestampNanos(J)V
    .registers 5

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 77
    iput-wide p1, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    .line 78
    return-void

    .line 74
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "the work period start timestamp should be greater than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
