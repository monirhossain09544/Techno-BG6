.class public Landroid/net/metrics/IpConnectivityLog;
.super Ljava/lang/Object;
.source "IpConnectivityLog.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/IpConnectivityLog$Event;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mService:Landroid/net/IIpConnectivityMetrics;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-class v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/IIpConnectivityMetrics;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    .line 67
    return-void
.end method

.method private greylist-max-o checkLoggerService()Z
    .registers 3

    .line 70
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 71
    return v1

    .line 73
    :cond_6
    nop

    .line 74
    const-string v0, "connmetrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    .line 75
    if-nez v0, :cond_15

    .line 79
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_15
    iput-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    .line 84
    return v1
.end method

.method private static blacklist makeEv(Landroid/net/metrics/IpConnectivityLog$Event;)Landroid/net/ConnectivityMetricsEvent;
    .registers 2

    .line 222
    new-instance v0, Landroid/net/ConnectivityMetricsEvent;

    invoke-direct {v0}, Landroid/net/ConnectivityMetricsEvent;-><init>()V

    .line 223
    iput-object p0, v0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    .line 224
    return-object v0
.end method


# virtual methods
.method public whitelist log(I[ILandroid/net/metrics/IpConnectivityLog$Event;)Z
    .registers 4

    .line 156
    invoke-static {p3}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/net/metrics/IpConnectivityLog$Event;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object p3

    .line 157
    iput p1, p3, Landroid/net/ConnectivityMetricsEvent;->netId:I

    .line 158
    invoke-static {p2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide p1

    iput-wide p1, p3, Landroid/net/ConnectivityMetricsEvent;->transports:J

    .line 159
    invoke-virtual {p0, p3}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist log(JLandroid/net/metrics/IpConnectivityLog$Event;)Z
    .registers 4

    .line 118
    invoke-static {p3}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/net/metrics/IpConnectivityLog$Event;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object p3

    .line 119
    iput-wide p1, p3, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    .line 120
    invoke-virtual {p0, p3}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o log(Landroid/net/ConnectivityMetricsEvent;)Z
    .registers 8

    .line 95
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 96
    return v1

    .line 98
    :cond_8
    iget-wide v2, p1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_16

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    .line 102
    :cond_16
    :try_start_16
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v0, p1}, Landroid/net/IIpConnectivityMetrics;->logEvent(Landroid/net/ConnectivityMetricsEvent;)I

    move-result p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_20

    .line 103
    if-ltz p1, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    .line 104
    :catch_20
    move-exception p1

    .line 105
    sget-object v0, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    const-string v2, "Error logging event"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return v1
.end method

.method public whitelist log(Landroid/net/Network;[ILandroid/net/metrics/IpConnectivityLog$Event;)Z
    .registers 4

    .line 144
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/net/metrics/IpConnectivityLog$Event;)Z

    move-result p1

    return p1
.end method

.method public whitelist log(Landroid/net/metrics/IpConnectivityLog$Event;)Z
    .registers 2

    .line 168
    invoke-static {p1}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/net/metrics/IpConnectivityLog$Event;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist log(Ljava/lang/String;Landroid/net/metrics/IpConnectivityLog$Event;)Z
    .registers 3

    .line 130
    invoke-static {p2}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/net/metrics/IpConnectivityLog$Event;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object p2

    .line 131
    iput-object p1, p2, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    .line 132
    invoke-virtual {p0, p2}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result p1

    return p1
.end method

.method public blacklist logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)Z
    .registers 20

    .line 209
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 210
    const/4 p1, 0x0

    return p1

    .line 213
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/net/IIpConnectivityMetrics;->logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1b

    .line 217
    goto :goto_1c

    .line 215
    :catch_1b
    move-exception v0

    .line 218
    :goto_1c
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist logDefaultNetworkValidity(Z)Z
    .registers 3

    .line 179
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 180
    const/4 p1, 0x0

    return p1

    .line 183
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v0, p1}, Landroid/net/IIpConnectivityMetrics;->logDefaultNetworkValidity(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 186
    goto :goto_f

    .line 184
    :catch_e
    move-exception p1

    .line 187
    :goto_f
    const/4 p1, 0x1

    return p1
.end method
