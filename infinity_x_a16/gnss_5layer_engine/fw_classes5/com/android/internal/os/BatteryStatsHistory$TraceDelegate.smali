.class public Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceDelegate"
.end annotation


# instance fields
.field private final blacklist mShouldSetProperty:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_11

    .line 396
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->mShouldSetProperty:Z

    .line 395
    return-void
.end method


# virtual methods
.method public blacklist traceCounter(Ljava/lang/String;I)V
    .registers 5

    .line 409
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 410
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->mShouldSetProperty:Z

    if-eqz v0, :cond_3e

    .line 412
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug.tracing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_24} :catch_25

    .line 415
    goto :goto_3e

    .line 413
    :catch_25
    move-exception p2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set debug.tracing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryStatsHistory"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    :cond_3e
    :goto_3e
    return-void
.end method

.method public blacklist traceInstantEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 423
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public blacklist tracingEnabled()Z
    .registers 3

    .line 402
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->mShouldSetProperty:Z

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method
