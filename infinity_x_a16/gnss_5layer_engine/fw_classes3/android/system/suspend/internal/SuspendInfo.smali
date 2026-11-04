.class public Landroid/system/suspend/internal/SuspendInfo;
.super Ljava/lang/Object;
.source "SuspendInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/suspend/internal/SuspendInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist backoffContinueCount:J

.field public blacklist failedSuspendCount:J

.field public blacklist failedSuspendOverheadTimeMillis:J

.field public blacklist newBackoffCount:J

.field public blacklist shortSuspendCount:J

.field public blacklist shortSuspendTimeMillis:J

.field public blacklist sleepTimeMillis:J

.field public blacklist suspendAttemptCount:J

.field public blacklist suspendOverheadTimeMillis:J

.field public blacklist suspendTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroid/system/suspend/internal/SuspendInfo$1;

    invoke-direct {v0}, Landroid/system/suspend/internal/SuspendInfo$1;-><init>()V

    sput-object v0, Landroid/system/suspend/internal/SuspendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendAttemptCount:J

    .line 15
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendCount:J

    .line 20
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendCount:J

    .line 22
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendTimeMillis:J

    .line 24
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendTimeMillis:J

    .line 26
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendOverheadTimeMillis:J

    .line 28
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    .line 33
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->newBackoffCount:J

    .line 38
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->backoffContinueCount:J

    .line 40
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->sleepTimeMillis:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 107
    nop

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_12f

    .line 78
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_12d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 100
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendAttemptCount:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_12d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 100
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendCount:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_12d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 100
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendCount:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_12d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 100
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendTimeMillis:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_12d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 100
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendTimeMillis:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_12d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 100
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendOverheadTimeMillis:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_12d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 100
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_12d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 100
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->newBackoffCount:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_12d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fd

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f7

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 100
    :cond_f7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_fd
    :try_start_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->backoffContinueCount:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_107
    .catchall {:try_start_fd .. :try_end_107} :catchall_12d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_118

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_112

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 100
    :cond_112
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_118
    :try_start_118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->sleepTimeMillis:J
    :try_end_11e
    .catchall {:try_start_118 .. :try_end_11e} :catchall_12d

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_127

    .line 102
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    nop

    .line 104
    return-void

    .line 100
    :cond_127
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :catchall_12d
    move-exception v2

    goto :goto_137

    .line 77
    :cond_12f
    :try_start_12f
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_137
    .catchall {:try_start_12f .. :try_end_137} :catchall_12d

    .line 99
    :goto_137
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_140

    .line 100
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_140
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendAttemptCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendOverheadTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->newBackoffCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->backoffContinueCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->sleepTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void
.end method
