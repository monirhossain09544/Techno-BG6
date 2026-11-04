.class public final Landroid/media/tv/watchdogmanager/PerStateBytes;
.super Ljava/lang/Object;
.source "PerStateBytes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBackgroundModeBytes:J

.field private blacklist mForegroundModeBytes:J

.field private blacklist mGarageModeBytes:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/media/tv/watchdogmanager/PerStateBytes$1;

    invoke-direct {v0}, Landroid/media/tv/watchdogmanager/PerStateBytes$1;-><init>()V

    sput-object v0, Landroid/media/tv/watchdogmanager/PerStateBytes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJ)V
    .registers 7

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mForegroundModeBytes:J

    .line 48
    iput-wide p3, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mBackgroundModeBytes:J

    .line 49
    iput-wide p5, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mGarageModeBytes:J

    .line 50
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 100
    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mForegroundModeBytes:J

    .line 101
    iput-wide v2, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mBackgroundModeBytes:J

    .line 102
    iput-wide v4, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mGarageModeBytes:J

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBackgroundModeBytes()J
    .registers 3

    .line 59
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mBackgroundModeBytes:J

    return-wide v0
.end method

.method public blacklist getForegroundModeBytes()J
    .registers 3

    .line 54
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mForegroundModeBytes:J

    return-wide v0
.end method

.method public blacklist getGarageModeBytes()J
    .registers 3

    .line 64
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mGarageModeBytes:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerStateBytes { foregroundModeBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mForegroundModeBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundModeBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mBackgroundModeBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", garageModeBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mGarageModeBytes:J

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

    .line 83
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mForegroundModeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mBackgroundModeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/PerStateBytes;->mGarageModeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    return-void
.end method
