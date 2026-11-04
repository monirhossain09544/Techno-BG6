.class public Landroid/os/incremental/PerUidReadTimeouts;
.super Ljava/lang/Object;
.source "PerUidReadTimeouts.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/incremental/PerUidReadTimeouts;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist maxPendingTimeUs:J

.field public blacklist minPendingTimeUs:J

.field public blacklist minTimeUs:J

.field public blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/os/incremental/PerUidReadTimeouts$1;

    invoke-direct {v0}, Landroid/os/incremental/PerUidReadTimeouts$1;-><init>()V

    sput-object v0, Landroid/os/incremental/PerUidReadTimeouts;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    .line 28
    iput-wide v0, p0, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    .line 33
    iput-wide v0, p0, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 82
    nop

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_8d

    .line 65
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 75
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 75
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 75
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 75
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_8b

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_85

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    nop

    .line 79
    return-void

    .line 75
    :cond_85
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :catchall_8b
    move-exception v2

    goto :goto_95

    .line 64
    :cond_8d
    :try_start_8d
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_8b

    .line 74
    :goto_95
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_9e

    .line 75
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_9e
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-wide v0, p0, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    iget-wide v0, p0, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-wide v0, p0, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void
.end method
