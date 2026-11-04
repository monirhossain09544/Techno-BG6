.class public Lcom/android/internal/os/BatteryStatsHistory$EventLogger;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventLogger"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist writeCommitSysConfigFile(J)V
    .registers 5

    .line 432
    nop

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 432
    const-string p1, "batterystats"

    invoke-static {p1, v0, v1}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V

    .line 434
    return-void
.end method
