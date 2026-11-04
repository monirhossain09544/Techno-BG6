.class public final Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;
.super Ljava/lang/Object;
.source "IoOveruseAlertThreshold.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDurationInSeconds:J

.field private blacklist mWrittenBytesPerSecond:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold$1;

    invoke-direct {v0}, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold$1;-><init>()V

    sput-object v0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->mDurationInSeconds:J

    .line 60
    iput-wide p3, p0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->mWrittenBytesPerSecond:J

    .line 61
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 109
    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->mDurationInSeconds:J

    .line 110
    iput-wide v2, p0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->mWrittenBytesPerSecond:J

    .line 111
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDurationInSeconds()J
    .registers 3

    .line 69
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->mDurationInSeconds:J

    return-wide v0
.end method

.method public blacklist getWrittenBytesPerSecond()J
    .registers 3

    .line 78
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->mWrittenBytesPerSecond:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IoOveruseAlertThreshold { durationInSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->mDurationInSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", writtenBytesPerSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->mWrittenBytesPerSecond:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    .line 94
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->mDurationInSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;->mWrittenBytesPerSecond:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    return-void
.end method
