.class public Landroid/net/metrics/NetworkMetrics;
.super Ljava/lang/Object;
.source "NetworkMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/NetworkMetrics$Summary;,
        Landroid/net/metrics/NetworkMetrics$Metrics;
    }
.end annotation


# static fields
.field private static final greylist-max-o CONNECT_LATENCY_MAXIMUM_RECORDS:I = 0x4e20

.field private static final greylist-max-o INITIAL_DNS_BATCH_SIZE:I = 0x64


# instance fields
.field public final greylist-max-o connectMetrics:Landroid/net/metrics/ConnectStats;

.field public final greylist-max-o dnsMetrics:Landroid/net/metrics/DnsEvent;

.field public final greylist-max-o netId:I

.field public greylist-max-o pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

.field public final greylist-max-o summary:Landroid/net/metrics/NetworkMetrics$Summary;

.field public final greylist-max-o transports:J


# direct methods
.method public constructor greylist-max-o <init>(IJLcom/android/internal/util/TokenBucket;)V
    .registers 11

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/net/metrics/NetworkMetrics;->netId:I

    .line 55
    iput-wide p2, p0, Landroid/net/metrics/NetworkMetrics;->transports:J

    .line 56
    new-instance v0, Landroid/net/metrics/ConnectStats;

    const/16 v5, 0x4e20

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/ConnectStats;-><init>(IJLcom/android/internal/util/TokenBucket;I)V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 58
    new-instance p1, Landroid/net/metrics/DnsEvent;

    const/16 p2, 0x64

    invoke-direct {p1, v1, v2, v3, p2}, Landroid/net/metrics/DnsEvent;-><init>(IJI)V

    iput-object p1, p0, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 59
    new-instance p1, Landroid/net/metrics/NetworkMetrics$Summary;

    invoke-direct {p1, v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Summary;-><init>(IJ)V

    iput-object p1, p0, Landroid/net/metrics/NetworkMetrics;->summary:Landroid/net/metrics/NetworkMetrics$Summary;

    .line 60
    return-void
.end method


# virtual methods
.method public greylist-max-o addConnectResult(IILjava/lang/String;)V
    .registers 8

    .line 87
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    if-nez v0, :cond_f

    .line 88
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Summary;

    iget v1, p0, Landroid/net/metrics/NetworkMetrics;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/NetworkMetrics;->transports:J

    invoke-direct {v0, v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Summary;-><init>(IJ)V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    .line 90
    :cond_f
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/metrics/ConnectStats;->addEvent(IILjava/lang/String;)Z

    move-result p3

    .line 91
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object v0, v0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    if-eqz p3, :cond_1e

    const-wide/16 v1, 0x0

    goto :goto_20

    :cond_1e
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_20
    invoke-virtual {v0, v1, v2}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    .line 92
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 93
    iget-object p1, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object p1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    int-to-double p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    .line 95
    :cond_31
    return-void
.end method

.method public greylist-max-o addDnsResult(III)V
    .registers 8

    .line 77
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    if-nez v0, :cond_f

    .line 78
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Summary;

    iget v1, p0, Landroid/net/metrics/NetworkMetrics;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/NetworkMetrics;->transports:J

    invoke-direct {v0, v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Summary;-><init>(IJ)V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    .line 80
    :cond_f
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    int-to-byte p1, p1

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/metrics/DnsEvent;->addResult(BBI)Z

    move-result p1

    .line 81
    iget-object p2, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object p2, p2, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    int-to-double v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    .line 82
    iget-object p2, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object p2, p2, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    if-eqz p1, :cond_28

    const-wide/16 v0, 0x0

    goto :goto_2a

    :cond_28
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_2a
    invoke-virtual {p2, v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    .line 83
    return-void
.end method

.method public greylist-max-o addTcpStatsResult(IIII)V
    .registers 9

    .line 99
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    if-nez v0, :cond_f

    .line 100
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Summary;

    iget v1, p0, Landroid/net/metrics/NetworkMetrics;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/NetworkMetrics;->transports:J

    invoke-direct {v0, v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Summary;-><init>(IJ)V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    .line 102
    :cond_f
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object v0, v0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    int-to-double v1, p2

    invoke-virtual {v0, v1, v2, p1}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(DI)V

    .line 103
    iget-object p1, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object p1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

    int-to-double p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    .line 104
    iget-object p1, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object p1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

    int-to-double p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    .line 105
    return-void
.end method

.method public greylist-max-o getPendingStats()Landroid/net/metrics/NetworkMetrics$Summary;
    .registers 3

    .line 67
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    .line 69
    if-eqz v0, :cond_c

    .line 70
    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics;->summary:Landroid/net/metrics/NetworkMetrics$Summary;

    invoke-virtual {v1, v0}, Landroid/net/metrics/NetworkMetrics$Summary;->merge(Landroid/net/metrics/NetworkMetrics$Summary;)V

    .line 72
    :cond_c
    return-object v0
.end method
