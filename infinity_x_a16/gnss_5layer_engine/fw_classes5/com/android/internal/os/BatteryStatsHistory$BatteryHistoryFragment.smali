.class public abstract Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BatteryHistoryFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;",
        ">;"
    }
.end annotation


# instance fields
.field public final blacklist monotonicTimeMs:J


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    .line 168
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)I
    .registers 6

    .line 172
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 162
    check-cast p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->compareTo(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 177
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    check-cast p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide v2, p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 182
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method
