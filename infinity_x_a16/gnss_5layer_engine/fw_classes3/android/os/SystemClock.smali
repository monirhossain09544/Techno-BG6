.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SystemClock"

.field private static final blacklist sAnchorNanoTime$ravenwood:J

.field private static volatile blacklist sIAlarmManager:Landroid/app/IAlarmManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Landroid/os/SystemClock;->sAnchorNanoTime$ravenwood:J

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method public static whitelist currentGnssTimeClock()Ljava/time/Clock;
    .registers 2

    .line 378
    new-instance v0, Landroid/os/SystemClock$4;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$4;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist currentNetworkTimeClock()Ljava/time/Clock;
    .registers 2

    .line 363
    new-instance v0, Landroid/os/SystemClock$3;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$3;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static greylist-max-o currentNetworkTimeMillis()J
    .registers 4

    .line 338
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->getInstance()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/android/internal/os/ApplicationSharedMemory;->getLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis()J

    move-result-wide v0

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static native greylist-max-r currentThreadTimeMicro()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist currentThreadTimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native greylist currentTimeMicro()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist currentTimeMicro$ravenwood()J
    .registers 4

    .line 313
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static native whitelist elapsedRealtime()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist elapsedRealtime$ravenwood()J
    .registers 4

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static greylist elapsedRealtimeClock()Ljava/time/Clock;
    .registers 2

    .line 256
    new-instance v0, Landroid/os/SystemClock$2;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$2;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static native whitelist elapsedRealtimeNanos()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist elapsedRealtimeNanos$ravenwood()J
    .registers 4

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v0

    const-wide v2, 0x34630b8a000L

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist getIAlarmManager()Landroid/app/IAlarmManager;
    .registers 1

    .line 184
    sget-object v0, Landroid/os/SystemClock;->sIAlarmManager:Landroid/app/IAlarmManager;

    if-nez v0, :cond_11

    .line 185
    nop

    .line 186
    const-string v0, "alarm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    sput-object v0, Landroid/os/SystemClock;->sIAlarmManager:Landroid/app/IAlarmManager;

    .line 188
    :cond_11
    sget-object v0, Landroid/os/SystemClock;->sIAlarmManager:Landroid/app/IAlarmManager;

    return-object v0
.end method

.method public static whitelist setCurrentTimeMillis(J)Z
    .registers 6

    .line 166
    const-string v0, "Unable to set RTC"

    invoke-static {}, Landroid/os/SystemClock;->getIAlarmManager()Landroid/app/IAlarmManager;

    move-result-object v1

    .line 167
    const/4 v2, 0x0

    const-string v3, "SystemClock"

    if-nez v1, :cond_11

    .line 168
    const-string p0, "Unable to set RTC: mgr == null"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v2

    .line 173
    :cond_11
    :try_start_11
    invoke-interface {v1, p0, p1}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    .line 176
    :catch_16
    move-exception p0

    .line 177
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 174
    :catch_1b
    move-exception p0

    .line 175
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    nop

    .line 180
    :goto_20
    return v2
.end method

.method public static whitelist sleep(J)V
    .registers 9

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 139
    nop

    .line 140
    const/4 v2, 0x0

    move-wide v3, p0

    .line 143
    :cond_7
    :try_start_7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    .line 147
    goto :goto_d

    .line 145
    :catch_b
    move-exception v2

    .line 146
    const/4 v2, 0x1

    .line 148
    :goto_d
    add-long v3, v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 149
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_7

    .line 151
    if-eqz v2, :cond_23

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 157
    :cond_23
    return-void
.end method

.method public static greylist uptimeClock()Ljava/time/Clock;
    .registers 2

    .line 227
    new-instance v0, Landroid/os/SystemClock$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$1;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static native whitelist uptimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist uptimeMillis$ravenwood()J
    .registers 4

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static native whitelist uptimeNanos()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist uptimeNanos$ravenwood()J
    .registers 4

    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Landroid/os/SystemClock;->sAnchorNanoTime$ravenwood:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
