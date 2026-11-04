.class public Landroid/net/metrics/ConnectStats;
.super Ljava/lang/Object;
.source "ConnectStats.java"


# static fields
.field private static final greylist-max-o EALREADY:I

.field private static final greylist-max-o EINPROGRESS:I


# instance fields
.field public greylist-max-o connectBlockingCount:I

.field public greylist-max-o connectCount:I

.field public final greylist-max-o errnos:Landroid/util/SparseIntArray;

.field public greylist-max-o eventCount:I

.field public greylist-max-o ipv6ConnectCount:I

.field public final greylist-max-o latencies:Landroid/util/IntArray;

.field public final greylist-max-o mLatencyTb:Lcom/android/internal/util/TokenBucket;

.field public final greylist-max-o mMaxLatencyRecords:I

.field public final greylist-max-o netId:I

.field public final greylist-max-o transports:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    sget v0, Landroid/system/OsConstants;->EALREADY:I

    sput v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    .line 33
    sget v0, Landroid/system/OsConstants;->EINPROGRESS:I

    sput v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    return-void
.end method

.method public constructor greylist-max-o <init>(IJLcom/android/internal/util/TokenBucket;I)V
    .registers 7

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    .line 42
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    .line 50
    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    .line 52
    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    .line 54
    iput v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    .line 57
    iput p1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    .line 58
    iput-wide p2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    .line 59
    iput-object p4, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    .line 60
    iput p5, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    .line 61
    return-void
.end method

.method private greylist-max-o countConnect(ILjava/lang/String;)V
    .registers 4

    .line 76
    iget v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    .line 77
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result p1

    if-nez p1, :cond_12

    .line 78
    iget p1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    .line 80
    :cond_12
    invoke-static {p2}, Landroid/net/metrics/ConnectStats;->isIPv6(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 81
    iget p1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    .line 83
    :cond_1e
    return-void
.end method

.method private greylist-max-o countError(I)V
    .registers 4

    .line 102
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 103
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    return-void
.end method

.method private greylist-max-o countLatency(II)V
    .registers 4

    .line 86
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 88
    return-void

    .line 90
    :cond_7
    iget-object p1, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    invoke-virtual {p1}, Lcom/android/internal/util/TokenBucket;->get()Z

    move-result p1

    if-nez p1, :cond_10

    .line 92
    return-void

    .line 94
    :cond_10
    iget-object p1, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    iget v0, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    if-lt p1, v0, :cond_1b

    .line 96
    return-void

    .line 98
    :cond_1b
    iget-object p1, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {p1, p2}, Landroid/util/IntArray;->add(I)V

    .line 99
    return-void
.end method

.method private static greylist-max-o isIPv6(Ljava/lang/String;)Z
    .registers 2

    .line 117
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static greylist-max-o isNonBlocking(I)Z
    .registers 2

    .line 113
    sget v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    if-eq p0, v0, :cond_b

    sget v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private static greylist-max-o isSuccess(I)Z
    .registers 1

    .line 107
    if-eqz p0, :cond_b

    invoke-static {p0}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method


# virtual methods
.method greylist-max-o addEvent(IILjava/lang/String;)Z
    .registers 6

    .line 64
    iget v0, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    .line 65
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 66
    invoke-direct {p0, p1, p3}, Landroid/net/metrics/ConnectStats;->countConnect(ILjava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/net/metrics/ConnectStats;->countLatency(II)V

    .line 68
    return v1

    .line 70
    :cond_13
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->countError(I)V

    .line 71
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v1, "netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string v1, ", transports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/metrics/ConnectStats;->transports:J

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    invoke-static {v3}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    iget v1, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d events, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d success, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d blocking, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d IPv6 dst"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    nop

    :goto_7c
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_a8

    .line 131
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->errnoName(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v2, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, ", %s: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 135
    :cond_a8
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
