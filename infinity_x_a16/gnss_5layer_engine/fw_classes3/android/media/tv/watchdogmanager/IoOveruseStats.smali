.class public final Landroid/media/tv/watchdogmanager/IoOveruseStats;
.super Ljava/lang/Object;
.source "IoOveruseStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/watchdogmanager/IoOveruseStats$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/watchdogmanager/IoOveruseStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDurationInSeconds:J

.field private blacklist mKillableOnOveruse:Z

.field private blacklist mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

.field private blacklist mStartTime:J

.field private blacklist mTotalBytesWritten:J

.field private blacklist mTotalOveruses:J

.field private blacklist mTotalTimesKilled:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Landroid/media/tv/watchdogmanager/IoOveruseStats$1;

    invoke-direct {v0}, Landroid/media/tv/watchdogmanager/IoOveruseStats$1;-><init>()V

    sput-object v0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(JJJJJZLandroid/media/tv/watchdogmanager/PerStateBytes;)V
    .registers 21

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalOveruses:J

    .line 47
    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalTimesKilled:J

    .line 50
    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalBytesWritten:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mKillableOnOveruse:Z

    .line 67
    new-instance v1, Landroid/media/tv/watchdogmanager/PerStateBytes;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/media/tv/watchdogmanager/PerStateBytes;-><init>(JJJ)V

    iput-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 77
    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mStartTime:J

    .line 78
    iput-wide p3, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mDurationInSeconds:J

    .line 79
    iput-wide p5, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalOveruses:J

    .line 80
    move-wide p1, p7

    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalTimesKilled:J

    .line 81
    move-wide/from16 p1, p9

    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalBytesWritten:J

    .line 82
    move/from16 p1, p11

    iput-boolean p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mKillableOnOveruse:Z

    .line 83
    move-object/from16 p1, p12

    iput-object p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 84
    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    iget-object p3, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 14

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalOveruses:J

    .line 47
    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalTimesKilled:J

    .line 50
    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalBytesWritten:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mKillableOnOveruse:Z

    .line 67
    new-instance v1, Landroid/media/tv/watchdogmanager/PerStateBytes;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/media/tv/watchdogmanager/PerStateBytes;-><init>(JJJ)V

    iput-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 188
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    .line 189
    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 194
    sget-object v11, Landroid/media/tv/watchdogmanager/PerStateBytes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 195
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 197
    iput-wide v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mStartTime:J

    .line 198
    iput-wide v3, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mDurationInSeconds:J

    .line 199
    iput-wide v5, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalOveruses:J

    .line 200
    iput-wide v7, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalTimesKilled:J

    .line 201
    iput-wide v9, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalBytesWritten:J

    .line 202
    iput-boolean v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mKillableOnOveruse:Z

    .line 203
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 204
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 205
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDurationInSeconds()J
    .registers 3

    .line 95
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mDurationInSeconds:J

    return-wide v0
.end method

.method public blacklist getRemainingWriteBytes()Landroid/media/tv/watchdogmanager/PerStateBytes;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    return-object v0
.end method

.method public blacklist getStartTime()J
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mStartTime:J

    return-wide v0
.end method

.method public blacklist getTotalBytesWritten()J
    .registers 3

    .line 113
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalBytesWritten:J

    return-wide v0
.end method

.method public blacklist getTotalOveruses()J
    .registers 3

    .line 103
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalOveruses:J

    return-wide v0
.end method

.method public blacklist getTotalTimesKilled()J
    .registers 3

    .line 108
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalTimesKilled:J

    return-wide v0
.end method

.method public blacklist isKillableOnOveruse()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mKillableOnOveruse:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IoOveruseStats { startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationInSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mDurationInSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalOveruses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalOveruses:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalTimesKilled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalTimesKilled:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalBytesWritten = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalBytesWritten:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", killableOnOveruse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mKillableOnOveruse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remainingWriteBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 165
    nop

    .line 166
    iget-boolean v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mKillableOnOveruse:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x20

    int-to-byte v0, v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 167
    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mDurationInSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalOveruses:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalTimesKilled:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mTotalBytesWritten:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseStats;->mRemainingWriteBytes:Landroid/media/tv/watchdogmanager/PerStateBytes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 174
    return-void
.end method
