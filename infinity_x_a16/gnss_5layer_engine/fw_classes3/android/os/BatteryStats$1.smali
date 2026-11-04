.class Landroid/os/BatteryStats$1;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/os/BatteryStats$TimerEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/BatteryStats;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/os/BatteryStats$TimerEntry;Landroid/os/BatteryStats$TimerEntry;)I
    .registers 5

    .line 5745
    iget-wide v0, p1, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    .line 5746
    iget-wide p1, p2, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    .line 5747
    cmp-long p1, v0, p1

    if-gez p1, :cond_a

    .line 5748
    const/4 p1, 0x1

    return p1

    .line 5750
    :cond_a
    if-lez p1, :cond_e

    .line 5751
    const/4 p1, -0x1

    return p1

    .line 5753
    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 5742
    check-cast p1, Landroid/os/BatteryStats$TimerEntry;

    check-cast p2, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryStats$1;->compare(Landroid/os/BatteryStats$TimerEntry;Landroid/os/BatteryStats$TimerEntry;)I

    move-result p1

    return p1
.end method
