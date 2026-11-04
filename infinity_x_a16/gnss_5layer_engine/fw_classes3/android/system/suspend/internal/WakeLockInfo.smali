.class public Landroid/system/suspend/internal/WakeLockInfo;
.super Ljava/lang/Object;
.source "WakeLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/suspend/internal/WakeLockInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist activeCount:J

.field public blacklist activeTime:J

.field public blacklist eventCount:J

.field public blacklist expireCount:J

.field public blacklist isActive:Z

.field public blacklist isKernelWakelock:Z

.field public blacklist lastChange:J

.field public blacklist maxTime:J

.field public blacklist name:Ljava/lang/String;

.field public blacklist pid:I

.field public blacklist preventSuspendTime:J

.field public blacklist totalTime:J

.field public blacklist wakeupCount:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/system/suspend/internal/WakeLockInfo$1;

    invoke-direct {v0}, Landroid/system/suspend/internal/WakeLockInfo$1;-><init>()V

    sput-object v0, Landroid/system/suspend/internal/WakeLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    .line 42
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    .line 43
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->maxTime:J

    .line 44
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    .line 46
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    .line 47
    iput-boolean v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    .line 49
    iput v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->pid:I

    .line 51
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->eventCount:J

    .line 52
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->expireCount:J

    .line 53
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->preventSuspendTime:J

    .line 54
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->wakeupCount:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    nop

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 11

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_18b

    .line 95
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void

    .line 123
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void

    .line 123
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    return-void

    .line 123
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    return-void

    .line 123
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->maxTime:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void

    .line 123
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    return-void

    .line 123
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_b6

    move v2, v5

    goto :goto_b7

    :cond_b6
    move v2, v6

    :goto_b7
    iput-boolean v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bd
    .catchall {:try_start_ac .. :try_end_bd} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    return-void

    .line 123
    :cond_c8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e9

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e3

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    return-void

    .line 123
    :cond_e3
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_e9
    :try_start_e9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f0

    goto :goto_f1

    :cond_f0
    move v5, v6

    :goto_f1
    iput-boolean v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f7
    .catchall {:try_start_e9 .. :try_end_f7} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_108

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_102

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    return-void

    .line 123
    :cond_102
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_108
    :try_start_108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->pid:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_112
    .catchall {:try_start_108 .. :try_end_112} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_123

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11d

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    return-void

    .line 123
    :cond_11d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_123
    :try_start_123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->eventCount:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12d
    .catchall {:try_start_123 .. :try_end_12d} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    return-void

    .line 123
    :cond_138
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->expireCount:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_159

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_153

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 117
    return-void

    .line 123
    :cond_153
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_159
    :try_start_159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->preventSuspendTime:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_163
    .catchall {:try_start_159 .. :try_end_163} :catchall_189

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_174

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16e

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 119
    return-void

    .line 123
    :cond_16e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_174
    :try_start_174
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->wakeupCount:J
    :try_end_17a
    .catchall {:try_start_174 .. :try_end_17a} :catchall_189

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_183

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    nop

    .line 127
    return-void

    .line 123
    :cond_183
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :catchall_189
    move-exception v2

    goto :goto_193

    .line 94
    :cond_18b
    :try_start_18b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_193
    .catchall {:try_start_18b .. :try_end_193} :catchall_189

    .line 122
    :goto_193
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_19c

    .line 123
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_19c
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->maxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-boolean v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-boolean v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->eventCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->expireCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->preventSuspendTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->wakeupCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 85
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void
.end method
