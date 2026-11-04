.class public final Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;
.super Ljava/lang/Object;
.source "IoOveruseStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/watchdogmanager/IoOveruseStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mDurationInSeconds:J

.field private blacklist mKillableOnOveruse:Z

.field private blacklist mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

.field private blacklist mStartTime:J

.field private blacklist mTotalBytesWritten:J

.field private blacklist mTotalOveruses:J

.field private blacklist mTotalTimesKilled:J


# direct methods
.method public constructor blacklist <init>(JJ)V
    .registers 7

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 245
    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mStartTime:J

    .line 246
    iput-wide p3, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mDurationInSeconds:J

    .line 247
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 352
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 356
    return-void

    .line 353
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/media/tv/watchdogmanager/IoOveruseStats;
    .registers 16

    .line 321
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->checkNotUsed()V

    .line 322
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 324
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 325
    iput-wide v2, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mTotalOveruses:J

    .line 327
    :cond_17
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 328
    iput-wide v2, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mTotalTimesKilled:J

    .line 330
    :cond_22
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    .line 331
    iput-wide v2, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mTotalBytesWritten:J

    .line 333
    :cond_2d
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mKillableOnOveruse:Z

    .line 336
    :cond_39
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4f

    .line 337
    new-instance v1, Landroid/media/tv/watchdogmanager/PerStateBytes;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/media/tv/watchdogmanager/PerStateBytes;-><init>(JJJ)V

    iput-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 339
    :cond_4f
    new-instance v2, Landroid/media/tv/watchdogmanager/IoOveruseStats;

    iget-wide v3, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mStartTime:J

    iget-wide v5, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mDurationInSeconds:J

    iget-wide v7, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mTotalOveruses:J

    iget-wide v9, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mTotalTimesKilled:J

    iget-wide v11, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mTotalBytesWritten:J

    iget-boolean v13, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mKillableOnOveruse:Z

    iget-object v14, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    invoke-direct/range {v2 .. v14}, Landroid/media/tv/watchdogmanager/IoOveruseStats;-><init>(JJJJJZLandroid/media/tv/watchdogmanager/PerStateBytes;)V

    .line 348
    return-object v2
.end method

.method public blacklist setDurationInSeconds(J)Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;
    .registers 7

    .line 259
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->checkNotUsed()V

    .line 260
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 261
    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mDurationInSeconds:J

    .line 262
    return-object p0
.end method

.method public blacklist setKillableOnOveruse(Z)Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;
    .registers 6

    .line 298
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->checkNotUsed()V

    .line 299
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 300
    iput-boolean p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mKillableOnOveruse:Z

    .line 301
    return-object p0
.end method

.method public blacklist setRemainingWriteBytes(Landroid/media/tv/watchdogmanager/PerStateBytes;)Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;
    .registers 6

    .line 313
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->checkNotUsed()V

    .line 314
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 315
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 316
    return-object p0
.end method

.method public blacklist setStartTime(J)Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;
    .registers 7

    .line 251
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->checkNotUsed()V

    .line 252
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 253
    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mStartTime:J

    .line 254
    return-object p0
.end method

.method public blacklist setTotalBytesWritten(J)Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;
    .registers 7

    .line 286
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->checkNotUsed()V

    .line 287
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 288
    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mTotalBytesWritten:J

    .line 289
    return-object p0
.end method

.method public blacklist setTotalOveruses(J)Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;
    .registers 7

    .line 270
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->checkNotUsed()V

    .line 271
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 272
    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mTotalOveruses:J

    .line 273
    return-object p0
.end method

.method public blacklist setTotalTimesKilled(J)Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;
    .registers 7

    .line 278
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->checkNotUsed()V

    .line 279
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 280
    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;->mTotalTimesKilled:J

    .line 281
    return-object p0
.end method
