.class public final Landroid/os/OomKillRecord;
.super Ljava/lang/Object;
.source "OomKillRecord.java"


# instance fields
.field private blacklist mAnonRssInKb:J

.field private blacklist mFileRssInKb:J

.field private blacklist mOomScoreAdj:S

.field private blacklist mPgTablesInKb:J

.field private blacklist mPid:I

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mShmemRssInKb:J

.field private blacklist mTimeStampInMillis:J

.field private blacklist mTotalVmInKb:J

.field private blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(JIILjava/lang/String;SJJJJJ)V
    .registers 17

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Landroid/os/OomKillRecord;->mTimeStampInMillis:J

    .line 51
    iput p3, p0, Landroid/os/OomKillRecord;->mPid:I

    .line 52
    iput p4, p0, Landroid/os/OomKillRecord;->mUid:I

    .line 53
    iput-object p5, p0, Landroid/os/OomKillRecord;->mProcessName:Ljava/lang/String;

    .line 54
    iput-short p6, p0, Landroid/os/OomKillRecord;->mOomScoreAdj:S

    .line 55
    iput-wide p7, p0, Landroid/os/OomKillRecord;->mTotalVmInKb:J

    .line 56
    iput-wide p9, p0, Landroid/os/OomKillRecord;->mAnonRssInKb:J

    .line 57
    iput-wide p11, p0, Landroid/os/OomKillRecord;->mFileRssInKb:J

    .line 58
    iput-wide p13, p0, Landroid/os/OomKillRecord;->mShmemRssInKb:J

    .line 59
    move-wide p1, p15

    iput-wide p1, p0, Landroid/os/OomKillRecord;->mPgTablesInKb:J

    .line 60
    return-void
.end method


# virtual methods
.method public blacklist getOomScoreAdj()S
    .registers 2

    .line 92
    iget-short v0, p0, Landroid/os/OomKillRecord;->mOomScoreAdj:S

    return v0
.end method

.method public blacklist getPid()I
    .registers 2

    .line 80
    iget v0, p0, Landroid/os/OomKillRecord;->mPid:I

    return v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/os/OomKillRecord;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTimestampMilli()J
    .registers 3

    .line 76
    iget-wide v0, p0, Landroid/os/OomKillRecord;->mTimeStampInMillis:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/os/OomKillRecord;->mUid:I

    return v0
.end method

.method public blacklist logKillOccurred()V
    .registers 20

    .line 68
    move-object/from16 v0, p0

    iget v1, v0, Landroid/os/OomKillRecord;->mUid:I

    iget v2, v0, Landroid/os/OomKillRecord;->mPid:I

    iget-short v3, v0, Landroid/os/OomKillRecord;->mOomScoreAdj:S

    iget-wide v4, v0, Landroid/os/OomKillRecord;->mTimeStampInMillis:J

    iget-object v6, v0, Landroid/os/OomKillRecord;->mProcessName:Ljava/lang/String;

    iget-wide v7, v0, Landroid/os/OomKillRecord;->mTotalVmInKb:J

    iget-wide v9, v0, Landroid/os/OomKillRecord;->mAnonRssInKb:J

    iget-wide v11, v0, Landroid/os/OomKillRecord;->mFileRssInKb:J

    iget-wide v13, v0, Landroid/os/OomKillRecord;->mShmemRssInKb:J

    move v15, v1

    iget-wide v0, v0, Landroid/os/OomKillRecord;->mPgTablesInKb:J

    move-wide/from16 v17, v0

    move v1, v15

    move-wide/from16 v15, v17

    const/16 v0, 0x2f2

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJLjava/lang/String;JJJJJ)V

    .line 73
    return-void
.end method
